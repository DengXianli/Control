/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/

#ifndef _TRAJECTORY_H_
#define _TRAJECTORY_H_

#include <cmath>
#include <iostream>

//ROS include 
#include <geometry_msgs/Pose.h>

//User defined includes 
#include "autoware_msgs/Waypoint.h"


namespace control
{
class Trajectory
{
public:
	Trajectory();
	~Trajectory();

void setCurrentWaypoints(const std::vector<autoware_msgs::Waypoint> &wps)
{
	current_waypoints_ = wps;
	CalcCurvature();
}


double findReferencePoint(const geometry_msgs::Pose &current_pose, double current_velocity, double *LatError, double *DirError, double *VelError, double *Vel_target)
{
	int reference_point_index = FindClosestPoint(current_pose);
	//reference_point_index = std::min(reference_point_index + 50, static_cast<int>(current_waypoints_.size()));
	*LatError = CalcLatError(current_pose, current_waypoints_.at(reference_point_index).pose.pose);
	*DirError = CalcDirError(current_pose, current_waypoints_.at(reference_point_index).pose.pose);
	*VelError = current_waypoints_.at(reference_point_index).twist.twist.linear.x - current_velocity;
	*Vel_target = current_waypoints_.at(reference_point_index).twist.twist.linear.x;//Not neccessary, but for debug

	std::cout << "reference_point_index: " << reference_point_index <<std::endl;


	return curvature_.at(reference_point_index);
}


private:

void CalcCurvature();
int FindClosestPoint(const geometry_msgs::Pose &current_pose);
double CalcLatError(const geometry_msgs::Pose &current_pose, const geometry_msgs::Pose &reference_point);
double CalcDirError(const geometry_msgs::Pose &current_pose, const geometry_msgs::Pose &reference_point);
double getPlaneDistance(geometry_msgs::Point target1, geometry_msgs::Point target2);

std::vector<autoware_msgs::Waypoint> current_waypoints_;
std::vector<double> curvature_;

};


}//control


#endif //_TRAJECTORY_H_