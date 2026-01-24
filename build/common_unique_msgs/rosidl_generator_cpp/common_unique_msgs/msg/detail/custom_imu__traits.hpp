// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from common_unique_msgs:msg/CustomIMU.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__TRAITS_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "common_unique_msgs/msg/detail/custom_imu__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

// Include directives for member types
// Member 'header'
#include "std_msgs/msg/detail/header__traits.hpp"

namespace common_unique_msgs
{

namespace msg
{

inline void to_flow_style_yaml(
  const CustomIMU & msg,
  std::ostream & out)
{
  out << "{";
  // member: header
  {
    out << "header: ";
    to_flow_style_yaml(msg.header, out);
    out << ", ";
  }

  // member: gps_week
  {
    out << "gps_week: ";
    rosidl_generator_traits::value_to_yaml(msg.gps_week, out);
    out << ", ";
  }

  // member: gps_time
  {
    out << "gps_time: ";
    rosidl_generator_traits::value_to_yaml(msg.gps_time, out);
    out << ", ";
  }

  // member: gyro_x
  {
    out << "gyro_x: ";
    rosidl_generator_traits::value_to_yaml(msg.gyro_x, out);
    out << ", ";
  }

  // member: gyro_y
  {
    out << "gyro_y: ";
    rosidl_generator_traits::value_to_yaml(msg.gyro_y, out);
    out << ", ";
  }

  // member: gyro_z
  {
    out << "gyro_z: ";
    rosidl_generator_traits::value_to_yaml(msg.gyro_z, out);
    out << ", ";
  }

  // member: acc_x
  {
    out << "acc_x: ";
    rosidl_generator_traits::value_to_yaml(msg.acc_x, out);
    out << ", ";
  }

  // member: acc_y
  {
    out << "acc_y: ";
    rosidl_generator_traits::value_to_yaml(msg.acc_y, out);
    out << ", ";
  }

  // member: acc_z
  {
    out << "acc_z: ";
    rosidl_generator_traits::value_to_yaml(msg.acc_z, out);
    out << ", ";
  }

  // member: temperature
  {
    out << "temperature: ";
    rosidl_generator_traits::value_to_yaml(msg.temperature, out);
    out << ", ";
  }

  // member: checksum
  {
    out << "checksum: ";
    rosidl_generator_traits::value_to_yaml(msg.checksum, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const CustomIMU & msg,
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

  // member: gps_week
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "gps_week: ";
    rosidl_generator_traits::value_to_yaml(msg.gps_week, out);
    out << "\n";
  }

  // member: gps_time
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "gps_time: ";
    rosidl_generator_traits::value_to_yaml(msg.gps_time, out);
    out << "\n";
  }

  // member: gyro_x
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "gyro_x: ";
    rosidl_generator_traits::value_to_yaml(msg.gyro_x, out);
    out << "\n";
  }

  // member: gyro_y
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "gyro_y: ";
    rosidl_generator_traits::value_to_yaml(msg.gyro_y, out);
    out << "\n";
  }

  // member: gyro_z
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "gyro_z: ";
    rosidl_generator_traits::value_to_yaml(msg.gyro_z, out);
    out << "\n";
  }

  // member: acc_x
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "acc_x: ";
    rosidl_generator_traits::value_to_yaml(msg.acc_x, out);
    out << "\n";
  }

  // member: acc_y
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "acc_y: ";
    rosidl_generator_traits::value_to_yaml(msg.acc_y, out);
    out << "\n";
  }

  // member: acc_z
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "acc_z: ";
    rosidl_generator_traits::value_to_yaml(msg.acc_z, out);
    out << "\n";
  }

  // member: temperature
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "temperature: ";
    rosidl_generator_traits::value_to_yaml(msg.temperature, out);
    out << "\n";
  }

  // member: checksum
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "checksum: ";
    rosidl_generator_traits::value_to_yaml(msg.checksum, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const CustomIMU & msg, bool use_flow_style = false)
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
  const common_unique_msgs::msg::CustomIMU & msg,
  std::ostream & out, size_t indentation = 0)
{
  common_unique_msgs::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use common_unique_msgs::msg::to_yaml() instead")]]
inline std::string to_yaml(const common_unique_msgs::msg::CustomIMU & msg)
{
  return common_unique_msgs::msg::to_yaml(msg);
}

template<>
inline const char * data_type<common_unique_msgs::msg::CustomIMU>()
{
  return "common_unique_msgs::msg::CustomIMU";
}

template<>
inline const char * name<common_unique_msgs::msg::CustomIMU>()
{
  return "common_unique_msgs/msg/CustomIMU";
}

template<>
struct has_fixed_size<common_unique_msgs::msg::CustomIMU>
  : std::integral_constant<bool, false> {};

template<>
struct has_bounded_size<common_unique_msgs::msg::CustomIMU>
  : std::integral_constant<bool, false> {};

template<>
struct is_message<common_unique_msgs::msg::CustomIMU>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__TRAITS_HPP_
