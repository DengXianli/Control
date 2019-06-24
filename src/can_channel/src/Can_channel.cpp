/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/
#include "Can_channel.h"
#include <can_channel/dispatch.h>
#include <cmath>


namespace can_channel
{

Can_channel::Can_channel(ros::NodeHandle &node, ros::NodeHandle &priv_nh)
{
	//blink_right_ = 0;
	//blink_left_ = 0;
	priv_nh.getParam("dbc_file_input", dbcFile_input_);
	priv_nh.getParam("dbc_file_output", dbcFile_output_);
	priv_nh.getParam("gear_mode", gear_mode_); //load gear_mode=3, means switch from P to Forward;


	if (dbcFile_input_ == ""){
		ROS_FATAL("no input dbc file");
	}

	if (dbcFile_output_ == ""){
		ROS_FATAL("no output dbc file");
	}


	input_Dbc_ = NewEagle::DbcBuilder().NewDbc(dbcFile_input_);
	output_Dbc_ = NewEagle::DbcBuilder().NewDbc(dbcFile_output_);

	//Set up Publishers
	pub_can_= node.advertise<can_msgs::Frame>("/kvaser/can_rx", 10);

	pub_veh_vel_ = node.advertise<control::VelocityReport>("veh_velocity", 10);
	pub_veh_yaw_ = node.advertise<sensor_msgs::Imu>("imu/data_raw", 10);
//	pub_veh_steer_ = node.advertise<can_channel::SteeringReport>("steering_report", 10);

	timer_ = node.createTimer(ros::Duration((float)(CAN_TRANSMIT_PERIOD/CAN_MESSAGE_NUM)), &Can_channel::transmit_can, this);

	//Set up Subsribers
	sub_can_reciever_ = node.subscribe("/kvaser/can_tx", 100, &Can_channel::recvCAN, this, ros::TransportHints().tcpNoDelay(true));
	sub_ctrl_cmd_ = node.subscribe("ctrl_cmd", 100, &Can_channel::recvControlCmd, this);
	sub_mode_ = node.subscribe("drive_mode", 100, &Can_channel::recvModeCmd, this);
 
	
}

Can_channel::~Can_channel(){}

void Can_channel::transmit_can(const ros::TimerEvent& event)
{

	NewEagle::DbcMessage* message = output_Dbc_.GetMessageById(ID_Control_Cmd);
	message->GetSignal("BADU_DriveMode_Request")->SetResult(gear_mode_);
	message->GetSignal("BADU_Acceleration_Request")->SetResult(acceleration_cmd_);
	message->GetSignal("BADU_StAng_Request")->SetResult(steering_cmd_);
	message->GetSignal("BADU_AutoMode_Request")->SetResult(mode_cmd_);


	can_msgs::Frame vehicle_speed_msg = message->GetFrame();
	pub_can_.publish(vehicle_speed_msg);
			

	
}

void Can_channel::recvCAN(const can_msgs::Frame::ConstPtr& msg)
{
	if (!msg->is_rtr && !msg->is_error){
		switch (msg->id){
			case ID_Veh_Dyn_Stat:
			{

				NewEagle::DbcMessage* message = input_Dbc_.GetMessageById(ID_Veh_Dyn_Stat);

				if (msg->dlc >= message->GetDlc()) {
		          message->SetFrame(msg);

		
		          control::VelocityReport veh_vel;
		          veh_vel.header.stamp = msg->header.stamp;
		          veh_vel.speed = message->GetSignal("Veh_Speed")->GetResult() / 3.6; //m/s
		          pub_veh_vel_.publish(veh_vel);

		          sensor_msgs::Imu veh_yaw;
		          veh_yaw.header.stamp = msg->header.stamp;
		          veh_yaw.angular_velocity.z = message->GetSignal("Veh_YawRate")->GetResult() * M_PI / 180; //rad/s
		          pub_veh_yaw_.publish(veh_yaw);
		        }

			}
		}
	}
}

void Can_channel::recvControlCmd(const autoware_msgs::ControlCommandStamped::ConstPtr& msg)
{
	acceleration_cmd_ = msg->cmd.linear_acceleration;
	steering_cmd_ = msg->cmd.steering_angle;
}


void Can_channel::recvModeCmd(const can_channel::ModeCmd::ConstPtr& msg)
{
	if (msg->mode == 1){
		mode_cmd_ = 1;
	}
	else{
		mode_cmd_ = 0;
	}
	
	
}



} //can_channel