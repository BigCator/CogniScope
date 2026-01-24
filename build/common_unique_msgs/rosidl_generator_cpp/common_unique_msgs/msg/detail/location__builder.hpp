// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__BUILDER_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "common_unique_msgs/msg/detail/location__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace common_unique_msgs
{

namespace msg
{

namespace builder
{

class Init_Location_us_check_sum
{
public:
  explicit Init_Location_us_check_sum(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  ::common_unique_msgs::msg::Location us_check_sum(::common_unique_msgs::msg::Location::_us_check_sum_type arg)
  {
    msg_.us_check_sum = std::move(arg);
    return std::move(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_reserve2
{
public:
  explicit Init_Location_reserve2(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_us_check_sum reserve2(::common_unique_msgs::msg::Location::_reserve2_type arg)
  {
    msg_.reserve2 = std::move(arg);
    return Init_Location_us_check_sum(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_reserve1
{
public:
  explicit Init_Location_reserve1(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_reserve2 reserve1(::common_unique_msgs::msg::Location::_reserve1_type arg)
  {
    msg_.reserve1 = std::move(arg);
    return Init_Location_reserve2(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_uc_nav_state
{
public:
  explicit Init_Location_uc_nav_state(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_reserve1 uc_nav_state(::common_unique_msgs::msg::Location::_uc_nav_state_type arg)
  {
    msg_.uc_nav_state = std::move(arg);
    return Init_Location_reserve1(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_uc_work_state
{
public:
  explicit Init_Location_uc_work_state(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_uc_nav_state uc_work_state(::common_unique_msgs::msg::Location::_uc_work_state_type arg)
  {
    msg_.uc_work_state = std::move(arg);
    return Init_Location_uc_nav_state(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_work_time
{
public:
  explicit Init_Location_ui_work_time(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_uc_work_state ui_work_time(::common_unique_msgs::msg::Location::_ui_work_time_type arg)
  {
    msg_.ui_work_time = std::move(arg);
    return Init_Location_uc_work_state(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ul_satel_time
{
public:
  explicit Init_Location_ul_satel_time(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ui_work_time ul_satel_time(::common_unique_msgs::msg::Location::_ul_satel_time_type arg)
  {
    msg_.ul_satel_time = std::move(arg);
    return Init_Location_ui_work_time(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_mileage
{
public:
  explicit Init_Location_ui_mileage(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ul_satel_time ui_mileage(::common_unique_msgs::msg::Location::_ui_mileage_type arg)
  {
    msg_.ui_mileage = std::move(arg);
    return Init_Location_ul_satel_time(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_wz
{
public:
  explicit Init_Location_s_nav_wz(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ui_mileage s_nav_wz(::common_unique_msgs::msg::Location::_s_nav_wz_type arg)
  {
    msg_.s_nav_wz = std::move(arg);
    return Init_Location_ui_mileage(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_wy
{
public:
  explicit Init_Location_s_nav_wy(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_wz s_nav_wy(::common_unique_msgs::msg::Location::_s_nav_wy_type arg)
  {
    msg_.s_nav_wy = std::move(arg);
    return Init_Location_s_nav_wz(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_wx
{
public:
  explicit Init_Location_s_nav_wx(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_wy s_nav_wx(::common_unique_msgs::msg::Location::_s_nav_wx_type arg)
  {
    msg_.s_nav_wx = std::move(arg);
    return Init_Location_s_nav_wy(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_vz
{
public:
  explicit Init_Location_s_nav_vz(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_wx s_nav_vz(::common_unique_msgs::msg::Location::_s_nav_vz_type arg)
  {
    msg_.s_nav_vz = std::move(arg);
    return Init_Location_s_nav_wx(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_vy
{
public:
  explicit Init_Location_s_nav_vy(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_vz s_nav_vy(::common_unique_msgs::msg::Location::_s_nav_vy_type arg)
  {
    msg_.s_nav_vy = std::move(arg);
    return Init_Location_s_nav_vz(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_vx
{
public:
  explicit Init_Location_s_nav_vx(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_vy s_nav_vx(::common_unique_msgs::msg::Location::_s_nav_vx_type arg)
  {
    msg_.s_nav_vx = std::move(arg);
    return Init_Location_s_nav_vy(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_roll
{
public:
  explicit Init_Location_s_nav_roll(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_vx s_nav_roll(::common_unique_msgs::msg::Location::_s_nav_roll_type arg)
  {
    msg_.s_nav_roll = std::move(arg);
    return Init_Location_s_nav_vx(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_s_nav_pitch
{
public:
  explicit Init_Location_s_nav_pitch(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_roll s_nav_pitch(::common_unique_msgs::msg::Location::_s_nav_pitch_type arg)
  {
    msg_.s_nav_pitch = std::move(arg);
    return Init_Location_s_nav_roll(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_us_nav_yaw
{
public:
  explicit Init_Location_us_nav_yaw(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_s_nav_pitch us_nav_yaw(::common_unique_msgs::msg::Location::_us_nav_yaw_type arg)
  {
    msg_.us_nav_yaw = std::move(arg);
    return Init_Location_s_nav_pitch(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_nav_alt
{
public:
  explicit Init_Location_ui_nav_alt(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_us_nav_yaw ui_nav_alt(::common_unique_msgs::msg::Location::_ui_nav_alt_type arg)
  {
    msg_.ui_nav_alt = std::move(arg);
    return Init_Location_us_nav_yaw(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_nav_lat
{
public:
  explicit Init_Location_ui_nav_lat(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ui_nav_alt ui_nav_lat(::common_unique_msgs::msg::Location::_ui_nav_lat_type arg)
  {
    msg_.ui_nav_lat = std::move(arg);
    return Init_Location_ui_nav_alt(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_nav_lon
{
public:
  explicit Init_Location_ui_nav_lon(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ui_nav_lat ui_nav_lon(::common_unique_msgs::msg::Location::_ui_nav_lon_type arg)
  {
    msg_.ui_nav_lon = std::move(arg);
    return Init_Location_ui_nav_lat(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_uc_satle_state
{
public:
  explicit Init_Location_uc_satle_state(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ui_nav_lon uc_satle_state(::common_unique_msgs::msg::Location::_uc_satle_state_type arg)
  {
    msg_.uc_satle_state = std::move(arg);
    return Init_Location_ui_nav_lon(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_satel_alt
{
public:
  explicit Init_Location_ui_satel_alt(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_uc_satle_state ui_satel_alt(::common_unique_msgs::msg::Location::_ui_satel_alt_type arg)
  {
    msg_.ui_satel_alt = std::move(arg);
    return Init_Location_uc_satle_state(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_satel_lat
{
public:
  explicit Init_Location_ui_satel_lat(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ui_satel_alt ui_satel_lat(::common_unique_msgs::msg::Location::_ui_satel_lat_type arg)
  {
    msg_.ui_satel_lat = std::move(arg);
    return Init_Location_ui_satel_alt(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_ui_satel_lon
{
public:
  explicit Init_Location_ui_satel_lon(::common_unique_msgs::msg::Location & msg)
  : msg_(msg)
  {}
  Init_Location_ui_satel_lat ui_satel_lon(::common_unique_msgs::msg::Location::_ui_satel_lon_type arg)
  {
    msg_.ui_satel_lon = std::move(arg);
    return Init_Location_ui_satel_lat(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

class Init_Location_header
{
public:
  Init_Location_header()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_Location_ui_satel_lon header(::common_unique_msgs::msg::Location::_header_type arg)
  {
    msg_.header = std::move(arg);
    return Init_Location_ui_satel_lon(msg_);
  }

private:
  ::common_unique_msgs::msg::Location msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::common_unique_msgs::msg::Location>()
{
  return common_unique_msgs::msg::builder::Init_Location_header();
}

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__BUILDER_HPP_
