/*
 * @Author       : rxlilove 787053789@qq.com
 * @Date         : 2022-06-29 21:14:33
 * @LastEditors: rxl@rxl-hp 787053789@qq.com
 * @LastEditTime: 2022-09-07 09:49:02
 * @FilePath: /demo/src/demo1/src/hello.cpp
 * @Description  :
 *
 * Copyright (c) 2022 by rxlilove 787053789@qq.com, All Rights Reserved.
 */
#include "geometry_msgs/PoseStamped.h"
#include "mavros_msgs/AttitudeTarget.h"
#include "mavros_msgs/State.h"
#include "ros/ros.h"
#include <iostream>
#include <string>
using namespace std;

void mavros_state(const mavros_msgs::State::ConstPtr &msg) {
  //   armed = msg->armed;
  //   state_mode = msg->mode;
}

/**
 * @description:
 * @param       {int} argc
 * @param       {char**} argv
 * @return      {*}
 */
int main(int argc, char **argv) {
  ros::init(argc, argv, "px4_test");
  cout << "pub  " << endl;

  ros::NodeHandle nh;
  ros::Publisher pub_attitude = nh.advertise<mavros_msgs::AttitudeTarget>(
      "/mavros/setpoint_raw/attitude", 10);
  ros::Subscriber sub_state = nh.subscribe("/mavros/state", 10, mavros_state);
  ros::Rate rate(30);

  while (ros::ok()) {
    ros::spinOnce();
    mavros_msgs::AttitudeTarget attitude_fly_stop;
    attitude_fly_stop.type_mask = 184;
    attitude_fly_stop.body_rate.z = 0;
    attitude_fly_stop.thrust = 0;
    pub_attitude.publish(attitude_fly_stop);
    rate.sleep();
  }

  return 0;
}
