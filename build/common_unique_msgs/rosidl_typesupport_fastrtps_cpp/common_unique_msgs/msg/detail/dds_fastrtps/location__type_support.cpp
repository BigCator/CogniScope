// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__type_support.cpp.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/location__rosidl_typesupport_fastrtps_cpp.hpp"
#include "common_unique_msgs/msg/detail/location__struct.hpp"

#include <limits>
#include <stdexcept>
#include <string>
#include "rosidl_typesupport_cpp/message_type_support.hpp"
#include "rosidl_typesupport_fastrtps_cpp/identifier.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support_decl.hpp"
#include "rosidl_typesupport_fastrtps_cpp/wstring_conversion.hpp"
#include "fastcdr/Cdr.h"


// forward declaration of message dependencies and their conversion functions
namespace common_unique_msgs
{
namespace msg
{
namespace typesupport_fastrtps_cpp
{
bool cdr_serialize(
  const common_unique_msgs::msg::UniHeader &,
  eprosima::fastcdr::Cdr &);
bool cdr_deserialize(
  eprosima::fastcdr::Cdr &,
  common_unique_msgs::msg::UniHeader &);
size_t get_serialized_size(
  const common_unique_msgs::msg::UniHeader &,
  size_t current_alignment);
size_t
max_serialized_size_UniHeader(
  bool & full_bounded,
  bool & is_plain,
  size_t current_alignment);
}  // namespace typesupport_fastrtps_cpp
}  // namespace msg
}  // namespace common_unique_msgs


