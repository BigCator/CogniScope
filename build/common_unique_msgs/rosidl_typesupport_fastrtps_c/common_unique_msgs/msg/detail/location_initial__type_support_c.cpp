// generated from rosidl_typesupport_fastrtps_c/resource/idl__type_support_c.cpp.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/location_initial__rosidl_typesupport_fastrtps_c.h"


#include <cassert>
#include <limits>
#include <string>
#include "rosidl_typesupport_fastrtps_c/identifier.h"
#include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "common_unique_msgs/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "common_unique_msgs/msg/detail/location_initial__struct.h"
#include "common_unique_msgs/msg/detail/location_initial__functions.h"
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

#include "common_unique_msgs/msg/detail/uni_header__functions.h"  // header

// forward declare type support functions
size_t get_serialized_size_common_unique_msgs__msg__UniHeader(
  const void * untyped_ros_message,
  size_t current_alignment);

size_t max_serialized_size_common_unique_msgs__msg__UniHeader(
  bool & full_bounded,
  bool & is_plain,
  size_t current_alignment);

const rosidl_message_type_support_t *
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, common_unique_msgs, msg, UniHeader)();


using _LocationInitial__ros_msg_type = common_unique_msgs__msg__LocationInitial;

static bool _LocationInitial__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _LocationInitial__ros_msg_type * ros_message = static_cast<const _LocationInitial__ros_msg_type *>(untyped_ros_message);
  // Field name: header
  {
    const message_type_support_callbacks_t * callbacks =
      static_cast<const message_type_support_callbacks_t *>(
      ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(
        rosidl_typesupport_fastrtps_c, common_unique_msgs, msg, UniHeader
      )()->data);
    if (!callbacks->cdr_serialize(
        &ros_message->header, cdr))
    {
      return false;
    }
  }

  // Field name: s_ins_vx
  {
    cdr << ros_message->s_ins_vx;
  }

  // Field name: s_ins_vy
  {
    cdr << ros_message->s_ins_vy;
  }

  // Field name: s_ins_vz
  {
    cdr << ros_message->s_ins_vz;
  }

  // Field name: i_ins_ax
  {
    cdr << ros_message->i_ins_ax;
  }

  // Field name: i_ins_ay
  {
    cdr << ros_message->i_ins_ay;
  }

  // Field name: i_ins_az
  {
    cdr << ros_message->i_ins_az;
  }

  // Field name: f_ins_anglex
  {
    cdr << ros_message->f_ins_anglex;
  }

  // Field name: f_ins_angley
  {
    cdr << ros_message->f_ins_angley;
  }

  // Field name: f_ins_anglez
  {
    cdr << ros_message->f_ins_anglez;
  }

  // Field name: f_ins_wx
  {
    cdr << ros_message->f_ins_wx;
  }

  // Field name: f_ins_wy
  {
    cdr << ros_message->f_ins_wy;
  }

  // Field name: f_ins_wz
  {
    cdr << ros_message->f_ins_wz;
  }

  // Field name: f_ins_wax
  {
    cdr << ros_message->f_ins_wax;
  }

  // Field name: f_ins_way
  {
    cdr << ros_message->f_ins_way;
  }

  // Field name: f_ins_waz
  {
    cdr << ros_message->f_ins_waz;
  }

  // Field name: us_check_sum
  {
    cdr << ros_message->us_check_sum;
  }

  return true;
}

