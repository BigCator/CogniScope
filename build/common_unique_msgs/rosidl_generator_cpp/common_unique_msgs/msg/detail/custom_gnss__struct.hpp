// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from common_unique_msgs:msg/CustomGNSS.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__STRUCT_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__STRUCT_HPP_

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
# define DEPRECATED__common_unique_msgs__msg__CustomGNSS __attribute__((deprecated))
#else
# define DEPRECATED__common_unique_msgs__msg__CustomGNSS __declspec(deprecated)
#endif

namespace common_unique_msgs
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct CustomGNSS_
{
  using Type = CustomGNSS_<ContainerAllocator>;

  explicit CustomGNSS_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->gps_week = 0;
      this->gps_time = 0.0;
      this->heading = 0.0;
      this->pitch = 0.0;
      this->roll = 0.0;
      this->latitude = 0.0;
      this->longitude = 0.0;
      this->altitude = 0.0;
      this->ve = 0.0;
      this->vn = 0.0;
      this->vu = 0.0;
      this->baseline = 0.0;
      this->nsv1 = 0;
      this->nsv2 = 0;
      this->status = 0;
      this->checksum = "";
    }
  }

  explicit CustomGNSS_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_alloc, _init),
    checksum(_alloc)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->gps_week = 0;
      this->gps_time = 0.0;
      this->heading = 0.0;
      this->pitch = 0.0;
      this->roll = 0.0;
      this->latitude = 0.0;
      this->longitude = 0.0;
      this->altitude = 0.0;
      this->ve = 0.0;
      this->vn = 0.0;
      this->vu = 0.0;
      this->baseline = 0.0;
      this->nsv1 = 0;
      this->nsv2 = 0;
      this->status = 0;
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
  using _heading_type =
    double;
  _heading_type heading;
  using _pitch_type =
    double;
  _pitch_type pitch;
  using _roll_type =
    double;
  _roll_type roll;
  using _latitude_type =
    double;
  _latitude_type latitude;
  using _longitude_type =
    double;
  _longitude_type longitude;
  using _altitude_type =
    double;
  _altitude_type altitude;
  using _ve_type =
    double;
  _ve_type ve;
  using _vn_type =
    double;
  _vn_type vn;
  using _vu_type =
    double;
  _vu_type vu;
  using _baseline_type =
    double;
  _baseline_type baseline;
  using _nsv1_type =
    uint8_t;
  _nsv1_type nsv1;
  using _nsv2_type =
    uint8_t;
  _nsv2_type nsv2;
  using _status_type =
    uint16_t;
  _status_type status;
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
  Type & set__heading(
    const double & _arg)
  {
    this->heading = _arg;
    return *this;
  }
  Type & set__pitch(
    const double & _arg)
  {
    this->pitch = _arg;
    return *this;
  }
  Type & set__roll(
    const double & _arg)
  {
    this->roll = _arg;
    return *this;
  }
  Type & set__latitude(
    const double & _arg)
  {
    this->latitude = _arg;
    return *this;
  }
  Type & set__longitude(
    const double & _arg)
  {
    this->longitude = _arg;
    return *this;
  }
  Type & set__altitude(
    const double & _arg)
  {
    this->altitude = _arg;
    return *this;
  }
  Type & set__ve(
    const double & _arg)
  {
    this->ve = _arg;
    return *this;
  }
  Type & set__vn(
    const double & _arg)
  {
    this->vn = _arg;
    return *this;
  }
  Type & set__vu(
    const double & _arg)
  {
    this->vu = _arg;
    return *this;
  }
  Type & set__baseline(
    const double & _arg)
  {
    this->baseline = _arg;
    return *this;
  }
  Type & set__nsv1(
    const uint8_t & _arg)
  {
    this->nsv1 = _arg;
    return *this;
  }
  Type & set__nsv2(
    const uint8_t & _arg)
  {
    this->nsv2 = _arg;
    return *this;
  }
  Type & set__status(
    const uint16_t & _arg)
  {
    this->status = _arg;
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
    common_unique_msgs::msg::CustomGNSS_<ContainerAllocator> *;
  using ConstRawPtr =
    const common_unique_msgs::msg::CustomGNSS_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::CustomGNSS_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::CustomGNSS_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__common_unique_msgs__msg__CustomGNSS
    std::shared_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__common_unique_msgs__msg__CustomGNSS
    std::shared_ptr<common_unique_msgs::msg::CustomGNSS_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const CustomGNSS_ & other) const
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
    if (this->heading != other.heading) {
      return false;
    }
    if (this->pitch != other.pitch) {
      return false;
    }
    if (this->roll != other.roll) {
      return false;
    }
    if (this->latitude != other.latitude) {
      return false;
    }
    if (this->longitude != other.longitude) {
      return false;
    }
    if (this->altitude != other.altitude) {
      return false;
    }
    if (this->ve != other.ve) {
      return false;
    }
    if (this->vn != other.vn) {
      return false;
    }
    if (this->vu != other.vu) {
      return false;
    }
    if (this->baseline != other.baseline) {
      return false;
    }
    if (this->nsv1 != other.nsv1) {
      return false;
    }
    if (this->nsv2 != other.nsv2) {
      return false;
    }
    if (this->status != other.status) {
      return false;
    }
    if (this->checksum != other.checksum) {
      return false;
    }
    return true;
  }
  bool operator!=(const CustomGNSS_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct CustomGNSS_

// alias to use template instance with default allocator
using CustomGNSS =
  common_unique_msgs::msg::CustomGNSS_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__STRUCT_HPP_
