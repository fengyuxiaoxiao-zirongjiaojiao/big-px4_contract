#include <mavros/mavros_plugin.h>
#include <mavros_msgs/MountConfig.h>

namespace mavros {
namespace extra_plugins {
class MountConfigPlugin:public plugin::PluginBase {
public:
	MountConfigPlugin():PluginBase(),
		get_data_nh("~PX4_to_mavros")
	{}

	void initialize(UAS &uas_) override {
		PluginBase::initialize(uas_);
		get_data_nh.param<std::string>("frame_id", frame_id, "camera");
		
		get_data_pub = get_data_nh.advertise<mavros_msgs::MountConfig>("receive_data", 10);
	}

	Subscriptions get_subscriptions() override {
		return{
			make_handler(&MountConfigPlugin::handle_get_data)
		};
	}

private:
	ros::NodeHandle get_data_nh;
	ros::Publisher get_data_pub;
	
	std::string frame_id;
	// mavlink::common::msg::GIMBAL_DEVICE_ATTITUDE_STATUS为自动生成的消息头文件中所定义的，也是依据此来解析收到的mavlink消息。
	void handle_get_data(const mavlink::mavlink_message_t *msg, mavlink::common::msg::GIMBAL_DEVICE_ATTITUDE_STATUS &get_data) {
		auto tmp = boost::make_shared<mavros_msgs::MountConfig>();
		tmp->header = m_uas->synchronized_header(frame_id, get_data.time_boot_ms);
		tmp->target_system = get_data.target_system;
		tmp->flags = get_data.flags;
		tmp->angular_velocity_x = get_data.angular_velocity_x;
		tmp->angular_velocity_y = get_data.angular_velocity_y;
		tmp->angular_velocity_z = get_data.angular_velocity_z;
		tmp->failure_flags = get_data.failure_flags;

		// ROS_INFO(  "             %d", get_data.flags);
		get_data_pub.publish(tmp);//将解析到的消息发布至topic
	}
};
}
}

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(mavros::extra_plugins::MountConfigPlugin, mavros::plugin::PluginBase)

