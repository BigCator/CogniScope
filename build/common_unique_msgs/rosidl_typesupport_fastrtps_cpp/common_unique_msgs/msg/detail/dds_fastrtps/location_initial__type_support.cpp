// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__type_support.cpp.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/location_initial__rosidl_typesupport_fastrtps_cpp.hpp"
#include "common_unique_msgs/msg/detail/location_initial__struct.hpp"

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
  const common_unique_msgs::msg::LocationInitial & ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  // Member: header
  common_unique_msgs::msg::typesupport_fastrtps_cpp::cdr_serialize(
    ros_message.header,
    cdr);
  // Member: s_ins_vx
  cdr << ros_message.s_ins_vx;
  // Member: s_ins_vy
  cdr << ros_message.s_ins_vy;
  // Member: s_ins_vz
  cdr << ros_message.s_ins_vz;
  // Member: i_ins_ax
  cdr << ros_message.i_ins_ax;
  // Member: i_ins_ay
  cdr << ros_message.i_ins_ay;
  // Member: i_ins_az
  cdr << ros_message.i_ins_az;
  // Member: f_ins_anglex
  cdr << ros_message.f_ins_anglex;
  // Member: f_ins_angley
  cdr << ros_message.f_ins_angley;
  // Member: f_ins_anglez
  cdr << ros_message.f_ins_anglez;
  // Member: f_ins_wx
  cdr << ros_message.f_ins_wx;
  // Member: f_ins_wy
  cdr << ros_message.f_ins_wy;
  // Member: f_ins_wz
  cdr << ros_message.f_ins_wz;
  // Member: f_ins_wax
  cdr << ros_message.f_ins_wax;
  // Member: f_ins_way
  cdr << ros_message.f_ins_way;
  // Member: f_ins_waz
  cdr << ros_message.f_ins_waz;
  // Member: us_check_sum
  cdr << ros_message.us_check_sum;
  return true;
}

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_common_unique_msgs
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  common_unique_msgs::msg::LocationInitial & ros_message)
{
  // Member: header
  common_unique_msgs::msg::typesupport_fastrtps_cpp::cdr_deserialize(
    cdr, ros_message.header);

  // Member: s_ins_vx
  cdr >> ros_message.s_ins_vx;

  // Member: s_ins_vy
  cdr >> ros_message.s_ins_vy;

  // Member: s_ins_vz
  cdr >> ros_message.s_ins_vz;

  // Member: i_ins_ax
  cdr >> ros_message.i_ins_ax;

  // Member: i_ins_ay
  cdr >> ros_message.i_ins_ay;

  // Member: i_ins_az
  cdr >> ros_message.i_ins_az;

  // Member: f_ins_anglex
  cdr >> ros_message.f_ins_anglex;

  // Member: f_ins_angley
  cdr >> ros_message.f_ins_angley;

  // Member: f_ins_anglez
  cdr >> ros_message.f_ins_anglez;

  // Member: f_ins_wx
  cdr >> ros_message.f_ins_wx;

  // Member: f_ins_wy
  cdr >> ros_message.f_ins_wy;

  // Member: f_ins_wz
  cdr >> ros_message.f_ins_wz;

  // Member: f_ins_wax
  cdr >> ros_message.f_ins_wax;

  // Member: f_ins_way
  cdr >> ros_message.f_ins_way;

  // Member: f_ins_waz
  cdr >> ros_message.f_ins_waz;

  // Member: us_check_sum
  cdr >> ros_message.us_check_sum;

  return true;
}  // NOLINT(readability/fn_size)

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_common_unique_msgs
get_serialized_size(
  const common_unique_msgs::msg::LocationInitial & ros_message,
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
  // Member: s_ins_vx
  {
    size_t item_size = sizeof(ros_message.s_ins_vx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_ins_vy
  {
    size_t item_size = sizeof(ros_message.s_ins_vy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: s_ins_vz
  {
    size_t item_size = sizeof(ros_message.s_ins_vz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: i_ins_ax
  {
    size_t item_size = sizeof(ros_message.i_ins_ax);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: i_ins_ay
  {
    size_t item_size = sizeof(ros_message.i_ins_ay);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: i_ins_az
  {
    size_t item_size = sizeof(ros_message.i_ins_az);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_anglex
  {
    size_t item_size = sizeof(ros_message.f_ins_anglex);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_angley
  {
    size_t item_size = sizeof(ros_message.f_ins_angley);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_anglez
  {
    size_t item_size = sizeof(ros_message.f_ins_anglez);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_wx
  {
    size_t item_size = sizeof(ros_message.f_ins_wx);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_wy
  {
    size_t item_size = sizeof(ros_message.f_ins_wy);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_wz
  {
    size_t item_size = sizeof(ros_message.f_ins_wz);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_wax
  {
    size_t item_size = sizeof(ros_message.f_ins_wax);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_way
  {
    size_t item_size = sizeof(ros_message.f_ins_way);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // Member: f_ins_waz
  {
    size_t item_size = sizeof(ros_message.f_ins_waz);
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
max_serialized_size_LocationInitial(
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

  // Member: s_ins_vx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_ins_vy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: s_ins_vz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint16_t);
    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  // Member: i_ins_ax
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: i_ins_ay
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: i_ins_az
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_anglex
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_angley
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_anglez
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_wx
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_wy
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_wz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_wax
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_way
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
  }

  // Member: f_ins_waz
  {
    size_t array_size = 1;

    last_member_size = array_size * sizeof(uint32_t);
    current_alignment += array_size * sizeof(uint32_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint32_t));
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
    using DataType = common_unique_msgs::msg::LocationInitial;
    is_plain =
      (
      offsetof(DataType, us_check_sum) +
      last_member_size
      ) == ret_val;
  }

  return ret_val;
}

static bool _LocationInitial__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  auto typed_message =
    static_cast<const common_unique_msgs::msg::LocationInitial *>(
    untyped_ros_message);
  return cdr_serialize(*typed_message, cdr);
}

static bool _LocationInitial__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  auto typed_message =
    static_cast<common_unique_msgs::msg::LocationInitial *>(
    untyped_ros_message);
  return cdr_deserialize(cdr, *typed_message);
}

static uint32_t _LocationInitial__get_serialized_size(
  const void * untyped_ros_message)
{
  auto typed_message =
    static_cast<const common_unique_msgs::msg::LocationInitial *>(
    untyped_ros_message);
  return static_cast<uint32_t>(get_serialized_size(*typed_message, 0));
}

static size_t _LocationInitial__max_serialized_size(char & bounds_info)
{
  bool full_bounded;
  bool is_plain;
  size_t ret_val;

  ret_val = max_serialized_size_LocationInitial(full_bounded, is_plain, 0);

  bounds_info =
    is_plain ? ROSIDL_TYPESUPPORT_FASTRTPS_PLAIN_TYPE :
    full_bounded ? ROSIDL_TYPESUPPORT_FASTRTPS_BOUNDED_TYPE : ROSIDL_TYPESUPPORT_FASTRTPS_UNBOUNDED_TYPE;
  return ret_val;
}

static message_type_support_callbacks_t _LocationInitial__callbacks = {
  "common_unique_msgs::msg",
  "LocationInitial",
  _LocationInitial__cdr_serialize,
  _LocationInitial__cdr_deserialize,
  _LocationInitial__get_serialized_size,
  _LocationInitial__max_serialized_size
};

static rosidl_message_type_support_t _LocationInitial__handle = {
  rosidl_typesupport_fastrtps_cpp::typesupport_identifier,
  &_LocationInitial__callbacks,
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
get_message_type_support_handle<common_unique_msgs::msg::LocationInitial>()
{
  return &common_unique_msgs::msg::typesupport_fastrtps_cpp::_LocationInitial__handle;
}

}  // namespace rosidl_typesupport_fastrtps_cpp

#ifdef __cplusplus
extern "C"
{
#endif

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, common_unique_msgs, msg, LocationInitial)() {
  return &common_unique_msgs::msg::typesupport_fastrtps_cpp::_LocationInitial__handle;
}

#ifdef __cplusplus
}
#endif
