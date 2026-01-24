// generated from rosidl_typesupport_fastrtps_c/resource/idl__type_support_c.cpp.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/location__rosidl_typesupport_fastrtps_c.h"


#include <cassert>
#include <limits>
#include <string>
#include "rosidl_typesupport_fastrtps_c/identifier.h"
#include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "common_unique_msgs/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "common_unique_msgs/msg/detail/location__struct.h"
#include "common_unique_msgs/msg/detail/location__functions.h"
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


using _Location__ros_msg_type = common_unique_msgs__msg__Location;

static bool _Location__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _Location__ros_msg_type * ros_message = static_cast<const _Location__ros_msg_type *>(untyped_ros_message);
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

  // Field name: ui_satel_lon
  {
    cdr << ros_message->ui_satel_lon;
  }

  // Field name: ui_satel_lat
  {
    cdr << ros_message->ui_satel_lat;
  }

  // Field name: ui_satel_alt
  {
    cdr << ros_message->ui_satel_alt;
  }

  // Field name: uc_satle_state
  {
    cdr << ros_message->uc_satle_state;
  }

  // Field name: ui_nav_lon
  {
    cdr << ros_message->ui_nav_lon;
  }

  // Field name: ui_nav_lat
  {
    cdr << ros_message->ui_nav_lat;
  }

  // Field name: ui_nav_alt
  {
    cdr << ros_message->ui_nav_alt;
  }

  // Field name: us_nav_yaw
  {
    cdr << ros_message->us_nav_yaw;
  }

  // Field name: s_nav_pitch
  {
    cdr << ros_message->s_nav_pitch;
  }

  // Field name: s_nav_roll
  {
    cdr << ros_message->s_nav_roll;
  }

  // Field name: s_nav_vx
  {
    cdr << ros_message->s_nav_vx;
  }

  // Field name: s_nav_vy
  {
    cdr << ros_message->s_nav_vy;
  }

  // Field name: s_nav_vz
  {
    cdr << ros_message->s_nav_vz;
  }

  // Field name: s_nav_wx
  {
    cdr << ros_message->s_nav_wx;
  }

  // Field name: s_nav_wy
  {
    cdr << ros_message->s_nav_wy;
  }

  // Field name: s_nav_wz
  {
    cdr << ros_message->s_nav_wz;
  }

  // Field name: ui_mileage
  {
    cdr << ros_message->ui_mileage;
  }

  // Field name: ul_satel_time
  {
    cdr << ros_message->ul_satel_time;
  }

  // Field name: ui_work_time
  {
    cdr << ros_message->ui_work_time;
  }

  // Field name: uc_work_state
  {
    cdr << ros_message->uc_work_state;
  }

  // Field name: uc_nav_state
  {
    cdr << ros_message->uc_nav_state;
  }

  // Field name: reserve1
  {
    cdr << ros_message->reserve1;
  }

  // Field name: reserve2
  {
    cdr << ros_message->reserve2;
  }

  // Field name: us_check_sum
  {
    cdr << ros_message->us_check_sum;
  }

  return true;
}

