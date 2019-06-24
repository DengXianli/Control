/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  All rights reserved.
 *  Author: Xianli Deng
 *  Email: dengxianli-ka@outlook.com
 *********************************************************************/

#include "Trajectory.h"


namespace control
{

Trajectory::Trajectory(){}
Trajectory::~Trajectory(){}

void Trajectory::CalcCurvature()
{
	int path_size = static_cast<int>(current_waypoints_.size());
	curvature_.clear();
	for (int i =0; i< path_size-1; i++)
	{
		double delta_s = getPlaneDistance(current_waypoints_.at(i+1).pose.pose.position, current_waypoints_.at(i).pose.pose.position);
		curvature_.push_back((double)((current_waypoints_.at(i+1).pose.pose.orientation.z - current_waypoints_.at(i).pose.pose.orientation.z) / delta_s));
	}
	curvature_.push_back(0.0);// set curvature to 0.0 at the end of trajectory;
}

int Trajectory::FindClosestPoint(const geometry_msgs::Pose &current_pose)
{
	double distance(10000);
	int closest_point(0);
	int path_size = static_cast<int>(current_waypoints_.size());
	for(int i = 0; i < path_size; i++)
	{
		double distance_i = getPlaneDistance(current_pose.position, current_waypoints_.at(i).pose.pose.position);

		if(distance > distance_i)
		{
			closest_point = i;
			distance = distance_i;
		}
	}
	
	return closest_point;

}

double Trajectory::getPlaneDistance(geometry_msgs::Point target1, geometry_msgs::Point target2)
{

  return (double)sqrt(pow((target1.x-target2.x),2)+pow((target1.y-target2.y),2));

}

double Trajectory::CalcLatError(const geometry_msgs::Pose &current_pose, const geometry_msgs::Pose &reference_point)
{
	double if_right;// if the current pose on the right side of the trajectory
	double dis_value =tan(reference_point.orientation.z) * (current_pose.position.x - reference_point.position.x) + reference_point.position.y - current_pose.position.y;
	if (dis_value >= 0.0)
	{
		if_right = 1.0;
	}else
	{
		if_right = -1.0;
	}
	double lateral_error = fabs(dis_value) / sqrt(1.0 + pow(tan(reference_point.orientation.z),2));
	std::cout<<"if_right:" << if_right << "     distance:  " << lateral_error << std::endl;
	return if_right * lateral_error;

}

double Trajectory::CalcDirError(const geometry_msgs::Pose &current_pose, const geometry_msgs::Pose &reference_point)
{
	return (reference_point.orientation.z - current_pose.orientation.z);
	//turn left will be positive
}


}//control