/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/
#include <ros/ros.h>
#include "Controller_1.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "control");
  ros::NodeHandle node;
  ros::NodeHandle priv_nh("~");

  // create control class
  control::Controller_1 n(node, priv_nh);

  // handle callbacks until shut down
  ros::spin();

  return 0;
}