namespace common_unique_msgs
{

namespace msg
{

namespace typesupport_fastrtps_cpp
{

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_common_unique_msgs
cdr_serialize(
  const common_unique_msgs::msg::Location & ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  // Member: header
  common_unique_msgs::msg::typesupport_fastrtps_cpp::cdr_serialize(
    ros_message.header,
    cdr);
  // Member: ui_satel_lon
  cdr << ros_message.ui_satel_lon;
  // Member: ui_satel_lat
  cdr << ros_message.ui_satel_lat;
  // Member: ui_satel_alt
  cdr << ros_message.ui_satel_alt;
  // Member: uc_satle_state
  cdr << ros_message.uc_satle_state;
  // Member: ui_nav_lon
  cdr << ros_message.ui_nav_lon;
  // Member: ui_nav_lat
  cdr << ros_message.ui_nav_lat;
  // Member: ui_nav_alt
  cdr << ros_message.ui_nav_alt;
  // Member: us_nav_yaw
  cdr << ros_message.us_nav_yaw;
  // Member: s_nav_pitch
  cdr << ros_message.s_nav_pitch;
  // Member: s_nav_roll
  cdr << ros_message.s_nav_roll;
  // Member: s_nav_vx
  cdr << ros_message.s_nav_vx;
  // Member: s_nav_vy
  cdr << ros_message.s_nav_vy;
  // Member: s_nav_vz
  cdr << ros_message.s_nav_vz;
  // Member: s_nav_wx
  cdr << ros_message.s_nav_wx;
  // Member: s_nav_wy
  cdr << ros_message.s_nav_wy;
  // Member: s_nav_wz
  cdr << ros_message.s_nav_wz;
  // Member: ui_mileage
  cdr << ros_message.ui_mileage;
  // Member: ul_satel_time
  cdr << ros_message.ul_satel_time;
  // Member: ui_work_time
  cdr << ros_message.ui_work_time;
  // Member: uc_work_state
  cdr << ros_message.uc_work_state;
  // Member: uc_nav_state
  cdr << ros_message.uc_nav_state;
  // Member: reserve1
  cdr << ros_message.reserve1;
  // Member: reserve2
  cdr << ros_message.reserve2;
  // Member: us_check_sum
  cdr << ros_message.us_check_sum;
  return true;
}

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_common_unique_msgs
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  common_unique_msgs::msg::Location & ros_message)
{
  // Member: header
  common_unique_msgs::msg::typesupport_fastrtps_cpp::cdr_deserialize(
    cdr, ros_message.header);

  // Member: ui_satel_lon
  cdr >> ros_message.ui_satel_lon;

  // Member: ui_satel_lat
  cdr >> ros_message.ui_satel_lat;

  // Member: ui_satel_alt
  cdr >> ros_message.ui_satel_alt;

  // Member: uc_satle_state
  cdr >> ros_message.uc_satle_state;

  // Member: ui_nav_lon
  cdr >> ros_message.ui_nav_lon;

  // Member: ui_nav_lat
  cdr >> ros_message.ui_nav_lat;

  // Member: ui_nav_alt
  cdr >> ros_message.ui_nav_alt;

  // Member: us_nav_yaw
  cdr >> ros_message.us_nav_yaw;

  // Member: s_nav_pitch
  cdr >> ros_message.s_nav_pitch;

  // Member: s_nav_roll
  cdr >> ros_message.s_nav_roll;

  // Member: s_nav_vx
  cdr >> ros_message.s_nav_vx;

  // Member: s_nav_vy
  cdr >> ros_message.s_nav_vy;

  // Member: s_nav_vz
  cdr >> ros_message.s_nav_vz;

  // Member: s_nav_wx
  cdr >> ros_message.s_nav_wx;

  // Member: s_nav_wy
  cdr >> ros_message.s_nav_wy;

  // Member: s_nav_wz
  cdr >> ros_message.s_nav_wz;

  // Member: ui_mileage
  cdr >> ros_message.ui_mileage;

  // Member: ul_satel_time
  cdr >> ros_message.ul_satel_time;

  // Member: ui_work_time
  cdr >> ros_message.ui_work_time;

  // Member: uc_work_state
  cdr >> ros_message.uc_work_state;

  // Member: uc_nav_state
  cdr >> ros_message.uc_nav_state;

  // Member: reserve1
  cdr >> ros_message.reserve1;

  // Member: reserve2
  cdr >> ros_message.reserve2;

  // Member: us_check_sum
  cdr >> ros_message.us_check_sum;

  return true;
}  // NOLINT(readability/fn_size)

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_common_unique_msgs
get_serialized_size(
  const common_unique_msgs::msg::Location & ros_message,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // Member: header

  current_alignment +=
    common_unique_msgs::msg::typesupport_fastrtps_cpp::get_serialized_size(
    ros_message.header, current_alignment);
  // Member: ui_satel_lon
  {
    size_t item_size = sizeof(ros_message.ui_satel_lon);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ui_satel_lat
  {
    size_t item_size = sizeof(ros_message.ui_satel_lat);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ui_satel_alt
  {
    size_t item_size = sizeof(ros_message.ui_satel_alt);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: uc_satle_state
  {
    size_t item_size = sizeof(ros_message.uc_satle_state);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ui_nav_lon
  {
    size_t item_size = sizeof(ros_message.ui_nav_lon);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ui_nav_lat
  {
    size_t item_size = sizeof(ros_message.ui_nav_lat);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ui_nav_alt
  {
    size_t item_size = sizeof(ros_message.ui_nav_alt);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: us_nav_yaw
  {
    size_t item_size = sizeof(ros_message.us_nav_yaw);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_pitch
  {
    size_t item_size = sizeof(ros_message.s_nav_pitch);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_roll
  {
    size_t item_size = sizeof(ros_message.s_nav_roll);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_vx
  {
    size_t item_size = sizeof(ros_message.s_nav_vx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_vy
  {
    size_t item_size = sizeof(ros_message.s_nav_vy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_vz
  {
    size_t item_size = sizeof(ros_message.s_nav_vz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_wx
  {
    size_t item_size = sizeof(ros_message.s_nav_wx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_wy
  {
    size_t item_size = sizeof(ros_message.s_nav_wy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_nav_wz
  {
    size_t item_size = sizeof(ros_message.s_nav_wz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ui_mileage
  {
    size_t item_size = sizeof(ros_message.ui_mileage);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ul_satel_time
  {
    size_t item_size = sizeof(ros_message.ul_satel_time);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: ui_work_time
  {
    size_t item_size = sizeof(ros_message.ui_work_time);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: uc_work_state
  {
    size_t item_size = sizeof(ros_message.uc_work_state);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: uc_nav_state
  {
    size_t item_size = sizeof(ros_message.uc_nav_state);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: reserve1
  {
    size_t item_size = sizeof(ros_message.reserve1);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: reserve2
  {
    size_t item_size = sizeof(ros_message.reserve2);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: us_check_sum
  {
    size_t item_size = sizeof(ros_message.us_check_sum);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_common_unique_msgs
max_serialized_size_Location(
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


  // Member: header
  {
    size_t array_size = 1;


    last_member_size = 0;
    for (size_t index = 0; index < array_size; ++index) {
      bool inner_full_bounded;
      bool inner_is_plain;
      size_t inner_size =
        common_unique_msgs::msg::typesupport_fastrtps_cpp::max_serialized_size_UniHeader(
        inner_full_bounded, inner_is_plain, current_alignment);
      last_member_size += inner_size;
      current_alignment += inner_size;
      full_bounded &= inner_full_bounded;
      is_plain &= inner_is_plain;
    }
  }

  // Member: ui_satel_lon
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: ui_satel_lat
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: ui_satel_alt
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: uc_satle_state
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint8_t);
    current_alignment += array_size * sizeof(uint8_t);
  }

  // Member: ui_nav_lon
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: ui_nav_lat
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: ui_nav_alt
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: us_nav_yaw
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_pitch
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_roll
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_vx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_vy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_vz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_wx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_wy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_nav_wz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: ui_mileage
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: ul_satel_time
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint64_t);
    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }

  // Member: ui_work_time
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: uc_work_state
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint8_t);
    current_alignment += array_size * sizeof(uint8_t);
  }

  // Member: uc_nav_state
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint8_t);
    current_alignment += array_size * sizeof(uint8_t);
  }

  // Member: reserve1
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: reserve2
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: us_check_sum
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
    using DataType = common_unique_msgs::msg::Location;
    is_plain =
      (
      offsetof(DataType, us_check_sum) +
      last_member_size
      ) == ret_val;
  }

  return ret_val;
}

static bool _Location__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  auto typed_message =
    static_cast<const common_unique_msgs::msg::Location *>(
    untyped_ros_message);
  return cdr_serialize(*typed_message, cdr);
}

static bool _Location__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  auto typed_message =
    static_cast<common_unique_msgs::msg::Location *>(
    untyped_ros_message);
  return cdr_deserialize(cdr, *typed_message);
}

static uint32_t _Location__get_serialized_size(
  const void * untyped_ros_message)
{
  auto typed_message =
    static_cast<const common_unique_msgs::msg::Location *>(
    untyped_ros_message);
  return static_cast<uint32_t>(get_serialized_size(*typed_message, 0));
}

static size_t _Location__max_serialized_size(char & bounds_info)
{
  bool full_bounded;
  bool is_plain;
  size_t ret_val;

  ret_val = max_serialized_size_Location(full_bounded, is_plain, 0);

  bounds_info =
    is_plain ? ROSIDL_TYPESUPPORT_FASTRTPS_PLAIN_TYPE :
    full_bounded ? ROSIDL_TYPESUPPORT_FASTRTPS_BOUNDED_TYPE : ROSIDL_TYPESUPPORT_FASTRTPS_UNBOUNDED_TYPE;
  return ret_val;
}

static message_type_support_callbacks_t _Location__callbacks = {
  "common_unique_msgs::msg",
  "Location",
  _Location__cdr_serialize,
  _Location__cdr_deserialize,
  _Location__get_serialized_size,
  _Location__max_serialized_size
};

static rosidl_message_type_support_t _Location__handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &_Location__callbacks,
  get_message_typesupport_handle_function,
};

}  // namespace typesupport_fastrtps_cpp

}  // namespace msg

}  // namespace common_unique_msgs

namespace rosidl_typesupport_fastrtps_cpp
{

template<>
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_EXPORT_common_unique_msgs
const rosidl_message_type_support_t *
get_message_type_support_handle<common_unique_msgs::msg::Location>()
{
  return &common_unique_msgs::msg::typesupport_fastrtps_cpp::_Location__handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, common_unique_msgs, msg, Location)() {
  return &common_unique_msgs::msg::typesupport_fastrtps_cpp::_Location__handle;
}

#ifdef __cplusplus
}
#endif