static bool _LocationInitial__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _LocationInitial__ros_msg_type * ros_message = static_cast<_LocationInitial__ros_msg_type *>(untyped_ros_message);
  // Field name: header
  {
    const message_type_support_callbacks_t * callbacks =
      static_cast<const message_type_support_callbacks_t *>(
      ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(
        rosidl_typesupport_fastrtps_c, common_unique_msgs, msg, UniHeader
      )()->data);
    if (!callbacks->cdr_deserialize(
        cdr, &ros_message->header))
    {
      return false;
    }
  }

  // Field name: s_ins_vx
  {
    cdr >> ros_message->s_ins_vx;
  }

  // Field name: s_ins_vy
  {
    cdr >> ros_message->s_ins_vy;
  }

  // Field name: s_ins_vz
  {
    cdr >> ros_message->s_ins_vz;
  }

  // Field name: i_ins_ax
  {
    cdr >> ros_message->i_ins_ax;
  }

  // Field name: i_ins_ay
  {
    cdr >> ros_message->i_ins_ay;
  }

  // Field name: i_ins_az
  {
    cdr >> ros_message->i_ins_az;
  }

  // Field name: f_ins_anglex
  {
    cdr >> ros_message->f_ins_anglex;
  }

  // Field name: f_ins_angley
  {
    cdr >> ros_message->f_ins_angley;
  }

  // Field name: f_ins_anglez
  {
    cdr >> ros_message->f_ins_anglez;
  }

  // Field name: f_ins_wx
  {
    cdr >> ros_message->f_ins_wx;
  }

  // Field name: f_ins_wy
  {
    cdr >> ros_message->f_ins_wy;
  }

  // Field name: f_ins_wz
  {
    cdr >> ros_message->f_ins_wz;
  }

  // Field name: f_ins_wax
  {
    cdr >> ros_message->f_ins_wax;
  }

  // Field name: f_ins_way
  {
    cdr >> ros_message->f_ins_way;
  }

  // Field name: f_ins_waz
  {
    cdr >> ros_message->f_ins_waz;
  }

  // Field name: us_check_sum
  {
    cdr >> ros_message->us_check_sum;
  }

  return true;
}  // NOLINT(readability/fn_size)

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_common_unique_msgs
size_t get_serialized_size_common_unique_msgs__msg__LocationInitial(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _LocationInitial__ros_msg_type * ros_message = static_cast<const _LocationInitial__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name header

  current_alignment += get_serialized_size_common_unique_msgs__msg__UniHeader(
    &(ros_message->header), current_alignment);
  // field.name s_ins_vx
  {
    size_t item_size = sizeof(ros_message->s_ins_vx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_ins_vy
  {
    size_t item_size = sizeof(ros_message->s_ins_vy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_ins_vz
  {
    size_t item_size = sizeof(ros_message->s_ins_vz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name i_ins_ax
  {
    size_t item_size = sizeof(ros_message->i_ins_ax);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name i_ins_ay
  {
    size_t item_size = sizeof(ros_message->i_ins_ay);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name i_ins_az
  {
    size_t item_size = sizeof(ros_message->i_ins_az);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_anglex
  {
    size_t item_size = sizeof(ros_message->f_ins_anglex);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_angley
  {
    size_t item_size = sizeof(ros_message->f_ins_angley);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_anglez
  {
    size_t item_size = sizeof(ros_message->f_ins_anglez);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_wx
  {
    size_t item_size = sizeof(ros_message->f_ins_wx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_wy
  {
    size_t item_size = sizeof(ros_message->f_ins_wy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_wz
  {
    size_t item_size = sizeof(ros_message->f_ins_wz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_wax
  {
    size_t item_size = sizeof(ros_message->f_ins_wax);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_way
  {
    size_t item_size = sizeof(ros_message->f_ins_way);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name f_ins_waz
  {
    size_t item_size = sizeof(ros_message->f_ins_waz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name us_check_sum
  {
    size_t item_size = sizeof(ros_message->us_check_sum);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

static uint32_t _LocationInitial__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_common_unique_msgs__msg__LocationInitial(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_common_unique_msgs
size_t max_serialized_size_common_unique_msgs__msg__LocationInitial(
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

  // member: header
  {
    size_t array_size = 1;


    last_member_size = 0;
    for (size_t index = 0; index < array_size; ++index) {
      bool inner_full_bounded;
      bool inner_is_plain;
      size_t inner_size;
      inner_size =
        max_serialized_size_common_unique_msgs__msg__UniHeader(
        inner_full_bounded, inner_is_plain, current_alignment);
      last_member_size += inner_size;
      current_alignment += inner_size;
      full_bounded &= inner_full_bounded;
      is_plain &= inner_is_plain;
    }
  }
  // member: s_ins_vx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_ins_vy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_ins_vz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: i_ins_ax
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: i_ins_ay
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: i_ins_az
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_anglex
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_angley
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_anglez
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_wx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_wy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_wz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_wax
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_way
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: f_ins_waz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: us_check_sum
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  size_t ret_val = current_alignment - initial_alignment;
  if (is_plain) {
    // All members are plain, and type is not empty.
    // We still need to check that the in-memory alignment
    // is the same as the CDR mandated alignment.
    using DataType = common_unique_msgs__msg__LocationInitial;
    is_plain =
      (
      offsetof(DataType, us_check_sum) +
      last_member_size
      ) == ret_val;
  }

  return ret_val;
}

static size_t _LocationInitial__max_serialized_size(char & bounds_info)
{
  bool full_bounded;
  bool is_plain;
  size_t ret_val;

  ret_val = max_serialized_size_common_unique_msgs__msg__LocationInitial(
    full_bounded, is_plain, 0);

  bounds_info =
    is_plain ? ROSIDL_TYPESUPPORT_FASTRTPS_PLAIN_TYPE :
    full_bounded ? ROSIDL_TYPESUPPORT_FASTRTPS_BOUNDED_TYPE : ROSIDL_TYPESUPPORT_FASTRTPS_UNBOUNDED_TYPE;
  return ret_val;
}


static message_type_support_callbacks_t __callbacks_LocationInitial = {
  "common_unique_msgs::msg",
  "LocationInitial",
  _LocationInitial__cdr_serialize,
  _LocationInitial__cdr_deserialize,
  _LocationInitial__get_serialized_size,
  _LocationInitial__max_serialized_size
};

static rosidl_message_type_support_t _LocationInitial__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_LocationInitial,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, common_unique_msgs, msg, LocationInitial)() {
  return &_LocationInitial__type_support;
}

#if defined(__cplusplus)
}
#endif
