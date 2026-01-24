// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from common_unique_msgs:msg/CustomIMU.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__BUILDER_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "common_unique_msgs/msg/detail/custom_imu__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace common_unique_msgs
{

namespace msg
{

namespace builder
{

class Init_CustomIMU_checksum
{
public:
  explicit Init_CustomIMU_checksum(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  ::common_unique_msgs::msg::CustomIMU checksum(::common_unique_msgs::msg::CustomIMU::_checksum_type arg)
  {
    msg_.checksum = std::move(arg);
    return std::move(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_temperature
{
public:
  explicit Init_CustomIMU_temperature(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_checksum temperature(::common_unique_msgs::msg::CustomIMU::_temperature_type arg)
  {
    msg_.temperature = std::move(arg);
    return Init_CustomIMU_checksum(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_acc_z
{
public:
  explicit Init_CustomIMU_acc_z(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_temperature acc_z(::common_unique_msgs::msg::CustomIMU::_acc_z_type arg)
  {
    msg_.acc_z = std::move(arg);
    return Init_CustomIMU_temperature(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_acc_y
{
public:
  explicit Init_CustomIMU_acc_y(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_acc_z acc_y(::common_unique_msgs::msg::CustomIMU::_acc_y_type arg)
  {
    msg_.acc_y = std::move(arg);
    return Init_CustomIMU_acc_z(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_acc_x
{
public:
  explicit Init_CustomIMU_acc_x(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_acc_y acc_x(::common_unique_msgs::msg::CustomIMU::_acc_x_type arg)
  {
    msg_.acc_x = std::move(arg);
    return Init_CustomIMU_acc_y(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_gyro_z
{
public:
  explicit Init_CustomIMU_gyro_z(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_acc_x gyro_z(::common_unique_msgs::msg::CustomIMU::_gyro_z_type arg)
  {
    msg_.gyro_z = std::move(arg);
    return Init_CustomIMU_acc_x(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_gyro_y
{
public:
  explicit Init_CustomIMU_gyro_y(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_gyro_z gyro_y(::common_unique_msgs::msg::CustomIMU::_gyro_y_type arg)
  {
    msg_.gyro_y = std::move(arg);
    return Init_CustomIMU_gyro_z(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_gyro_x
{
public:
  explicit Init_CustomIMU_gyro_x(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_gyro_y gyro_x(::common_unique_msgs::msg::CustomIMU::_gyro_x_type arg)
  {
    msg_.gyro_x = std::move(arg);
    return Init_CustomIMU_gyro_y(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_gps_time
{
public:
  explicit Init_CustomIMU_gps_time(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_gyro_x gps_time(::common_unique_msgs::msg::CustomIMU::_gps_time_type arg)
  {
    msg_.gps_time = std::move(arg);
    return Init_CustomIMU_gyro_x(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_gps_week
{
public:
  explicit Init_CustomIMU_gps_week(::common_unique_msgs::msg::CustomIMU & msg)
  : msg_(msg)
  {}
  Init_CustomIMU_gps_time gps_week(::common_unique_msgs::msg::CustomIMU::_gps_week_type arg)
  {
    msg_.gps_week = std::move(arg);
    return Init_CustomIMU_gps_time(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

class Init_CustomIMU_header
{
public:
  Init_CustomIMU_header()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_CustomIMU_gps_week header(::common_unique_msgs::msg::CustomIMU::_header_type arg)
  {
    msg_.header = std::move(arg);
    return Init_CustomIMU_gps_week(msg_);
  }

private:
  ::common_unique_msgs::msg::CustomIMU msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::common_unique_msgs::msg::CustomIMU>()
{
  return common_unique_msgs::msg::builder::Init_CustomIMU_header();
}

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__BUILDER_HPP_
