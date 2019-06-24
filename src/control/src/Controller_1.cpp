/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/
#include "Controller_1.h"


namespace control
{

Controller_1::Controller_1(ros::NodeHandle &node, ros::NodeHandle &priv_nh)
{
	
	priv_nh.getParam("wheel_base", wheel_base_);
	//Configuration
	priv_nh.getParam("Control_PERIOD", Control_PERIOD_);//20ms
	priv_nh.getParam("Compute_PERIOD", Compute_PERIOD_);//20ms

	is_waypoint_set_ = false;


	//Longitudinal parameter
	double speed_kp, speed_ki, speed_kd;
	double accel_max, accel_min, com_lateral_max, com_lateral_min, com_dir_max, com_dir_min;
	priv_nh.getParam("speed_kp", speed_kp);
	priv_nh.getParam("speed_ki", speed_ki);
	priv_nh.getParam("accel_max", accel_max);
	priv_nh.getParam("accel_min", accel_min);

	speed_pid_.setGains(speed_kp, speed_ki, 0.0);
	speed_pid_.setRange(accel_max, accel_min);


	//Lateral control parameter
	//lateral error compensation
	priv_nh.getParam("com_lateral_w", com_lateral_w_);
	double com_lateral_kp, com_lateral_ki, com_lateral_kd;
	priv_nh.getParam("com_lateral_kp", com_lateral_kp);
	priv_nh.getParam("com_lateral_ki", com_lateral_ki);
	priv_nh.getParam("com_lateral_max", com_lateral_max);
	priv_nh.getParam("com_lateral_min", com_lateral_min);
	com_lateral_pid_.setGains(com_lateral_kp, com_lateral_ki, 0.0);
	com_lateral_pid_.setRange(com_lateral_max, com_lateral_min);

	//direction compensation
	priv_nh.getParam("com_dir_w", com_dir_w_);
	double com_dir_kp, com_dir_ki, com_dir_kd;
	priv_nh.getParam("com_dir_kp", com_dir_kp);
	priv_nh.getParam("com_dir_ki", com_dir_ki);
	priv_nh.getParam("com_dir_max", com_dir_max);
	priv_nh.getParam("com_dir_min", com_dir_min);
	com_dir_pid_.setGains(com_dir_kp, com_dir_ki, 0.0);
	com_dir_pid_.setRange(com_dir_max, com_dir_min);

	init();

	//Set up Publishers
	pub_ctrl_cmd_ = node.advertise<autoware_msgs::ControlCommandStamped>("ctrl_cmd", 10);
	pub_drive_mode_ = node.advertise<can_channel::ModeCmd>("drive_mode", 10);

	//For debug
	pub_ctrl_debug_ = node.advertise<control::ControlDebug>("control_debug", 10);

	timer_compute_cmd_ = node.createTimer(ros::Duration(Compute_PERIOD_), &Controller_1::compute_Cmd, this);

	timer_transmit_cmd_ = node.createTimer(ros::Duration(Control_PERIOD_), &Controller_1::transmit_CtrlCmd, this);

	//Set up Subsribers
	sub_mode_cmd_ = node.subscribe("mode_cmd", 100, &Controller_1::recvModeCmd, this);
	sub_current_pose_ = node.subscribe("current_pose", 100, &Controller_1::recvCurrentPose, this);
	sub_veh_velocity_ = node.subscribe("veh_velocity", 100, &Controller_1::recvVehVelocity, this);
	sub_veh_yaw_ = node.subscribe("imu/data_raw", 100, &Controller_1::recvVehYaw, this);
	//sub_final_waypoints_ = node.subscribe("final_waypoints", 100, &Controller_1::recvFinalWaypoints, this);
	sub_waypoints_ = node.subscribe("lane_waypoints_array", 100, &Controller_1::recvWaypoints, this);
 
	
}

Controller_1::~Controller_1(){}

void Controller_1::init()
{
	command_steering_angle_ = 0;
	command_acceleration_ = 0;
	
	is_pose_set_ = false;
	is_velocity_set_ = false;
	is_yaw_set_ = false;
	drive_mode_ = 0;
	speed_pid_.resetIntegrator();
	com_lateral_pid_.resetIntegrator();
	com_dir_pid_.resetIntegrator();
}

void Controller_1::recvModeCmd(const can_channel::ModeCmd::ConstPtr& msg)
{
	if ((drive_mode_ == 0)&&(msg->mode == 1))
	{
		init();
		speed_pid_.resetIntegrator();
		com_lateral_pid_.resetIntegrator();
		com_dir_pid_.resetIntegrator();
	}
	drive_mode_ = msg->mode;
	can_channel::ModeCmd mode_cmd;
	mode_cmd.header.stamp = ros::Time::now();
	mode_cmd.mode = msg->mode;
	pub_drive_mode_.publish(mode_cmd);

}
void Controller_1::recvCurrentPose(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
	current_pose_ = msg->pose;
	is_pose_set_ = true;

}

void Controller_1::recvVehVelocity(const control::VelocityReport::ConstPtr& msg)
{
	current_velocity_ = msg->speed;
	is_velocity_set_ = true;
}

void Controller_1::recvVehYaw(const sensor_msgs::Imu::ConstPtr& msg)
{
	current_yaw_ = msg->angular_velocity.z;
	is_yaw_set_ = true;

}

void Controller_1::recvFinalWaypoints(const autoware_msgs::Lane::ConstPtr& msg)
{
  current_waypoints_.setCurrentWaypoints(msg->waypoints);
  is_waypoint_set_ = true;	
}

void Controller_1::recvWaypoints(const autoware_msgs::LaneArray::ConstPtr& msg)
{
  int size;
  for (const autoware_msgs::Lane& lane : msg->lanes)
  {
  	size +=1;
  	current_waypoints_.setCurrentWaypoints(lane.waypoints);
  }
  ROS_WARN("LANES: %d", size );
  
  is_waypoint_set_ = true;	
}


void Controller_1::transmit_CtrlCmd(const ros::TimerEvent& event)
{
	autoware_msgs::ControlCommandStamped Ctrl_Cmd;
	Ctrl_Cmd.header.stamp = ros::Time::now();
	Ctrl_Cmd.cmd.linear_acceleration = command_acceleration_;
	Ctrl_Cmd.cmd.steering_angle = command_steering_angle_;
	pub_ctrl_cmd_.publish(Ctrl_Cmd);
}

void Controller_1::compute_Cmd(const ros::TimerEvent& event)
{
	if (!is_velocity_set_){ROS_ERROR("Vehicle velocity missing!"); return;}

	if (!is_pose_set_){ROS_ERROR("Current vehicle pose missing!"); return;}

	if (is_waypoint_set_)
	{
		double LatError, DirError, VelError;
		//For debug 
		double Vel_target;

		double curvature = current_waypoints_.findReferencePoint(current_pose_, current_velocity_, &LatError, &DirError, &VelError, &Vel_target);
		double lat_compensation = com_lateral_w_ * com_lateral_pid_.step(LatError, Compute_PERIOD_);
		double dir_compensation = com_dir_w_ * com_dir_pid_.step(DirError, Compute_PERIOD_);
		//command_steering_angle_ = wheel_base_ * curvature + EG_ * ay + lat_compensation + dir_compensation;
		command_steering_angle_ = wheel_base_ * curvature + lat_compensation + dir_compensation;

		command_acceleration_ = speed_pid_.step(VelError, Compute_PERIOD_);

		//For debug
		control::ControlDebug debug_info;
		debug_info.header.stamp = ros::Time::now();
		debug_info.CurrentSpeed = current_velocity_;
		debug_info.TargetSpeed = Vel_target;
		debug_info.SpeedError = VelError;
		debug_info.AccelerationCmd = command_acceleration_;
		debug_info.Curvature = curvature;
		debug_info.LatError = LatError;
		debug_info.DirError = DirError;
		debug_info.SteeringAngleCmd = command_steering_angle_;
		debug_info.CurvatureContribution = wheel_base_ * curvature;
		debug_info.LatContribution = lat_compensation;
		debug_info.DirContribution = dir_compensation;
		debug_info.CurrentPose = current_pose_;
		pub_ctrl_debug_.publish(debug_info);
	}else
	{
		ROS_INFO("Trajectory missing!");
		return;
	}
}



} //can_channel