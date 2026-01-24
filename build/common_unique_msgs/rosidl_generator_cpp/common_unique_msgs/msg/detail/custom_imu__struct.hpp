// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from common_unique_msgs:msg/CustomIMU.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__STRUCT_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__STRUCT_HPP_

#include <algorithm>
#include <array>
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

#include "rosidl_runtime_cpp/bounded_vector.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


// Include directives for member types
// Member 'header'
#include "std_msgs/msg/detail/header__struct.hpp"

#ifndef _WIN32
# define DEPRECATED__common_unique_msgs__msg__CustomIMU __attribute__((deprecated))
#else
# define DEPRECATED__common_unique_msgs__msg__CustomIMU __declspec(deprecated)
#endif

namespace common_unique_msgs
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct CustomIMU_
{
  using Type = CustomIMU_<ContainerAllocator>;

  explicit CustomIMU_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->gps_week = 0;
      this->gps_time = 0.0;
      this->gyro_x = 0.0;
      this->gyro_y = 0.0;
      this->gyro_z = 0.0;
      this->acc_x = 0.0;
      this->acc_y = 0.0;
      this->acc_z = 0.0;
      this->temperature = 0.0;
      this->checksum = "";
    }
  }

  explicit CustomIMU_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_alloc, _init),
    checksum(_alloc)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->gps_week = 0;
      this->gps_time = 0.0;
      this->gyro_x = 0.0;
      this->gyro_y = 0.0;
      this->gyro_z = 0.0;
      this->acc_x = 0.0;
      this->acc_y = 0.0;
      this->acc_z = 0.0;
      this->temperature = 0.0;
      this->checksum = "";
    }
  }

  // field types and members
  using _header_type =
    std_msgs::msg::Header_<ContainerAllocator>;
  _header_type header;
  using _gps_week_type =
    uint16_t;
  _gps_week_type gps_week;
  using _gps_time_type =
    double;
  _gps_time_type gps_time;
  using _gyro_x_type =
    double;
  _gyro_x_type gyro_x;
  using _gyro_y_type =
    double;
  _gyro_y_type gyro_y;
  using _gyro_z_type =
    double;
  _gyro_z_type gyro_z;
  using _acc_x_type =
    double;
  _acc_x_type acc_x;
  using _acc_y_type =
    double;
  _acc_y_type acc_y;
  using _acc_z_type =
    double;
  _acc_z_type acc_z;
  using _temperature_type =
    double;
  _temperature_type temperature;
  using _checksum_type =
    std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>;
  _checksum_type checksum;

  // setters for named parameter idiom
  Type & set__header(
    const std_msgs::msg::Header_<ContainerAllocator> & _arg)
  {
    this->header = _arg;
    return *this;
  }
  Type & set__gps_week(
    const uint16_t & _arg)
  {
    this->gps_week = _arg;
    return *this;
  }
  Type & set__gps_time(
    const double & _arg)
  {
    this->gps_time = _arg;
    return *this;
  }
  Type & set__gyro_x(
    const double & _arg)
  {
    this->gyro_x = _arg;
    return *this;
  }
  Type & set__gyro_y(
    const double & _arg)
  {
    this->gyro_y = _arg;
    return *this;
  }
  Type & set__gyro_z(
    const double & _arg)
  {
    this->gyro_z = _arg;
    return *this;
  }
  Type & set__acc_x(
    const double & _arg)
  {
    this->acc_x = _arg;
    return *this;
  }
  Type & set__acc_y(
    const double & _arg)
  {
    this->acc_y = _arg;
    return *this;
  }
  Type & set__acc_z(
    const double & _arg)
  {
    this->acc_z = _arg;
    return *this;
  }
  Type & set__temperature(
    const double & _arg)
  {
    this->temperature = _arg;
    return *this;
  }
  Type & set__checksum(
    const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> & _arg)
  {
    this->checksum = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    common_unique_msgs::msg::CustomIMU_<ContainerAllocator> *;
  using ConstRawPtr =
    const common_unique_msgs::msg::CustomIMU_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::CustomIMU_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::CustomIMU_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__common_unique_msgs__msg__CustomIMU
    std::shared_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__common_unique_msgs__msg__CustomIMU
    std::shared_ptr<common_unique_msgs::msg::CustomIMU_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const CustomIMU_ & other) const
  {
    if (this->header != other.header) {
      return false;
    }
    if (this->gps_week != other.gps_week) {
      return false;
    }
    if (this->gps_time != other.gps_time) {
      return false;
    }
    if (this->gyro_x != other.gyro_x) {
      return false;
    }
    if (this->gyro_y != other.gyro_y) {
      return false;
    }
    if (this->gyro_z != other.gyro_z) {
      return false;
    }
    if (this->acc_x != other.acc_x) {
      return false;
    }
    if (this->acc_y != other.acc_y) {
      return false;
    }
    if (this->acc_z != other.acc_z) {
      return false;
    }
    if (this->temperature != other.temperature) {
      return false;
    }
    if (this->checksum != other.checksum) {
      return false;
    }
    return true;
  }
  bool operator!=(const CustomIMU_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct CustomIMU_

// alias to use template instance with default allocator
using CustomIMU =
  common_unique_msgs::msg::CustomIMU_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__STRUCT_HPP_