static bool _Location__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _Location__ros_msg_type * ros_message = static_cast<_Location__ros_msg_type *>(untyped_ros_message);
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

  // Field name: ui_satel_lon
  {
    cdr >> ros_message->ui_satel_lon;
  }

  // Field name: ui_satel_lat
  {
    cdr >> ros_message->ui_satel_lat;
  }

  // Field name: ui_satel_alt
  {
    cdr >> ros_message->ui_satel_alt;
  }

  // Field name: uc_satle_state
  {
    cdr >> ros_message->uc_satle_state;
  }

  // Field name: ui_nav_lon
  {
    cdr >> ros_message->ui_nav_lon;
  }

  // Field name: ui_nav_lat
  {
    cdr >> ros_message->ui_nav_lat;
  }

  // Field name: ui_nav_alt
  {
    cdr >> ros_message->ui_nav_alt;
  }

  // Field name: us_nav_yaw
  {
    cdr >> ros_message->us_nav_yaw;
  }

  // Field name: s_nav_pitch
  {
    cdr >> ros_message->s_nav_pitch;
  }

  // Field name: s_nav_roll
  {
    cdr >> ros_message->s_nav_roll;
  }

  // Field name: s_nav_vx
  {
    cdr >> ros_message->s_nav_vx;
  }

  // Field name: s_nav_vy
  {
    cdr >> ros_message->s_nav_vy;
  }

  // Field name: s_nav_vz
  {
    cdr >> ros_message->s_nav_vz;
  }

  // Field name: s_nav_wx
  {
    cdr >> ros_message->s_nav_wx;
  }

  // Field name: s_nav_wy
  {
    cdr >> ros_message->s_nav_wy;
  }

  // Field name: s_nav_wz
  {
    cdr >> ros_message->s_nav_wz;
  }

  // Field name: ui_mileage
  {
    cdr >> ros_message->ui_mileage;
  }

  // Field name: ul_satel_time
  {
    cdr >> ros_message->ul_satel_time;
  }

  // Field name: ui_work_time
  {
    cdr >> ros_message->ui_work_time;
  }

  // Field name: uc_work_state
  {
    cdr >> ros_message->uc_work_state;
  }

  // Field name: uc_nav_state
  {
    cdr >> ros_message->uc_nav_state;
  }

  // Field name: reserve1
  {
    cdr >> ros_message->reserve1;
  }

  // Field name: reserve2
  {
    cdr >> ros_message->reserve2;
  }

  // Field name: us_check_sum
  {
    cdr >> ros_message->us_check_sum;
  }

  return true;
}  // NOLINT(readability/fn_size)

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_common_unique_msgs
size_t get_serialized_size_common_unique_msgs__msg__Location(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _Location__ros_msg_type * ros_message = static_cast<const _Location__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name header

  current_alignment += get_serialized_size_common_unique_msgs__msg__UniHeader(
    &(ros_message->header), current_alignment);
  // field.name ui_satel_lon
  {
    size_t item_size = sizeof(ros_message->ui_satel_lon);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_satel_lat
  {
    size_t item_size = sizeof(ros_message->ui_satel_lat);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_satel_alt
  {
    size_t item_size = sizeof(ros_message->ui_satel_alt);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name uc_satle_state
  {
    size_t item_size = sizeof(ros_message->uc_satle_state);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_nav_lon
  {
    size_t item_size = sizeof(ros_message->ui_nav_lon);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_nav_lat
  {
    size_t item_size = sizeof(ros_message->ui_nav_lat);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_nav_alt
  {
    size_t item_size = sizeof(ros_message->ui_nav_alt);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name us_nav_yaw
  {
    size_t item_size = sizeof(ros_message->us_nav_yaw);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_pitch
  {
    size_t item_size = sizeof(ros_message->s_nav_pitch);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_roll
  {
    size_t item_size = sizeof(ros_message->s_nav_roll);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_vx
  {
    size_t item_size = sizeof(ros_message->s_nav_vx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_vy
  {
    size_t item_size = sizeof(ros_message->s_nav_vy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_vz
  {
    size_t item_size = sizeof(ros_message->s_nav_vz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_wx
  {
    size_t item_size = sizeof(ros_message->s_nav_wx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_wy
  {
    size_t item_size = sizeof(ros_message->s_nav_wy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name s_nav_wz
  {
    size_t item_size = sizeof(ros_message->s_nav_wz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_mileage
  {
    size_t item_size = sizeof(ros_message->ui_mileage);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ul_satel_time
  {
    size_t item_size = sizeof(ros_message->ul_satel_time);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name ui_work_time
  {
    size_t item_size = sizeof(ros_message->ui_work_time);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name uc_work_state
  {
    size_t item_size = sizeof(ros_message->uc_work_state);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name uc_nav_state
  {
    size_t item_size = sizeof(ros_message->uc_nav_state);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name reserve1
  {
    size_t item_size = sizeof(ros_message->reserve1);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name reserve2
  {
    size_t item_size = sizeof(ros_message->reserve2);
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

static uint32_t _Location__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_common_unique_msgs__msg__Location(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_common_unique_msgs
size_t max_serialized_size_common_unique_msgs__msg__Location(
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
  // member: ui_satel_lon
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: ui_satel_lat
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: ui_satel_alt
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: uc_satle_state
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint8_t);
    current_alignment += array_size * sizeof(uint8_t);
  }
  // member: ui_nav_lon
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: ui_nav_lat
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: ui_nav_alt
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: us_nav_yaw
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_pitch
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_roll
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_vx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_vy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_vz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_wx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_wy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: s_nav_wz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: ui_mileage
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: ul_satel_time
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint64_t);
    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }
  // member: ui_work_time
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }
  // member: uc_work_state
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint8_t);
    current_alignment += array_size * sizeof(uint8_t);
  }
  // member: uc_nav_state
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint8_t);
    current_alignment += array_size * sizeof(uint8_t);
  }
  // member: reserve1
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }
  // member: reserve2
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
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
    using DataType = common_unique_msgs__msg__Location;
    is_plain =
      (
      offsetof(DataType, us_check_sum) +
      last_member_size
      ) == ret_val;
  }

  return ret_val;
}

static size_t _Location__max_serialized_size(char & bounds_info)
{
  bool full_bounded;
  bool is_plain;
  size_t ret_val;

  ret_val = max_serialized_size_common_unique_msgs__msg__Location(
    full_bounded, is_plain, 0);

  bounds_info =
    is_plain ? ROSIDL_TYPESUPPORT_FASTRTPS_PLAIN_TYPE :
    full_bounded ? ROSIDL_TYPESUPPORT_FASTRTPS_BOUNDED_TYPE : ROSIDL_TYPESUPPORT_FASTRTPS_UNBOUNDED_TYPE;
  return ret_val;
}


static message_type_support_callbacks_t __callbacks_Location = {
  "common_unique_msgs::msg",
  "Location",
  _Location__cdr_serialize,
  _Location__cdr_deserialize,
  _Location__get_serialized_size,
  _Location__max_serialized_size
};

static rosidl_message_type_support_t _Location__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_Location,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, common_unique_msgs, msg, Location)() {
  return &_Location__type_support;
}

#if defined(__cplusplus)
}
#endif
