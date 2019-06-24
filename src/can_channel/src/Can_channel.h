/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2018 New Eagle
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/
#ifndef _CAN_CHANNEL_NODE_H_
#define _CAN_CHANNEL_NODE_H_

#include <string>
// ROS messages
#include <ros/ros.h>
#include <can_msgs/Frame.h>
#include <can_channel/ModeCmd.h>
#include <std_msgs/Float64.h>
#include <sensor_msgs/Imu.h>

//Autoware messages
#include "autoware_msgs/ControlCommandStamped.h"
#include "control/VelocityReport.h"

#include <dbc/DbcMessage.h>
#include <dbc/DbcSignal.h>
#include <dbc/Dbc.h>
#include <dbc/DbcBuilder.h>

#define CAN_MESSAGE_NUM 1
#define CAN_TRANSMIT_PERIOD 0.02

namespace can_channel
{

class Can_channel
{
public:
  Can_channel(ros::NodeHandle &node, ros::NodeHandle &priv_nh);
  ~Can_channel();

private:

//	void timerCallback(const ros::TimerEvent& event);
	void recvCAN(const can_msgs::Frame::ConstPtr& msg);
	void recvControlCmd(const autoware_msgs::ControlCommandStamped::ConstPtr& msg);
	void recvModeCmd(const can_channel::ModeCmd::ConstPtr& msg);
	void transmit_can(const ros::TimerEvent& event);

	ros::Timer timer_;

	// Subscribed topics
	ros::Subscriber sub_can_reciever_;
	ros::Subscriber sub_ctrl_cmd_;
	ros::Subscriber sub_mode_;

	// Published topics
	ros::Publisher pub_can_;
	ros::Publisher pub_veh_vel_;
	ros::Publisher pub_veh_yaw_;
	int can_type_;
	NewEagle::Dbc input_Dbc_, output_Dbc_;
	std::string dbcFile_input_, dbcFile_output_;

	double gear_mode_;
	double acceleration_cmd_;
	double steering_cmd_;
	double mode_cmd_;
	double blink_right_, blink_left_;



};

} //can_channel

#endif //_CAN_CHANNEL_NODE_H_