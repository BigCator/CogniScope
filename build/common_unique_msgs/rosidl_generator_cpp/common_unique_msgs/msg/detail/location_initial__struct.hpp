// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__STRUCT_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__STRUCT_HPP_

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
# define DEPRECATED__common_unique_msgs__msg__LocationInitial __attribute__((deprecated))
#else
# define DEPRECATED__common_unique_msgs__msg__LocationInitial __declspec(deprecated)
#endif

namespace common_unique_msgs
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct LocationInitial_
{
  using Type = LocationInitial_<ContainerAllocator>;

  explicit LocationInitial_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->s_ins_vx = 0;
      this->s_ins_vy = 0;
      this->s_ins_vz = 0;
      this->i_ins_ax = 0l;
      this->i_ins_ay = 0l;
      this->i_ins_az = 0l;
      this->f_ins_anglex = 0.0f;
      this->f_ins_angley = 0.0f;
      this->f_ins_anglez = 0.0f;
      this->f_ins_wx = 0.0f;
      this->f_ins_wy = 0.0f;
      this->f_ins_wz = 0.0f;
      this->f_ins_wax = 0.0f;
      this->f_ins_way = 0.0f;
      this->f_ins_waz = 0.0f;
      this->us_check_sum = 0;
    }
  }

  explicit LocationInitial_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : header(_alloc, _init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->s_ins_vx = 0;
      this->s_ins_vy = 0;
      this->s_ins_vz = 0;
      this->i_ins_ax = 0l;
      this->i_ins_ay = 0l;
      this->i_ins_az = 0l;
      this->f_ins_anglex = 0.0f;
      this->f_ins_angley = 0.0f;
      this->f_ins_anglez = 0.0f;
      this->f_ins_wx = 0.0f;
      this->f_ins_wy = 0.0f;
      this->f_ins_wz = 0.0f;
      this->f_ins_wax = 0.0f;
      this->f_ins_way = 0.0f;
      this->f_ins_waz = 0.0f;
      this->us_check_sum = 0;
    }
  }

  // field types and members
  using _header_type =
    common_unique_msgs::msg::UniHeader_<ContainerAllocator>;
  _header_type header;
  using _s_ins_vx_type =
    int16_t;
  _s_ins_vx_type s_ins_vx;
  using _s_ins_vy_type =
    int16_t;
  _s_ins_vy_type s_ins_vy;
  using _s_ins_vz_type =
    int16_t;
  _s_ins_vz_type s_ins_vz;
  using _i_ins_ax_type =
    int32_t;
  _i_ins_ax_type i_ins_ax;
  using _i_ins_ay_type =
    int32_t;
  _i_ins_ay_type i_ins_ay;
  using _i_ins_az_type =
    int32_t;
  _i_ins_az_type i_ins_az;
  using _f_ins_anglex_type =
    float;
  _f_ins_anglex_type f_ins_anglex;
  using _f_ins_angley_type =
    float;
  _f_ins_angley_type f_ins_angley;
  using _f_ins_anglez_type =
    float;
  _f_ins_anglez_type f_ins_anglez;
  using _f_ins_wx_type =
    float;
  _f_ins_wx_type f_ins_wx;
  using _f_ins_wy_type =
    float;
  _f_ins_wy_type f_ins_wy;
  using _f_ins_wz_type =
    float;
  _f_ins_wz_type f_ins_wz;
  using _f_ins_wax_type =
    float;
  _f_ins_wax_type f_ins_wax;
  using _f_ins_way_type =
    float;
  _f_ins_way_type f_ins_way;
  using _f_ins_waz_type =
    float;
  _f_ins_waz_type f_ins_waz;
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
  Type & set__s_ins_vx(
    const int16_t & _arg)
  {
    this->s_ins_vx = _arg;
    return *this;
  }
  Type & set__s_ins_vy(
    const int16_t & _arg)
  {
    this->s_ins_vy = _arg;
    return *this;
  }
  Type & set__s_ins_vz(
    const int16_t & _arg)
  {
    this->s_ins_vz = _arg;
    return *this;
  }
  Type & set__i_ins_ax(
    const int32_t & _arg)
  {
    this->i_ins_ax = _arg;
    return *this;
  }
  Type & set__i_ins_ay(
    const int32_t & _arg)
  {
    this->i_ins_ay = _arg;
    return *this;
  }
  Type & set__i_ins_az(
    const int32_t & _arg)
  {
    this->i_ins_az = _arg;
    return *this;
  }
  Type & set__f_ins_anglex(
    const float & _arg)
  {
    this->f_ins_anglex = _arg;
    return *this;
  }
  Type & set__f_ins_angley(
    const float & _arg)
  {
    this->f_ins_angley = _arg;
    return *this;
  }
  Type & set__f_ins_anglez(
    const float & _arg)
  {
    this->f_ins_anglez = _arg;
    return *this;
  }
  Type & set__f_ins_wx(
    const float & _arg)
  {
    this->f_ins_wx = _arg;
    return *this;
  }
  Type & set__f_ins_wy(
    const float & _arg)
  {
    this->f_ins_wy = _arg;
    return *this;
  }
  Type & set__f_ins_wz(
    const float & _arg)
  {
    this->f_ins_wz = _arg;
    return *this;
  }
  Type & set__f_ins_wax(
    const float & _arg)
  {
    this->f_ins_wax = _arg;
    return *this;
  }
  Type & set__f_ins_way(
    const float & _arg)
  {
    this->f_ins_way = _arg;
    return *this;
  }
  Type & set__f_ins_waz(
    const float & _arg)
  {
    this->f_ins_waz = _arg;
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
    common_unique_msgs::msg::LocationInitial_<ContainerAllocator> *;
  using ConstRawPtr =
    const common_unique_msgs::msg::LocationInitial_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::LocationInitial_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::LocationInitial_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__common_unique_msgs__msg__LocationInitial
    std::shared_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__common_unique_msgs__msg__LocationInitial
    std::shared_ptr<common_unique_msgs::msg::LocationInitial_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const LocationInitial_ & other) const
  {
    if (this->header != other.header) {
      return false;
    }
    if (this->s_ins_vx != other.s_ins_vx) {
      return false;
    }
    if (this->s_ins_vy != other.s_ins_vy) {
      return false;
    }
    if (this->s_ins_vz != other.s_ins_vz) {
      return false;
    }
    if (this->i_ins_ax != other.i_ins_ax) {
      return false;
    }
    if (this->i_ins_ay != other.i_ins_ay) {
      return false;
    }
    if (this->i_ins_az != other.i_ins_az) {
      return false;
    }
    if (this->f_ins_anglex != other.f_ins_anglex) {
      return false;
    }
    if (this->f_ins_angley != other.f_ins_angley) {
      return false;
    }
    if (this->f_ins_anglez != other.f_ins_anglez) {
      return false;
    }
    if (this->f_ins_wx != other.f_ins_wx) {
      return false;
    }
    if (this->f_ins_wy != other.f_ins_wy) {
      return false;
    }
    if (this->f_ins_wz != other.f_ins_wz) {
      return false;
    }
    if (this->f_ins_wax != other.f_ins_wax) {
      return false;
    }
    if (this->f_ins_way != other.f_ins_way) {
      return false;
    }
    if (this->f_ins_waz != other.f_ins_waz) {
      return false;
    }
    if (this->us_check_sum != other.us_check_sum) {
      return false;
    }
    return true;
  }
  bool operator!=(const LocationInitial_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct LocationInitial_

// alias to use template instance with default allocator
using LocationInitial =
  common_unique_msgs::msg::LocationInitial_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__STRUCT_HPP_
