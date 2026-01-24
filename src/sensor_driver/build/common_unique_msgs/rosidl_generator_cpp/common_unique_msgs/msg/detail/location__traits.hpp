// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__TRAITS_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "common_unique_msgs/msg/detail/location__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

// Include directives for member types
// Member 'header'
#include "common_unique_msgs/msg/detail/uni_header__traits.hpp"

namespace common_unique_msgs
{

namespace msg
{

inline void to_flow_style_yaml(
  const Location & msg,
  std::ostream & out)
{
  out << "{";
  // member: header
  {
    out << "header: ";
    to_flow_style_yaml(msg.header, out);
    out << ", ";
  }

  // member: ui_satel_lon
  {
    out << "ui_satel_lon: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_satel_lon, out);
    out << ", ";
  }

  // member: ui_satel_lat
  {
    out << "ui_satel_lat: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_satel_lat, out);
    out << ", ";
  }

  // member: ui_satel_alt
  {
    out << "ui_satel_alt: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_satel_alt, out);
    out << ", ";
  }

  // member: uc_satle_state
  {
    out << "uc_satle_state: ";
    rosidl_generator_traits::value_to_yaml(msg.uc_satle_state, out);
    out << ", ";
  }

  // member: ui_nav_lon
  {
    out << "ui_nav_lon: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_nav_lon, out);
    out << ", ";
  }

  // member: ui_nav_lat
  {
    out << "ui_nav_lat: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_nav_lat, out);
    out << ", ";
  }

  // member: ui_nav_alt
  {
    out << "ui_nav_alt: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_nav_alt, out);
    out << ", ";
  }

  // member: us_nav_yaw
  {
    out << "us_nav_yaw: ";
    rosidl_generator_traits::value_to_yaml(msg.us_nav_yaw, out);
    out << ", ";
  }

  // member: s_nav_pitch
  {
    out << "s_nav_pitch: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_pitch, out);
    out << ", ";
  }

  // member: s_nav_roll
  {
    out << "s_nav_roll: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_roll, out);
    out << ", ";
  }

  // member: s_nav_vx
  {
    out << "s_nav_vx: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_vx, out);
    out << ", ";
  }

  // member: s_nav_vy
  {
    out << "s_nav_vy: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_vy, out);
    out << ", ";
  }

  // member: s_nav_vz
  {
    out << "s_nav_vz: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_vz, out);
    out << ", ";
  }

  // member: s_nav_wx
  {
    out << "s_nav_wx: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_wx, out);
    out << ", ";
  }

  // member: s_nav_wy
  {
    out << "s_nav_wy: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_wy, out);
    out << ", ";
  }

  // member: s_nav_wz
  {
    out << "s_nav_wz: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_wz, out);
    out << ", ";
  }

  // member: ui_mileage
  {
    out << "ui_mileage: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_mileage, out);
    out << ", ";
  }

  // member: ul_satel_time
  {
    out << "ul_satel_time: ";
    rosidl_generator_traits::value_to_yaml(msg.ul_satel_time, out);
    out << ", ";
  }

  // member: ui_work_time
  {
    out << "ui_work_time: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_work_time, out);
    out << ", ";
  }

  // member: uc_work_state
  {
    out << "uc_work_state: ";
    rosidl_generator_traits::value_to_yaml(msg.uc_work_state, out);
    out << ", ";
  }

  // member: uc_nav_state
  {
    out << "uc_nav_state: ";
    rosidl_generator_traits::value_to_yaml(msg.uc_nav_state, out);
    out << ", ";
  }

  // member: reserve1
  {
    out << "reserve1: ";
    rosidl_generator_traits::value_to_yaml(msg.reserve1, out);
    out << ", ";
  }

  // member: reserve2
  {
    out << "reserve2: ";
    rosidl_generator_traits::value_to_yaml(msg.reserve2, out);
    out << ", ";
  }

  // member: us_check_sum
  {
    out << "us_check_sum: ";
    rosidl_generator_traits::value_to_yaml(msg.us_check_sum, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const Location & msg,
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

  // member: ui_satel_lon
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_satel_lon: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_satel_lon, out);
    out << "\n";
  }

  // member: ui_satel_lat
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_satel_lat: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_satel_lat, out);
    out << "\n";
  }

