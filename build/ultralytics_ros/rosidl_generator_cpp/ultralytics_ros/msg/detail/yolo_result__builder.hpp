// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from ultralytics_ros:msg/YoloResult.idl
// generated code does not contain a copyright notice

#ifndef ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__BUILDER_HPP_
#define ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "ultralytics_ros/msg/detail/yolo_result__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace ultralytics_ros
{

namespace msg
{

namespace builder
{

class Init_YoloResult_masks
{
public:
  explicit Init_YoloResult_masks(::ultralytics_ros::msg::YoloResult & msg)
  : msg_(msg)
  {}
  ::ultralytics_ros::msg::YoloResult masks(::ultralytics_ros::msg::YoloResult::_masks_type arg)
  {
    msg_.masks = std::move(arg);
    return std::move(msg_);
  }

private:
  ::ultralytics_ros::msg::YoloResult msg_;
};

class Init_YoloResult_detections
{
public:
  explicit Init_YoloResult_detections(::ultralytics_ros::msg::YoloResult & msg)
  : msg_(msg)
  {}
  Init_YoloResult_masks detections(::ultralytics_ros::msg::YoloResult::_detections_type arg)
  {
    msg_.detections = std::move(arg);
    return Init_YoloResult_masks(msg_);
  }

private:
  ::ultralytics_ros::msg::YoloResult msg_;
};

class Init_YoloResult_header
{
public:
  Init_YoloResult_header()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_YoloResult_detections header(::ultralytics_ros::msg::YoloResult::_header_type arg)
  {
    msg_.header = std::move(arg);
    return Init_YoloResult_detections(msg_);
  }

private:
  ::ultralytics_ros::msg::YoloResult msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::ultralytics_ros::msg::YoloResult>()
{
  return ultralytics_ros::msg::builder::Init_YoloResult_header();
}

}  // namespace ultralytics_ros

#endif  // ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__BUILDER_HPP_
