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
ros::Publisher pub_attitude;
ros::Subscriber sub_state;
pthread_t socket_ntid_rev;

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

        recv_num = recvfrom(sock_fd, recv_buf, sizeof(recv_buf), 0, (struct sockaddr*)&addr_client, (socklen_t*)&len);

        if (recv_num < 0)
        {
            perror("recvfrom error:");
            exit(1);
        }

        recv_buf[recv_num] = '\0';
        printf("server receive %d bytes: %s\n", recv_num, recv_buf);
        // 接收到的udp消息赋值给ros自定义消息，发布给飞控
        mavros_msgs::AttitudeTarget attitude_fly_stop;
        // attitude_fly_stop.type_mask = 184;
        // attitude_fly_stop.body_rate.z = 0;
        // attitude_fly_stop.thrust = 0;
        pub_attitude.publish(attitude_fly_stop);
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
void mavros_state(const mavros_msgs::State::ConstPtr& msg)
{
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

    int send_num;
    char send_buf[20] = "hey, who are you?";

    printf("client send: %s\n", send_buf);

    send_num = sendto(sock_fd, send_buf, strlen(send_buf), 0, (struct sockaddr*)&addr_serv, len);

    if (send_num < 0)
    {
        perror("sendto error:");
        exit(1);
    }
    close(sock_fd);
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
    sub_state = nh.subscribe("/mavros/state", 10, mavros_state);

    recv_thread();
    ros::spin();

    return 0;
}
