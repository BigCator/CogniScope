// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__STRUCT_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__STRUCT_HPP_

#include <algorithm>
#include <array>
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

#include "rosidl_runtime_cpp/bounded_vector.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


#ifndef _WIN32
# define DEPRECATED__common_unique_msgs__msg__UniHeader __attribute__((deprecated))
#else
# define DEPRECATED__common_unique_msgs__msg__UniHeader __declspec(deprecated)
#endif

namespace common_unique_msgs
{

namespace msg
{

// message struct
template<class ContainerAllocator>
struct UniHeader_
{
  using Type = UniHeader_<ContainerAllocator>;

  explicit UniHeader_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->ui_msg_id = 0ul;
      this->ui_msg_datalength = 0ul;
      this->ul_msg_stamp = 0ull;
    }
  }

  explicit UniHeader_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    (void)_alloc;
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->ui_msg_id = 0ul;
      this->ui_msg_datalength = 0ul;
      this->ul_msg_stamp = 0ull;
    }
  }

  // field types and members
  using _ui_msg_id_type =
    uint32_t;
  _ui_msg_id_type ui_msg_id;
  using _ui_msg_datalength_type =
    uint32_t;
  _ui_msg_datalength_type ui_msg_datalength;
  using _ul_msg_stamp_type =
    uint64_t;
  _ul_msg_stamp_type ul_msg_stamp;

  // setters for named parameter idiom
  Type & set__ui_msg_id(
    const uint32_t & _arg)
  {
    this->ui_msg_id = _arg;
    return *this;
  }
  Type & set__ui_msg_datalength(
    const uint32_t & _arg)
  {
    this->ui_msg_datalength = _arg;
    return *this;
  }
  Type & set__ul_msg_stamp(
    const uint64_t & _arg)
  {
    this->ul_msg_stamp = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    common_unique_msgs::msg::UniHeader_<ContainerAllocator> *;
  using ConstRawPtr =
    const common_unique_msgs::msg::UniHeader_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::UniHeader_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      common_unique_msgs::msg::UniHeader_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__common_unique_msgs__msg__UniHeader
    std::shared_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__common_unique_msgs__msg__UniHeader
    std::shared_ptr<common_unique_msgs::msg::UniHeader_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const UniHeader_ & other) const
  {
    if (this->ui_msg_id != other.ui_msg_id) {
      return false;
    }
    if (this->ui_msg_datalength != other.ui_msg_datalength) {
      return false;
    }
    if (this->ul_msg_stamp != other.ul_msg_stamp) {
      return false;
    }
    return true;
  }
  bool operator!=(const UniHeader_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct UniHeader_

// alias to use template instance with default allocator
using UniHeader =
  common_unique_msgs::msg::UniHeader_<std::allocator<void>>;

// constant definitions

}  // namespace msg

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__STRUCT_HPP_
