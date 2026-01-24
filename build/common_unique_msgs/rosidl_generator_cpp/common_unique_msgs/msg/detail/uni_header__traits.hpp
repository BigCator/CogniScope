// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__TRAITS_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "common_unique_msgs/msg/detail/uni_header__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace common_unique_msgs
{

namespace msg
{

inline void to_flow_style_yaml(
  const UniHeader & msg,
  std::ostream & out)
{
  out << "{";
  // member: ui_msg_id
  {
    out << "ui_msg_id: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_msg_id, out);
    out << ", ";
  }

  // member: ui_msg_datalength
  {
    out << "ui_msg_datalength: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_msg_datalength, out);
    out << ", ";
  }

  // member: ul_msg_stamp
  {
    out << "ul_msg_stamp: ";
    rosidl_generator_traits::value_to_yaml(msg.ul_msg_stamp, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const UniHeader & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: ui_msg_id
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_msg_id: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_msg_id, out);
    out << "\n";
  }

  // member: ui_msg_datalength
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_msg_datalength: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_msg_datalength, out);
    out << "\n";
  }

  // member: ul_msg_stamp
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ul_msg_stamp: ";
    rosidl_generator_traits::value_to_yaml(msg.ul_msg_stamp, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const UniHeader & msg, bool use_flow_style = false)
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

}  // namespace common_unique_msgs

namespace rosidl_generator_traits
{

[[deprecated("use common_unique_msgs::msg::to_block_style_yaml() instead")]]
inline void to_yaml(
  const common_unique_msgs::msg::UniHeader & msg,
  std::ostream & out, size_t indentation = 0)
{
  common_unique_msgs::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use common_unique_msgs::msg::to_yaml() instead")]]
inline std::string to_yaml(const common_unique_msgs::msg::UniHeader & msg)
{
  return common_unique_msgs::msg::to_yaml(msg);
}

template<>
inline const char * data_type<common_unique_msgs::msg::UniHeader>()
{
  return "common_unique_msgs::msg::UniHeader";
}

template<>
inline const char * name<common_unique_msgs::msg::UniHeader>()
{
  return "common_unique_msgs/msg/UniHeader";
}

template<>
struct has_fixed_size<common_unique_msgs::msg::UniHeader>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<common_unique_msgs::msg::UniHeader>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<common_unique_msgs::msg::UniHeader>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__TRAITS_HPP_
