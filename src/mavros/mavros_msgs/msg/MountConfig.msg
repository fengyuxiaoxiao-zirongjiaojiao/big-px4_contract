# HilActuatorControls.msg
#
# ROS representation of MAVLink HIL_ACTUATOR_CONTROLS
# See mavlink message documentation here:
# https://mavlink.io/en/messages/common.html#GIMBAL_DEVICE_ATTITUDE_STATUS
std_msgs/Header header
uint8 target_system 
uint8 target_component
uint64 time_boot_ms
uint8  flags
float32[4] quaternion
float32 angular_velocity_x
float32 angular_velocity_y
float32 angular_velocity_z
uint64 failure_flags
