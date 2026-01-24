// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from ultralytics_ros:msg/YoloResult.idl
// generated code does not contain a copyright notice

#ifndef ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__TRAITS_HPP_
#define ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "ultralytics_ros/msg/detail/yolo_result__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

// Include directives for member types
// Member 'header'
#include "std_msgs/msg/detail/header__traits.hpp"
// Member 'detections'
#include "vision_msgs/msg/detail/detection2_d_array__traits.hpp"
// Member 'masks'
#include "sensor_msgs/msg/detail/image__traits.hpp"

namespace ultralytics_ros
{

namespace msg
{

inline void to_flow_style_yaml(
  const YoloResult & msg,
  std::ostream & out)
{
  out << "{";
  // member: header
  {
    out << "header: ";
    to_flow_style_yaml(msg.header, out);
    out << ", ";
  }

  // member: detections
  {
    out << "detections: ";
    to_flow_style_yaml(msg.detections, out);
    out << ", ";
  }

  // member: masks
  {
    if (msg.masks.size() == 0) {
      out << "masks: []";
    } else {
      out << "masks: [";
      size_t pending_items = msg.masks.size();
      for (auto item : msg.masks) {
        to_flow_style_yaml(item, out);
        if (--pending_items > 0) {
          out << ", ";
        }
      }
      out << "]";
    }
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const YoloResult & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: header
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "header:\n";
    to_block_style_yaml(msg.header, out, indentation + 2);
  }

  // member: detections
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "detections:\n";
    to_block_style_yaml(msg.detections, out, indentation + 2);
  }

  // member: masks
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    if (msg.masks.size() == 0) {
      out << "masks: []\n";
    } else {
      out << "masks:\n";
      for (auto item : msg.masks) {
        if (indentation > 0) {
          out << std::string(indentation, ' ');
        }
        out << "-\n";
        to_block_style_yaml(item, out, indentation + 2);
      }
    }
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const YoloResult & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace msg

}  // namespace ultralytics_ros

namespace rosidl_generator_traits
{

[[deprecated("use ultralytics_ros::msg::to_block_style_yaml() instead")]]
inline void to_yaml(
  const ultralytics_ros::msg::YoloResult & msg,
  std::ostream & out, size_t indentation = 0)
{
  ultralytics_ros::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use ultralytics_ros::msg::to_yaml() instead")]]
inline std::string to_yaml(const ultralytics_ros::msg::YoloResult & msg)
{
  return ultralytics_ros::msg::to_yaml(msg);
}

template<>
inline const char * data_type<ultralytics_ros::msg::YoloResult>()
{
  return "ultralytics_ros::msg::YoloResult";
}

template<>
inline const char * name<ultralytics_ros::msg::YoloResult>()
{
  return "ultralytics_ros/msg/YoloResult";
}

template<>
struct has_fixed_size<ultralytics_ros::msg::YoloResult>
  : std::integral_constant<bool, false> {};

template<>
struct has_bounded_size<ultralytics_ros::msg::YoloResult>
  : std::integral_constant<bool, false> {};

template<>
struct is_message<ultralytics_ros::msg::YoloResult>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__TRAITS_HPP_
