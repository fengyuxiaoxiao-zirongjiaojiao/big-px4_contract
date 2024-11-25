cmake_minimum_required(VERSION 3.0.2)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
project(empty)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  mavros_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES demo1
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

## Build ##
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(empty src/empty.cpp)
target_link_libraries(empty ${catkin_LIBRARIES})

add_executable(server src/server.cpp)
add_executable(client src/client.cpp)