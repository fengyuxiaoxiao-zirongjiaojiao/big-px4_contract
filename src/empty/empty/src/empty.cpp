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
#include "mavros_msgs/GPSRAW.h"
#include "ros/init.h"
#include "ros/rate.h"
#include "sensor_msgs/NavSatFix.h"
#include "sensor_msgs/Imu.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"
#include "sensor_msgs/NavSatStatus.h"
#include "tf2/LinearMath/Matrix3x3.h"
#include "tf2/LinearMath/Quaternion.h"
#include "mavros_msgs/GlobalPositionTarget.h"
#include <cstdint>
#include <iostream>
#include <string>
#include <pthread.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <arpa/inet.h>

#define SERV_PORT 8000
#define CLIENT_PORT 8000
#define CLIENT_IP_ADDRESS "127.0.0.0"
using namespace std;
ros::Publisher pub_attitude, pub_setpoint_global;
ros::Subscriber sub_state, sub_global, sub_gps1_raw, sub_local_odom, sub_imu_data;
pthread_t socket_ntid_rev;

struct udp_send
{
    uint8_t fix_type;
    float lat;
    float lon;
    float alt;
    float vx;
    float vy;
    float vz;
    float ax;
    float ay;
    float az;
    float roll_body;
    float pitch_body;
    float yaw_body;
    float angular_velocity_x;
    float angular_velocity_y;
    float angular_velocity_z;
} udp_send_data;

int recv()
{
    /* sock_fd --- socket文件描述符 创建udp套接字*/
    int sock_fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock_fd < 0)
    {
        perror("socket");
        exit(1);
    }

    /* 将套接字和IP、端口绑定 */
    struct sockaddr_in addr_serv;
    int len;
    memset(&addr_serv, 0, sizeof(struct sockaddr_in));  //每个字节都用0填充
    addr_serv.sin_family = AF_INET;
    //使用IPV4地址
    addr_serv.sin_port = htons(SERV_PORT);
    //端口
    /* INADDR_ANY表示不管是哪个网卡接收到数据，只要目的端口是SERV_PORT，就会被该应用程序接收到 */
    addr_serv.sin_addr.s_addr = htonl(INADDR_ANY);  //自动获取IP地址
    len = sizeof(addr_serv);

    /* 绑定socket */
    if (bind(sock_fd, (struct sockaddr*)&addr_serv, sizeof(addr_serv)) < 0)
    {
        perror("bind error:");
        exit(1);
    }

    int recv_num;
    char recv_buf[20];
    struct sockaddr_in addr_client;

    while (ros::ok())
    {
        printf("server wait:\n");

        recv_num = recvfrom(sock_fd, recv_buf, sizeof(recv_buf), 0, (struct sockaddr*)&addr_client,
                            (socklen_t*)&len);

        if (recv_num < 0)
        {
            perror("recvfrom error:");
            exit(1);
        }

        recv_buf[recv_num] = '\0';
        printf("server receive %d bytes: %s\n", recv_num, recv_buf);
        // 接收到的udp消息赋值给ros自定义消息，发布给飞控
        mavros_msgs::GlobalPositionTarget global_target;
        // 在此处给global_target赋值即可
        // global_target.coordinate_frame=
        // global_target.type_mask=
        // global_target.latitude=
        // global_target.longitude=
        // global_target.altitude=
        // global_target.velocity.x=
        // global_target.velocity.y=
        // global_target.velocity.z=
        // global_target.acceleration_or_force.x=
        // global_target.acceleration_or_force.y=
        // global_target.acceleration_or_force.z=
        // global_target.yaw=
        // global_target.yaw_rate=
        pub_setpoint_global.publish(global_target);
    }

    close(sock_fd);
    return 0;
}

void* user_thread_socket(void* arg)
{
    std::cout << "user_thread_socket start" << std::endl;
    recv();
    return nullptr;
}

int recv_thread()
{
    if ((pthread_create(&socket_ntid_rev, NULL, user_thread_socket, NULL)) != 0)
    {
        printf("can't create socket thread");
        return 1;
    }
    return 0;
}

