/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2018 New Eagle
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/
#include <ros/ros.h>
#include "Can_channel.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "can_channel");
  ros::NodeHandle node;
  ros::NodeHandle priv_nh("~");

  // create DbwNode class
  can_channel::Can_channel n(node, priv_nh);

  // handle callbacks until shut down
  ros::spin();

  return 0;
}
