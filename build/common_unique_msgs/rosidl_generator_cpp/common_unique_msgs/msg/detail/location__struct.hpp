// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__STRUCT_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__STRUCT_HPP_

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
#include "common_unique_msgs/msg/detail/uni_header__struct.hpp"

#ifndef _WIN32
# define DEPRECATED__common_unique_msgs__msg__Location __attribute__((deprecated))
#else
# define DEPRECATED__common_unique_msgs__msg__Location __declspec(deprecated)
#endif

namespace common_unique_msgs
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct Location_
{
  using Type = Location_<ContainerAllocator>;

  explicit Location_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->ui_satel_lon = 0l;
      this->ui_satel_lat = 0l;
      this->ui_satel_alt = 0l;
      this->uc_satle_state = 0;
      this->ui_nav_lon = 0l;
      this->ui_nav_lat = 0l;
      this->ui_nav_alt = 0l;
      this->us_nav_yaw = 0;
      this->s_nav_pitch = 0;
      this->s_nav_roll = 0;
      this->s_nav_vx = 0;
      this->s_nav_vy = 0;
      this->s_nav_vz = 0;
      this->s_nav_wx = 0;
      this->s_nav_wy = 0;
      this->s_nav_wz = 0;
      this->ui_mileage = 0ul;
      this->ul_satel_time = 0ull;
      this->ui_work_time = 0ul;
      this->uc_work_state = 0;
      this->uc_nav_state = 0;
      this->reserve1 = 0;
      this->reserve2 = 0;
      this->us_check_sum = 0;
    }
  }

  explicit Location_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_alloc, _init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->ui_satel_lon = 0l;
      this->ui_satel_lat = 0l;
      this->ui_satel_alt = 0l;
      this->uc_satle_state = 0;
      this->ui_nav_lon = 0l;
      this->ui_nav_lat = 0l;
      this->ui_nav_alt = 0l;
      this->us_nav_yaw = 0;
      this->s_nav_pitch = 0;
      this->s_nav_roll = 0;
      this->s_nav_vx = 0;
      this->s_nav_vy = 0;
      this->s_nav_vz = 0;
      this->s_nav_wx = 0;
      this->s_nav_wy = 0;
      this->s_nav_wz = 0;
      this->ui_mileage = 0ul;
      this->ul_satel_time = 0ull;
      this->ui_work_time = 0ul;
      this->uc_work_state = 0;
      this->uc_nav_state = 0;
      this->reserve1 = 0;
      this->reserve2 = 0;
      this->us_check_sum = 0;
    }
  }

  // field types and members
  using _header_type =
    common_unique_msgs::msg::UniHeader_<ContainerAllocator>;
  _header_type header;
  using _ui_satel_lon_type =
    int32_t;
  _ui_satel_lon_type ui_satel_lon;
  using _ui_satel_lat_type =
    int32_t;
  _ui_satel_lat_type ui_satel_lat;
  using _ui_satel_alt_type =
    int32_t;
  _ui_satel_alt_type ui_satel_alt;
  using _uc_satle_state_type =
    uint8_t;
  _uc_satle_state_type uc_satle_state;
  using _ui_nav_lon_type =
    int32_t;
  _ui_nav_lon_type ui_nav_lon;
  using _ui_nav_lat_type =
    int32_t;
  _ui_nav_lat_type ui_nav_lat;
  using _ui_nav_alt_type =
    int32_t;
  _ui_nav_alt_type ui_nav_alt;
  using _us_nav_yaw_type =
    uint16_t;
  _us_nav_yaw_type us_nav_yaw;
  using _s_nav_pitch_type =
    int16_t;
  _s_nav_pitch_type s_nav_pitch;
  using _s_nav_roll_type =
    int16_t;
  _s_nav_roll_type s_nav_roll;
  using _s_nav_vx_type =
    int16_t;
  _s_nav_vx_type s_nav_vx;
  using _s_nav_vy_type =
    int16_t;
  _s_nav_vy_type s_nav_vy;
  using _s_nav_vz_type =
    int16_t;
  _s_nav_vz_type s_nav_vz;
  using _s_nav_wx_type =
    int16_t;
  _s_nav_wx_type s_nav_wx;
  using _s_nav_wy_type =
    int16_t;
  _s_nav_wy_type s_nav_wy;
  using _s_nav_wz_type =
    int16_t;
  _s_nav_wz_type s_nav_wz;
  using _ui_mileage_type =
    uint32_t;
  _ui_mileage_type ui_mileage;
  using _ul_satel_time_type =
    uint64_t;
  _ul_satel_time_type ul_satel_time;
  using _ui_work_time_type =
    uint32_t;
  _ui_work_time_type ui_work_time;
  using _uc_work_state_type =
    uint8_t;
  _uc_work_state_type uc_work_state;
  using _uc_nav_state_type =
    uint8_t;
  _uc_nav_state_type uc_nav_state;
  using _reserve1_type =
    uint16_t;
  _reserve1_type reserve1;
  using _reserve2_type =
    uint16_t;
  _reserve2_type reserve2;
  using _us_check_sum_type =
    uint16_t;
  _us_check_sum_type us_check_sum;

  // setters for named parameter idiom
  Type & set__header(
    const common_unique_msgs::msg::UniHeader_<ContainerAllocator> & _arg)
  {
    this->header = _arg;
    return *this;
  }
  Type & set__ui_satel_lon(
    const int32_t & _arg)
  {
    this->ui_satel_lon = _arg;
    return *this;
  }
  Type & set__ui_satel_lat(
    const int32_t & _arg)
  {
    this->ui_satel_lat = _arg;
    return *this;
  }
  Type & set__ui_satel_alt(
    const int32_t & _arg)
  {
    this->ui_satel_alt = _arg;
    return *this;
  }
  Type & set__uc_satle_state(
    const uint8_t & _arg)
  {
    this->uc_satle_state = _arg;
    return *this;
  }
  Type & set__ui_nav_lon(
    const int32_t & _arg)
  {
    this->ui_nav_lon = _arg;
    return *this;
  }
  Type & set__ui_nav_lat(
    const int32_t & _arg)
  {
    this->ui_nav_lat = _arg;
    return *this;
  }
  Type & set__ui_nav_alt(
    const int32_t & _arg)
  {
    this->ui_nav_alt = _arg;
    return *this;
  }
  Type & set__us_nav_yaw(
    const uint16_t & _arg)
  {
    this->us_nav_yaw = _arg;
    return *this;
  }
  Type & set__s_nav_pitch(
    const int16_t & _arg)
  {
    this->s_nav_pitch = _arg;
    return *this;
  }
  Type & set__s_nav_roll(
    const int16_t & _arg)
  {
    this->s_nav_roll = _arg;
    return *this;
  }
  Type & set__s_nav_vx(
    const int16_t & _arg)
  {
    this->s_nav_vx = _arg;
    return *this;
  }
  Type & set__s_nav_vy(
    const int16_t & _arg)
  {
    this->s_nav_vy = _arg;
    return *this;
  }
  Type & set__s_nav_vz(
    const int16_t & _arg)
  {
    this->s_nav_vz = _arg;
    return *this;
  }
  Type & set__s_nav_wx(
    const int16_t & _arg)
  {
    this->s_nav_wx = _arg;
    return *this;
  }
  Type & set__s_nav_wy(
    const int16_t & _arg)
  {
    this->s_nav_wy = _arg;
    return *this;
  }
  Type & set__s_nav_wz(
    const int16_t & _arg)
  {
    this->s_nav_wz = _arg;
    return *this;
  }
  Type & set__ui_mileage(
    const uint32_t & _arg)
  {
    this->ui_mileage = _arg;
    return *this;
  }
  Type & set__ul_satel_time(
    const uint64_t & _arg)
  {
    this->ul_satel_time = _arg;
    return *this;
  }
  Type & set__ui_work_time(
    const uint32_t & _arg)
  {
    this->ui_work_time = _arg;
    return *this;
  }
  Type & set__uc_work_state(
    const uint8_t & _arg)
  {
    this->uc_work_state = _arg;
    return *this;
  }
  Type & set__uc_nav_state(
    const uint8_t & _arg)
  {
    this->uc_nav_state = _arg;
    return *this;
  }
  Type & set__reserve1(
    const uint16_t & _arg)
  {
    this->reserve1 = _arg;
    return *this;
  }
  Type & set__reserve2(
    const uint16_t & _arg)
  {
    this->reserve2 = _arg;
    return *this;
  }
  Type & set__us_check_sum(
    const uint16_t & _arg)
  {
    this->us_check_sum = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    common_unique_msgs::msg::Location_<ContainerAllocator> *;
  using ConstRawPtr =
    const common_unique_msgs::msg::Location_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<common_unique_msgs::msg::Location_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<common_unique_msgs::msg::Location_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::Location_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::Location_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::Location_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::Location_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<common_unique_msgs::msg::Location_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<common_unique_msgs::msg::Location_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__common_unique_msgs__msg__Location
    std::shared_ptr<common_unique_msgs::msg::Location_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__common_unique_msgs__msg__Location
    std::shared_ptr<common_unique_msgs::msg::Location_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const Location_ & other) const
  {
    if (this->header != other.header) {
      return false;
    }
    if (this->ui_satel_lon != other.ui_satel_lon) {
      return false;
    }
    if (this->ui_satel_lat != other.ui_satel_lat) {
      return false;
    }
    if (this->ui_satel_alt != other.ui_satel_alt) {
      return false;
    }
    if (this->uc_satle_state != other.uc_satle_state) {
      return false;
    }
    if (this->ui_nav_lon != other.ui_nav_lon) {
      return false;
    }
    if (this->ui_nav_lat != other.ui_nav_lat) {
      return false;
    }
    if (this->ui_nav_alt != other.ui_nav_alt) {
      return false;
    }
    if (this->us_nav_yaw != other.us_nav_yaw) {
      return false;
    }
    if (this->s_nav_pitch != other.s_nav_pitch) {
      return false;
    }
    if (this->s_nav_roll != other.s_nav_roll) {
      return false;
    }
    if (this->s_nav_vx != other.s_nav_vx) {
      return false;
    }
    if (this->s_nav_vy != other.s_nav_vy) {
      return false;
    }
    if (this->s_nav_vz != other.s_nav_vz) {
      return false;
    }
    if (this->s_nav_wx != other.s_nav_wx) {
      return false;
    }
    if (this->s_nav_wy != other.s_nav_wy) {
      return false;
    }
    if (this->s_nav_wz != other.s_nav_wz) {
      return false;
    }
    if (this->ui_mileage != other.ui_mileage) {
      return false;
    }
    if (this->ul_satel_time != other.ul_satel_time) {
      return false;
    }
    if (this->ui_work_time != other.ui_work_time) {
      return false;
    }
    if (this->uc_work_state != other.uc_work_state) {
      return false;
    }
    if (this->uc_nav_state != other.uc_nav_state) {
      return false;
    }
    if (this->reserve1 != other.reserve1) {
      return false;
    }
    if (this->reserve2 != other.reserve2) {
      return false;
    }
    if (this->us_check_sum != other.us_check_sum) {
      return false;
    }
    return true;
  }
  bool operator!=(const Location_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct Location_

// alias to use template instance with default allocator
using Location =
  common_unique_msgs::msg::Location_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__STRUCT_HPP_
