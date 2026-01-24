// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__BUILDER_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "common_unique_msgs/msg/detail/location_initial__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace common_unique_msgs
{

namespace msg
{

namespace builder
{

class Init_LocationInitial_us_check_sum
{
public:
  explicit Init_LocationInitial_us_check_sum(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  ::common_unique_msgs::msg::LocationInitial us_check_sum(::common_unique_msgs::msg::LocationInitial::_us_check_sum_type arg)
  {
    msg_.us_check_sum = std::move(arg);
    return std::move(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_waz
{
public:
  explicit Init_LocationInitial_f_ins_waz(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_us_check_sum f_ins_waz(::common_unique_msgs::msg::LocationInitial::_f_ins_waz_type arg)
  {
    msg_.f_ins_waz = std::move(arg);
    return Init_LocationInitial_us_check_sum(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_way
{
public:
  explicit Init_LocationInitial_f_ins_way(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_waz f_ins_way(::common_unique_msgs::msg::LocationInitial::_f_ins_way_type arg)
  {
    msg_.f_ins_way = std::move(arg);
    return Init_LocationInitial_f_ins_waz(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_wax
{
public:
  explicit Init_LocationInitial_f_ins_wax(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_way f_ins_wax(::common_unique_msgs::msg::LocationInitial::_f_ins_wax_type arg)
  {
    msg_.f_ins_wax = std::move(arg);
    return Init_LocationInitial_f_ins_way(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_wz
{
public:
  explicit Init_LocationInitial_f_ins_wz(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_wax f_ins_wz(::common_unique_msgs::msg::LocationInitial::_f_ins_wz_type arg)
  {
    msg_.f_ins_wz = std::move(arg);
    return Init_LocationInitial_f_ins_wax(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_wy
{
public:
  explicit Init_LocationInitial_f_ins_wy(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_wz f_ins_wy(::common_unique_msgs::msg::LocationInitial::_f_ins_wy_type arg)
  {
    msg_.f_ins_wy = std::move(arg);
    return Init_LocationInitial_f_ins_wz(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_wx
{
public:
  explicit Init_LocationInitial_f_ins_wx(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_wy f_ins_wx(::common_unique_msgs::msg::LocationInitial::_f_ins_wx_type arg)
  {
    msg_.f_ins_wx = std::move(arg);
    return Init_LocationInitial_f_ins_wy(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_anglez
{
public:
  explicit Init_LocationInitial_f_ins_anglez(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_wx f_ins_anglez(::common_unique_msgs::msg::LocationInitial::_f_ins_anglez_type arg)
  {
    msg_.f_ins_anglez = std::move(arg);
    return Init_LocationInitial_f_ins_wx(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_angley
{
public:
  explicit Init_LocationInitial_f_ins_angley(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_anglez f_ins_angley(::common_unique_msgs::msg::LocationInitial::_f_ins_angley_type arg)
  {
    msg_.f_ins_angley = std::move(arg);
    return Init_LocationInitial_f_ins_anglez(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_f_ins_anglex
{
public:
  explicit Init_LocationInitial_f_ins_anglex(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_angley f_ins_anglex(::common_unique_msgs::msg::LocationInitial::_f_ins_anglex_type arg)
  {
    msg_.f_ins_anglex = std::move(arg);
    return Init_LocationInitial_f_ins_angley(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_i_ins_az
{
public:
  explicit Init_LocationInitial_i_ins_az(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_f_ins_anglex i_ins_az(::common_unique_msgs::msg::LocationInitial::_i_ins_az_type arg)
  {
    msg_.i_ins_az = std::move(arg);
    return Init_LocationInitial_f_ins_anglex(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_i_ins_ay
{
public:
  explicit Init_LocationInitial_i_ins_ay(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_i_ins_az i_ins_ay(::common_unique_msgs::msg::LocationInitial::_i_ins_ay_type arg)
  {
    msg_.i_ins_ay = std::move(arg);
    return Init_LocationInitial_i_ins_az(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_i_ins_ax
{
public:
  explicit Init_LocationInitial_i_ins_ax(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_i_ins_ay i_ins_ax(::common_unique_msgs::msg::LocationInitial::_i_ins_ax_type arg)
  {
    msg_.i_ins_ax = std::move(arg);
    return Init_LocationInitial_i_ins_ay(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_s_ins_vz
{
public:
  explicit Init_LocationInitial_s_ins_vz(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_i_ins_ax s_ins_vz(::common_unique_msgs::msg::LocationInitial::_s_ins_vz_type arg)
  {
    msg_.s_ins_vz = std::move(arg);
    return Init_LocationInitial_i_ins_ax(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_s_ins_vy
{
public:
  explicit Init_LocationInitial_s_ins_vy(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_s_ins_vz s_ins_vy(::common_unique_msgs::msg::LocationInitial::_s_ins_vy_type arg)
  {
    msg_.s_ins_vy = std::move(arg);
    return Init_LocationInitial_s_ins_vz(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_s_ins_vx
{
public:
  explicit Init_LocationInitial_s_ins_vx(::common_unique_msgs::msg::LocationInitial & msg)
  : msg_(msg)
  {}
  Init_LocationInitial_s_ins_vy s_ins_vx(::common_unique_msgs::msg::LocationInitial::_s_ins_vx_type arg)
  {
    msg_.s_ins_vx = std::move(arg);
    return Init_LocationInitial_s_ins_vy(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

class Init_LocationInitial_header
{
public:
  Init_LocationInitial_header()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_LocationInitial_s_ins_vx header(::common_unique_msgs::msg::LocationInitial::_header_type arg)
  {
    msg_.header = std::move(arg);
    return Init_LocationInitial_s_ins_vx(msg_);
  }

private:
  ::common_unique_msgs::msg::LocationInitial msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::common_unique_msgs::msg::LocationInitial>()
{
  return common_unique_msgs::msg::builder::Init_LocationInitial_header();
}

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__BUILDER_HPP_
