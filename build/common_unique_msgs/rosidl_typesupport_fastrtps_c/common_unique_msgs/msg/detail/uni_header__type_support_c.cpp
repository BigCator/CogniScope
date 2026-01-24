// generated from rosidl_typesupport_fastrtps_c/resource/idl__type_support_c.cpp.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/uni_header__rosidl_typesupport_fastrtps_c.h"


#include <cassert>
#include <limits>
#include <string>
#include "rosidl_typesupport_fastrtps_c/identifier.h"
#include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "common_unique_msgs/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "common_unique_msgs/msg/detail/uni_header__struct.h"
#include "common_unique_msgs/msg/detail/uni_header__functions.h"
#include "fastcdr/Cdr.h"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

// includes and forward declarations of message dependencies and their conversion functions

#if defined(__cplusplus)
extern "C"
{
#endif


// forward declare type support functions


using _UniHeader__ros_msg_type = common_unique_msgs__msg__UniHeader;

static bool _UniHeader__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _UniHeader__ros_msg_type * ros_message = static_cast<const _UniHeader__ros_msg_type *>(untyped_ros_message);
  // Field name: ui_msg_id
  {
    cdr << ros_message->ui_msg_id;
  }

  // Field name: ui_msg_datalength
  {
    cdr << ros_message->ui_msg_datalength;
  }

  // Field name: ul_msg_stamp
  {
    cdr << ros_message->ul_msg_stamp;
  }

  return true;
}

static bool _UniHeader__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _UniHeader__ros_msg_type * ros_message = static_cast<_UniHeader__ros_msg_type *>(untyped_ros_message);
  // Field name: ui_msg_id
  {
    cdr >> ros_message->ui_msg_id;
  }

  // Field name: ui_msg_datalength
  {
    cdr >> ros_message->ui_msg_datalength;
  }

  // Field name: ul_msg_stamp
  {
    cdr >> ros_message->ul_msg_stamp;
  }

  return true;
}  // NOLINT(readability/fn_size)

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_common_unique_msgs
size_t get_serialized_size_common_unique_msgs__msg__UniHeader(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _UniHeader__ros_msg_type * ros_message = static_cast<const _UniHeader__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name ui_msg_id
  {
    size_t item_size = sizeof(ros_message->ui_msg_id);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_msg_datalength
  {
    size_t item_size = sizeof(ros_message->ui_msg_datalength);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ul_msg_stamp
  {
    size_t item_size = sizeof(ros_message->ul_msg_stamp);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

static uint32_t _UniHeader__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_common_unique_msgs__msg__UniHeader(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_common_unique_msgs
size_t max_serialized_size_common_unique_msgs__msg__UniHeader(
  bool & full_bounded,
  bool & is_plain,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  size_t last_member_size = 0;
  (void)last_member_size;
  (void)padding;
  (void)wchar_size;

  full_bounded = true;
  is_plain = true;

  // member: ui_msg_id
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: ui_msg_datalength
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: ul_msg_stamp
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint64_t);
    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }

  size_t ret_val = current_alignment - initial_alignment;
  if (is_plain) {
    // All members are plain, and type is not empty.
    // We still need to check that the in-memory alignment
    // is the same as the CDR mandated alignment.
    using DataType = common_unique_msgs__msg__UniHeader;
    is_plain =
      (
      offsetof(DataType, ul_msg_stamp) +
      last_member_size
      ) == ret_val;
  }

  return ret_val;
}

static size_t _UniHeader__max_serialized_size(char & bounds_info)
{
  bool full_bounded;
  bool is_plain;
  size_t ret_val;

  ret_val = max_serialized_size_common_unique_msgs__msg__UniHeader(
    full_bounded, is_plain, 0);

  bounds_info =
    is_plain ? ROSIDL_TYPESUPPORT_FASTRTPS_PLAIN_TYPE :
    full_bounded ? ROSIDL_TYPESUPPORT_FASTRTPS_BOUNDED_TYPE : ROSIDL_TYPESUPPORT_FASTRTPS_UNBOUNDED_TYPE;
  return ret_val;
}


static message_type_support_callbacks_t __callbacks_UniHeader = {
  "common_unique_msgs::msg",
  "UniHeader",
  _UniHeader__cdr_serialize,
  _UniHeader__cdr_deserialize,
  _UniHeader__get_serialized_size,
  _UniHeader__max_serialized_size
};

static rosidl_message_type_support_t _UniHeader__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_UniHeader,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, common_unique_msgs, msg, UniHeader)() {
  return &_UniHeader__type_support;
}

#if defined(__cplusplus)
}
#endif
