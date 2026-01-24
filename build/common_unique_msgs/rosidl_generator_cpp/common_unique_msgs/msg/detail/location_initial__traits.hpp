// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__TRAITS_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "common_unique_msgs/msg/detail/location_initial__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

// Include directives for member types
// Member 'header'
#include "common_unique_msgs/msg/detail/uni_header__traits.hpp"

namespace common_unique_msgs
{

namespace msg
{

inline void to_flow_style_yaml(
  const LocationInitial & msg,
  std::ostream & out)
{
  out << "{";
  // member: header
  {
    out << "header: ";
    to_flow_style_yaml(msg.header, out);
    out << ", ";
  }

  // member: s_ins_vx
  {
    out << "s_ins_vx: ";
    rosidl_generator_traits::value_to_yaml(msg.s_ins_vx, out);
    out << ", ";
  }

  // member: s_ins_vy
  {
    out << "s_ins_vy: ";
    rosidl_generator_traits::value_to_yaml(msg.s_ins_vy, out);
    out << ", ";
  }

  // member: s_ins_vz
  {
    out << "s_ins_vz: ";
    rosidl_generator_traits::value_to_yaml(msg.s_ins_vz, out);
    out << ", ";
  }

  // member: i_ins_ax
  {
    out << "i_ins_ax: ";
    rosidl_generator_traits::value_to_yaml(msg.i_ins_ax, out);
    out << ", ";
  }

  // member: i_ins_ay
  {
    out << "i_ins_ay: ";
    rosidl_generator_traits::value_to_yaml(msg.i_ins_ay, out);
    out << ", ";
  }

  // member: i_ins_az
  {
    out << "i_ins_az: ";
    rosidl_generator_traits::value_to_yaml(msg.i_ins_az, out);
    out << ", ";
  }

  // member: f_ins_anglex
  {
    out << "f_ins_anglex: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_anglex, out);
    out << ", ";
  }

  // member: f_ins_angley
  {
    out << "f_ins_angley: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_angley, out);
    out << ", ";
  }

  // member: f_ins_anglez
  {
    out << "f_ins_anglez: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_anglez, out);
    out << ", ";
  }

  // member: f_ins_wx
  {
    out << "f_ins_wx: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wx, out);
    out << ", ";
  }

  // member: f_ins_wy
  {
    out << "f_ins_wy: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wy, out);
    out << ", ";
  }

  // member: f_ins_wz
  {
    out << "f_ins_wz: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wz, out);
    out << ", ";
  }

  // member: f_ins_wax
  {
    out << "f_ins_wax: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wax, out);
    out << ", ";
  }

  // member: f_ins_way
  {
    out << "f_ins_way: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_way, out);
    out << ", ";
  }

  // member: f_ins_waz
  {
    out << "f_ins_waz: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_waz, out);
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
  const LocationInitial & msg,
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

  // member: s_ins_vx
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_ins_vx: ";
    rosidl_generator_traits::value_to_yaml(msg.s_ins_vx, out);
    out << "\n";
  }

  // member: s_ins_vy
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_ins_vy: ";
    rosidl_generator_traits::value_to_yaml(msg.s_ins_vy, out);
    out << "\n";
  }

  // member: s_ins_vz
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "s_ins_vz: ";
    rosidl_generator_traits::value_to_yaml(msg.s_ins_vz, out);
    out << "\n";
  }

  // member: i_ins_ax
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "i_ins_ax: ";
    rosidl_generator_traits::value_to_yaml(msg.i_ins_ax, out);
    out << "\n";
  }

  // member: i_ins_ay
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "i_ins_ay: ";
    rosidl_generator_traits::value_to_yaml(msg.i_ins_ay, out);
    out << "\n";
  }

  // member: i_ins_az
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "i_ins_az: ";
    rosidl_generator_traits::value_to_yaml(msg.i_ins_az, out);
    out << "\n";
  }

  // member: f_ins_anglex
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_anglex: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_anglex, out);
    out << "\n";
  }

  // member: f_ins_angley
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_angley: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_angley, out);
    out << "\n";
  }

  // member: f_ins_anglez
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_anglez: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_anglez, out);
    out << "\n";
  }

  // member: f_ins_wx
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_wx: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wx, out);
    out << "\n";
  }

  // member: f_ins_wy
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_wy: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wy, out);
    out << "\n";
  }

  // member: f_ins_wz
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_wz: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wz, out);
    out << "\n";
  }

  // member: f_ins_wax
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_wax: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_wax, out);
    out << "\n";
  }

  // member: f_ins_way
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_way: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_way, out);
    out << "\n";
  }

  // member: f_ins_waz
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "f_ins_waz: ";
    rosidl_generator_traits::value_to_yaml(msg.f_ins_waz, out);
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

inline std::string to_yaml(const LocationInitial & msg, bool use_flow_style = false)
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
  const common_unique_msgs::msg::LocationInitial & msg,
  std::ostream & out, size_t indentation = 0)
{
  common_unique_msgs::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use common_unique_msgs::msg::to_yaml() instead")]]
inline std::string to_yaml(const common_unique_msgs::msg::LocationInitial & msg)
{
  return common_unique_msgs::msg::to_yaml(msg);
}

template<>
inline const char * data_type<common_unique_msgs::msg::LocationInitial>()
{
  return "common_unique_msgs::msg::LocationInitial";
}

template<>
inline const char * name<common_unique_msgs::msg::LocationInitial>()
{
  return "common_unique_msgs/msg/LocationInitial";
}

template<>
struct has_fixed_size<common_unique_msgs::msg::LocationInitial>
  : std::integral_constant<bool, has_fixed_size<common_unique_msgs::msg::UniHeader>::value> {};

template<>
struct has_bounded_size<common_unique_msgs::msg::LocationInitial>
  : std::integral_constant<bool, has_bounded_size<common_unique_msgs::msg::UniHeader>::value> {};

template<>
struct is_message<common_unique_msgs::msg::LocationInitial>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__TRAITS_HPP_