void send_udp()
{
    ros::Rate rate(100);

    // 接收到的msg消息赋值给send_buf，通过udp发送出去
    /* socket文件描述符 */
    int sock_fd;

    /* 建立udp socket */
    sock_fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock_fd < 0)
    {
        perror("socket");
        exit(1);
    }

    /* 设置address */
    struct sockaddr_in addr_serv;
    int len;
    memset(&addr_serv, 0, sizeof(addr_serv));
    addr_serv.sin_family = AF_INET;
    addr_serv.sin_addr.s_addr = inet_addr(CLIENT_IP_ADDRESS);
    addr_serv.sin_port = htons(CLIENT_PORT);
    len = sizeof(addr_serv);

    while (ros::ok())
    {
        ros::spinOnce();

        int send_num;
        char send_buf[20] = "hey, who are you?";
        printf("client send: %s\n", send_buf);
        // 此处将udp_send_data赋值给send_buf即可
        send_num =
            sendto(sock_fd, send_buf, strlen(send_buf), 0, (struct sockaddr*)&addr_serv, len);
        if (send_num < 0)
        {
            perror("sendto error:");
            exit(1);
        }

        rate.sleep();
    }
    close(sock_fd);
}

void mavros_state(const mavros_msgs::State::ConstPtr& msg) {}

void global_cb(const sensor_msgs::NavSatFix::ConstPtr& msg)
{
    udp_send_data.lat = msg->latitude;
    udp_send_data.lon = msg->longitude;
    udp_send_data.alt = msg->altitude;
}

void gps1_raw_cb(const mavros_msgs::GPSRAW::ConstPtr& msg)
{
    udp_send_data.fix_type = msg->fix_type;
}
void local_odom_cb(const nav_msgs::Odometry::ConstPtr& msg)
{
    udp_send_data.vx = msg->twist.twist.linear.x;
    udp_send_data.vy = msg->twist.twist.linear.y;
    udp_send_data.vz = msg->twist.twist.linear.z;
}
void imu_data_cb(const sensor_msgs::Imu::ConstPtr& msg)
{
    udp_send_data.ax = msg->linear_acceleration.x;
    udp_send_data.ay = msg->linear_acceleration.y;
    udp_send_data.az = msg->linear_acceleration.z;

    tf2::Quaternion q;
    q.setValue(msg->orientation.x, msg->orientation.y, msg->orientation.z, msg->orientation.w);
    tf2::Matrix3x3 R(q);
    double roll, pitch, yaw;
    R.getRPY(roll, pitch, yaw);
    udp_send_data.roll_body = roll;
    udp_send_data.pitch_body = pitch;
    udp_send_data.yaw_body = yaw;

    udp_send_data.angular_velocity_x = msg->angular_velocity.x;
    udp_send_data.angular_velocity_y = msg->angular_velocity.y;
    udp_send_data.angular_velocity_z = msg->angular_velocity.z;
}
/**
 * @description:
 * @param       {int} argc
 * @param       {char**} argv
 * @return      {*}
 */
int main(int argc, char** argv)
{
    ros::init(argc, argv, "px4_test");
    cout << "pub  " << endl;

    ros::NodeHandle nh;
    pub_attitude = nh.advertise<mavros_msgs::AttitudeTarget>("/mavros/setpoint_raw/attitude", 10);
    pub_setpoint_global =
        nh.advertise<mavros_msgs::GlobalPositionTarget>("/mavros/setpoint_raw/global", 10);
    sub_state = nh.subscribe("/mavros/state", 10, mavros_state);
    sub_global = nh.subscribe("/mavros/global_position/global", 10, global_cb);
    sub_gps1_raw = nh.subscribe("/mavros/gps1_raw/global", 10, gps1_raw_cb);
    sub_local_odom = nh.subscribe("/mavros/global_position/local", 10, local_odom_cb);
    sub_imu_data = nh.subscribe("/mavros/imu/data", 10, imu_data_cb);

    recv_thread();
    send_udp();

    return 0;
}
