// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from common_unique_msgs:msg/CustomGNSS.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__BUILDER_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "common_unique_msgs/msg/detail/custom_gnss__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace common_unique_msgs
{

namespace msg
{

namespace builder
{

class Init_CustomGNSS_checksum
{
public:
  explicit Init_CustomGNSS_checksum(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  ::common_unique_msgs::msg::CustomGNSS checksum(::common_unique_msgs::msg::CustomGNSS::_checksum_type arg)
  {
    msg_.checksum = std::move(arg);
    return std::move(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_status
{
public:
  explicit Init_CustomGNSS_status(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_checksum status(::common_unique_msgs::msg::CustomGNSS::_status_type arg)
  {
    msg_.status = std::move(arg);
    return Init_CustomGNSS_checksum(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_nsv2
{
public:
  explicit Init_CustomGNSS_nsv2(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_status nsv2(::common_unique_msgs::msg::CustomGNSS::_nsv2_type arg)
  {
    msg_.nsv2 = std::move(arg);
    return Init_CustomGNSS_status(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_nsv1
{
public:
  explicit Init_CustomGNSS_nsv1(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_nsv2 nsv1(::common_unique_msgs::msg::CustomGNSS::_nsv1_type arg)
  {
    msg_.nsv1 = std::move(arg);
    return Init_CustomGNSS_nsv2(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_baseline
{
public:
  explicit Init_CustomGNSS_baseline(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_nsv1 baseline(::common_unique_msgs::msg::CustomGNSS::_baseline_type arg)
  {
    msg_.baseline = std::move(arg);
    return Init_CustomGNSS_nsv1(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_vu
{
public:
  explicit Init_CustomGNSS_vu(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_baseline vu(::common_unique_msgs::msg::CustomGNSS::_vu_type arg)
  {
    msg_.vu = std::move(arg);
    return Init_CustomGNSS_baseline(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_vn
{
public:
  explicit Init_CustomGNSS_vn(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_vu vn(::common_unique_msgs::msg::CustomGNSS::_vn_type arg)
  {
    msg_.vn = std::move(arg);
    return Init_CustomGNSS_vu(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_ve
{
public:
  explicit Init_CustomGNSS_ve(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_vn ve(::common_unique_msgs::msg::CustomGNSS::_ve_type arg)
  {
    msg_.ve = std::move(arg);
    return Init_CustomGNSS_vn(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_altitude
{
public:
  explicit Init_CustomGNSS_altitude(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_ve altitude(::common_unique_msgs::msg::CustomGNSS::_altitude_type arg)
  {
    msg_.altitude = std::move(arg);
    return Init_CustomGNSS_ve(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_longitude
{
public:
  explicit Init_CustomGNSS_longitude(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_altitude longitude(::common_unique_msgs::msg::CustomGNSS::_longitude_type arg)
  {
    msg_.longitude = std::move(arg);
    return Init_CustomGNSS_altitude(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_latitude
{
public:
  explicit Init_CustomGNSS_latitude(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_longitude latitude(::common_unique_msgs::msg::CustomGNSS::_latitude_type arg)
  {
    msg_.latitude = std::move(arg);
    return Init_CustomGNSS_longitude(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_roll
{
public:
  explicit Init_CustomGNSS_roll(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_latitude roll(::common_unique_msgs::msg::CustomGNSS::_roll_type arg)
  {
    msg_.roll = std::move(arg);
    return Init_CustomGNSS_latitude(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_pitch
{
public:
  explicit Init_CustomGNSS_pitch(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_roll pitch(::common_unique_msgs::msg::CustomGNSS::_pitch_type arg)
  {
    msg_.pitch = std::move(arg);
    return Init_CustomGNSS_roll(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_heading
{
public:
  explicit Init_CustomGNSS_heading(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_pitch heading(::common_unique_msgs::msg::CustomGNSS::_heading_type arg)
  {
    msg_.heading = std::move(arg);
    return Init_CustomGNSS_pitch(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_gps_time
{
public:
  explicit Init_CustomGNSS_gps_time(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_heading gps_time(::common_unique_msgs::msg::CustomGNSS::_gps_time_type arg)
  {
    msg_.gps_time = std::move(arg);
    return Init_CustomGNSS_heading(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_gps_week
{
public:
  explicit Init_CustomGNSS_gps_week(::common_unique_msgs::msg::CustomGNSS & msg)
  : msg_(msg)
  {}
  Init_CustomGNSS_gps_time gps_week(::common_unique_msgs::msg::CustomGNSS::_gps_week_type arg)
  {
    msg_.gps_week = std::move(arg);
    return Init_CustomGNSS_gps_time(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

class Init_CustomGNSS_header
{
public:
  Init_CustomGNSS_header()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_CustomGNSS_gps_week header(::common_unique_msgs::msg::CustomGNSS::_header_type arg)
  {
    msg_.header = std::move(arg);
    return Init_CustomGNSS_gps_week(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomGNSS msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::common_unique_msgs::msg::CustomGNSS>()
{
  return common_unique_msgs::msg::builder::Init_CustomGNSS_header();
}

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__BUILDER_HPP_
