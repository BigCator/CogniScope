#include <memory>
#include <string>

#include "rclcpp/rclcpp.hpp"
#include "tf2_ros/transform_broadcaster.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include "geometry_msgs/msg/transform_stamped.hpp"

class CopyTransformPublisher : public rclcpp::Node
{
public:
  CopyTransformPublisher()
  : Node("copy_tf_publisher")
  {
    // 源变换：odom -> base_link
    source_parent_ = this->declare_parameter<std::string>("source_parent", "odom");
    source_child_ = this->declare_parameter<std::string>("source_child", "base_link");

    // 目标变换：map -> zwlidar
    target_parent_ = this->declare_parameter<std::string>("target_parent", "map");
    target_child_ = this->declare_parameter<std::string>("target_child", "zwlidar");

    tf_buffer_ = std::make_shared<tf2_ros::Buffer>(this->get_clock());
    tf_listener_ = std::make_shared<tf2_ros::TransformListener>(*tf_buffer_);
    tf_broadcaster_ = std::make_shared<tf2_ros::TransformBroadcaster>(this);

    timer_ = this->create_wall_timer(
      std::chrono::milliseconds(50),
      std::bind(&CopyTransformPublisher::on_timer, this));
  }

private:
  void on_timer()
  {
    geometry_msgs::msg::TransformStamped transformStamped;

    try {
      // 获取 odom -> base_link 变换
      transformStamped = tf_buffer_->lookupTransform(
        source_parent_, source_child_, tf2::TimePointZero);
    }
    catch (tf2::TransformException & ex) {
      RCLCPP_WARN(this->get_logger(), "Could not transform %s to %s: %s",
                  source_parent_.c_str(), source_child_.c_str(), ex.what());
      return;
    }

    // 修改并重新广播为 map -> zwlidar
    geometry_msgs::msg::TransformStamped new_transform;
    new_transform.header.stamp = this->get_clock()->now();
    new_transform.header.frame_id = target_parent_;
    new_transform.child_frame_id = target_child_;
    new_transform.transform = transformStamped.transform;

    tf_broadcaster_->sendTransform(new_transform);
  }

  std::string source_parent_, source_child_;
  std::string target_parent_, target_child_;

  std::shared_ptr<tf2_ros::Buffer> tf_buffer_;
  std::shared_ptr<tf2_ros::TransformListener> tf_listener_;
  std::shared_ptr<tf2_ros::TransformBroadcaster> tf_broadcaster_;
  rclcpp::TimerBase::SharedPtr timer_;
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<CopyTransformPublisher>());
  rclcpp::shutdown();
  return 0;
}
