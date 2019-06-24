/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/
#ifndef _CONTROLLER_1_H_
#define _CONTROLLER_1_H_

#include <string>
#include "PidControl.h"
#include "Trajectory.h"

// ROS messages
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <sensor_msgs/Imu.h>

#include "control/VelocityReport.h"
#include "control/ControlDebug.h"

//user defined messages
#include "autoware_msgs/Lane.h"
#include "autoware_msgs/LaneArray.h"
#include "autoware_msgs/ControlCommandStamped.h"
#include "can_channel/ModeCmd.h"

namespace control
{

class Controller_1
{
public:
  Controller_1(ros::NodeHandle &node, ros::NodeHandle &priv_nh);
  ~Controller_1();

private:

//	void timerCallback(const ros::TimerEvent& event);
	void init();
	void recvCurrentPose(const geometry_msgs::PoseStamped::ConstPtr& msg);
	void recvVehVelocity(const control::VelocityReport::ConstPtr& msg);
	void recvFinalWaypoints(const autoware_msgs::Lane::ConstPtr& msg);
	void recvVehYaw(const sensor_msgs::Imu::ConstPtr& msg);
	void recvModeCmd(const can_channel::ModeCmd::ConstPtr& msg);
	void recvWaypoints(const autoware_msgs::LaneArray::ConstPtr& msg);

	void transmit_CtrlCmd(const ros::TimerEvent& event);
	void compute_Cmd(const ros::TimerEvent& event);


	ros::Timer timer_compute_cmd_, timer_transmit_cmd_;

	// Subscribed topics
	ros::Subscriber sub_current_pose_;
	ros::Subscriber sub_veh_velocity_;
	ros::Subscriber sub_veh_yaw_;
	ros::Subscriber sub_final_waypoints_, sub_waypoints_;
	ros::Subscriber sub_mode_cmd_;

	// Published topics
	ros::Publisher pub_ctrl_cmd_, pub_drive_mode_;

	// For debug
	ros::Publisher pub_ctrl_debug_;

	PidControl speed_pid_;
	PidControl com_lateral_pid_, com_dir_pid_;

	double Control_PERIOD_, Compute_PERIOD_;
	int drive_mode_;


	double current_velocity_;
	double current_yaw_;
	geometry_msgs::Pose current_pose_;


	double command_acceleration_;
	double command_steering_angle_;//tire_angle
	Trajectory current_waypoints_;

	bool is_pose_set_,is_waypoint_set_,is_velocity_set_, is_yaw_set_;
	double wheel_base_;
	double com_lateral_w_, com_dir_w_;


};

} //control

#endif //_CONTROLLER_1_H_