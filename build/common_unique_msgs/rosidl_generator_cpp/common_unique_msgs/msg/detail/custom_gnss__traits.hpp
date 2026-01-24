// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from common_unique_msgs:msg/CustomGNSS.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__TRAITS_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "common_unique_msgs/msg/detail/custom_gnss__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

// Include directives for member types
// Member 'header'
#include "std_msgs/msg/detail/header__traits.hpp"

namespace common_unique_msgs
{

namespace msg
{

inline void to_flow_style_yaml(
  const CustomGNSS & msg,
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

  // member: heading
  {
    out << "heading: ";
    rosidl_generator_traits::value_to_yaml(msg.heading, out);
    out << ", ";
  }

  // member: pitch
  {
    out << "pitch: ";
    rosidl_generator_traits::value_to_yaml(msg.pitch, out);
    out << ", ";
  }

  // member: roll
  {
    out << "roll: ";
    rosidl_generator_traits::value_to_yaml(msg.roll, out);
    out << ", ";
  }

  // member: latitude
  {
    out << "latitude: ";
    rosidl_generator_traits::value_to_yaml(msg.latitude, out);
    out << ", ";
  }

  // member: longitude
  {
    out << "longitude: ";
    rosidl_generator_traits::value_to_yaml(msg.longitude, out);
    out << ", ";
  }

  // member: altitude
  {
    out << "altitude: ";
    rosidl_generator_traits::value_to_yaml(msg.altitude, out);
    out << ", ";
  }

  // member: ve
  {
    out << "ve: ";
    rosidl_generator_traits::value_to_yaml(msg.ve, out);
    out << ", ";
  }

  // member: vn
  {
    out << "vn: ";
    rosidl_generator_traits::value_to_yaml(msg.vn, out);
    out << ", ";
  }

  // member: vu
  {
    out << "vu: ";
    rosidl_generator_traits::value_to_yaml(msg.vu, out);
    out << ", ";
  }

  // member: baseline
  {
    out << "baseline: ";
    rosidl_generator_traits::value_to_yaml(msg.baseline, out);
    out << ", ";
  }

  // member: nsv1
  {
    out << "nsv1: ";
    rosidl_generator_traits::value_to_yaml(msg.nsv1, out);
    out << ", ";
  }

  // member: nsv2
  {
    out << "nsv2: ";
    rosidl_generator_traits::value_to_yaml(msg.nsv2, out);
    out << ", ";
  }

  // member: status
  {
    out << "status: ";
    rosidl_generator_traits::value_to_yaml(msg.status, out);
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
  const CustomGNSS & msg,
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

  // member: heading
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "heading: ";
    rosidl_generator_traits::value_to_yaml(msg.heading, out);
    out << "\n";
  }

  // member: pitch
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "pitch: ";
    rosidl_generator_traits::value_to_yaml(msg.pitch, out);
    out << "\n";
  }

  // member: roll
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "roll: ";
    rosidl_generator_traits::value_to_yaml(msg.roll, out);
    out << "\n";
  }

  // member: latitude
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "latitude: ";
    rosidl_generator_traits::value_to_yaml(msg.latitude, out);
    out << "\n";
  }

  // member: longitude
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "longitude: ";
    rosidl_generator_traits::value_to_yaml(msg.longitude, out);
    out << "\n";
  }

  // member: altitude
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "altitude: ";
    rosidl_generator_traits::value_to_yaml(msg.altitude, out);
    out << "\n";
  }

  // member: ve
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ve: ";
    rosidl_generator_traits::value_to_yaml(msg.ve, out);
    out << "\n";
  }

  // member: vn
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "vn: ";
    rosidl_generator_traits::value_to_yaml(msg.vn, out);
    out << "\n";
  }

  // member: vu
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "vu: ";
    rosidl_generator_traits::value_to_yaml(msg.vu, out);
    out << "\n";
  }

  // member: baseline
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "baseline: ";
    rosidl_generator_traits::value_to_yaml(msg.baseline, out);
    out << "\n";
  }

  // member: nsv1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "nsv1: ";
    rosidl_generator_traits::value_to_yaml(msg.nsv1, out);
    out << "\n";
  }

  // member: nsv2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "nsv2: ";
    rosidl_generator_traits::value_to_yaml(msg.nsv2, out);
    out << "\n";
  }

  // member: status
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "status: ";
    rosidl_generator_traits::value_to_yaml(msg.status, out);
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

inline std::string to_yaml(const CustomGNSS & msg, bool use_flow_style = false)
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
  const common_unique_msgs::msg::CustomGNSS & msg,
  std::ostream & out, size_t indentation = 0)
{
  common_unique_msgs::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use common_unique_msgs::msg::to_yaml() instead")]]
inline std::string to_yaml(const common_unique_msgs::msg::CustomGNSS & msg)
{
  return common_unique_msgs::msg::to_yaml(msg);
}

template<>
inline const char * data_type<common_unique_msgs::msg::CustomGNSS>()
{
  return "common_unique_msgs::msg::CustomGNSS";
}

template<>
inline const char * name<common_unique_msgs::msg::CustomGNSS>()
{
  return "common_unique_msgs/msg/CustomGNSS";
}

template<>
struct has_fixed_size<common_unique_msgs::msg::CustomGNSS>
  : std::integral_constant<bool, false> {};

template<>
struct has_bounded_size<common_unique_msgs::msg::CustomGNSS>
  : std::integral_constant<bool, false> {};

template<>
struct is_message<common_unique_msgs::msg::CustomGNSS>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__TRAITS_HPP_
