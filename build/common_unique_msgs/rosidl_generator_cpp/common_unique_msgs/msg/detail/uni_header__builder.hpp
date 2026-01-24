// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__BUILDER_HPP_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "common_unique_msgs/msg/detail/uni_header__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace common_unique_msgs
{

namespace msg
{

namespace builder
{

class Init_UniHeader_ul_msg_stamp
{
public:
  explicit Init_UniHeader_ul_msg_stamp(::common_unique_msgs::msg::UniHeader & msg)
  : msg_(msg)
  {}
  ::common_unique_msgs::msg::UniHeader ul_msg_stamp(::common_unique_msgs::msg::UniHeader::_ul_msg_stamp_type arg)
  {
    msg_.ul_msg_stamp = std::move(arg);
    return std::move(msg_);
  }

private:
  ::common_unique_msgs::msg::UniHeader msg_;
};

class Init_UniHeader_ui_msg_datalength
{
public:
  explicit Init_UniHeader_ui_msg_datalength(::common_unique_msgs::msg::UniHeader & msg)
  : msg_(msg)
  {}
  Init_UniHeader_ul_msg_stamp ui_msg_datalength(::common_unique_msgs::msg::UniHeader::_ui_msg_datalength_type arg)
  {
    msg_.ui_msg_datalength = std::move(arg);
    return Init_UniHeader_ul_msg_stamp(msg_);
  }

private:
  ::common_unique_msgs::msg::UniHeader msg_;
};

class Init_UniHeader_ui_msg_id
{
public:
  Init_UniHeader_ui_msg_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_UniHeader_ui_msg_datalength ui_msg_id(::common_unique_msgs::msg::UniHeader::_ui_msg_id_type arg)
  {
    msg_.ui_msg_id = std::move(arg);
    return Init_UniHeader_ui_msg_datalength(msg_);
  }

private:
  ::common_unique_msgs::msg::UniHeader msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::common_unique_msgs::msg::UniHeader>()
{
  return common_unique_msgs::msg::builder::Init_UniHeader_ui_msg_id();
}

}  // namespace common_unique_msgs

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__BUILDER_HPP_