  // member: ui_satel_alt
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_satel_alt: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_satel_alt, out);
    out << "\n";
  }

  // member: uc_satle_state
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "uc_satle_state: ";
    rosidl_generator_traits::value_to_yaml(msg.uc_satle_state, out);
    out << "\n";
  }

  // member: ui_nav_lon
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_nav_lon: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_nav_lon, out);
    out << "\n";
  }

  // member: ui_nav_lat
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_nav_lat: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_nav_lat, out);
    out << "\n";
  }

  // member: ui_nav_alt
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_nav_alt: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_nav_alt, out);
    out << "\n";
  }

  // member: us_nav_yaw
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "us_nav_yaw: ";
    rosidl_generator_traits::value_to_yaml(msg.us_nav_yaw, out);
    out << "\n";
  }

  // member: s_nav_pitch
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_pitch: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_pitch, out);
    out << "\n";
  }

  // member: s_nav_roll
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_roll: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_roll, out);
    out << "\n";
  }

  // member: s_nav_vx
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_vx: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_vx, out);
    out << "\n";
  }

  // member: s_nav_vy
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_vy: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_vy, out);
    out << "\n";
  }

  // member: s_nav_vz
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_vz: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_vz, out);
    out << "\n";
  }

  // member: s_nav_wx
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_wx: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_wx, out);
    out << "\n";
  }

  // member: s_nav_wy
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_wy: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_wy, out);
    out << "\n";
  }

  // member: s_nav_wz
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_nav_wz: ";
    rosidl_generator_traits::value_to_yaml(msg.s_nav_wz, out);
    out << "\n";
  }

  // member: ui_mileage
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_mileage: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_mileage, out);
    out << "\n";
  }

  // member: ul_satel_time
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ul_satel_time: ";
    rosidl_generator_traits::value_to_yaml(msg.ul_satel_time, out);
    out << "\n";
  }

  // member: ui_work_time
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "ui_work_time: ";
    rosidl_generator_traits::value_to_yaml(msg.ui_work_time, out);
    out << "\n";
  }

  // member: uc_work_state
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "uc_work_state: ";
    rosidl_generator_traits::value_to_yaml(msg.uc_work_state, out);
    out << "\n";
  }

  // member: uc_nav_state
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "uc_nav_state: ";
    rosidl_generator_traits::value_to_yaml(msg.uc_nav_state, out);
    out << "\n";
  }

  // member: reserve1
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "reserve1: ";
    rosidl_generator_traits::value_to_yaml(msg.reserve1, out);
    out << "\n";
  }

  // member: reserve2
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "reserve2: ";
    rosidl_generator_traits::value_to_yaml(msg.reserve2, out);
    out << "\n";
  }

  // member: us_check_sum
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "us_check_sum: ";
    rosidl_generator_traits::value_to_yaml(msg.us_check_sum, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const Location & msg, bool use_flow_style = false)
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
  const common_unique_msgs::msg::Location & msg,
  std::ostream & out, size_t indentation = 0)
{
  common_unique_msgs::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use common_unique_msgs::msg::to_yaml() instead")]]
inline std::string to_yaml(const common_unique_msgs::msg::Location & msg)
{
  return common_unique_msgs::msg::to_yaml(msg);
}

template<>
inline const char * data_type<common_unique_msgs::msg::Location>()
{
  return "common_unique_msgs::msg::Location";
}

template<>
inline const char * name<common_unique_msgs::msg::Location>()
{
  return "common_unique_msgs/msg/Location";
}

template<>
struct has_fixed_size<common_unique_msgs::msg::Location>
  : std::integral_constant<bool, has_fixed_size<common_unique_msgs::msg::UniHeader>::value> {};

template<>
struct has_bounded_size<common_unique_msgs::msg::Location>
  : std::integral_constant<bool, has_bounded_size<common_unique_msgs::msg::UniHeader>::value> {};

template<>
struct is_message<common_unique_msgs::msg::Location>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__TRAITS_HPP_
