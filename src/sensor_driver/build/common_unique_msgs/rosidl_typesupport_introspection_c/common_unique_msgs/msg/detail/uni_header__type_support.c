// generated from rosidl_typesupport_introspection_c/resource/idl__type_support.c.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice

#include <stddef.h>
#include "common_unique_msgs/msg/detail/uni_header__rosidl_typesupport_introspection_c.h"
#include "common_unique_msgs/msg/rosidl_typesupport_introspection_c__visibility_control.h"
#include "rosidl_typesupport_introspection_c/field_types.h"
#include "rosidl_typesupport_introspection_c/identifier.h"
#include "rosidl_typesupport_introspection_c/message_introspection.h"
#include "common_unique_msgs/msg/detail/uni_header__functions.h"
#include "common_unique_msgs/msg/detail/uni_header__struct.h"


#ifdef __cplusplus
extern "C"
{
#endif

void common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_init_function(
  void * message_memory, enum rosidl_runtime_c__message_initialization _init)
{
  // TODO(karsten1987): initializers are not yet implemented for typesupport c
  // see https://github.com/ros2/ros2/issues/397
  (void) _init;
  common_unique_msgs__msg__UniHeader__init(message_memory);
}

void common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_fini_function(void * message_memory)
{
  common_unique_msgs__msg__UniHeader__fini(message_memory);
}

static rosidl_typesupport_introspection_c__MessageMember common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_member_array[3] = {
  {
    "ui_msg_id",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_UINT32,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(common_unique_msgs__msg__UniHeader, ui_msg_id),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL,  // fetch(index, &value) function pointer
    NULL,  // assign(index, value) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "ui_msg_datalength",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_UINT32,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(common_unique_msgs__msg__UniHeader, ui_msg_datalength),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL,  // fetch(index, &value) function pointer
    NULL,  // assign(index, value) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "ul_msg_stamp",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_UINT64,  // type
    0,  // upper bound of string
    NULL,  // members of sub message
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(common_unique_msgs__msg__UniHeader, ul_msg_stamp),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL,  // fetch(index, &value) function pointer
    NULL,  // assign(index, value) function pointer
    NULL  // resize(index) function pointer
  }
};

static const rosidl_typesupport_introspection_c__MessageMembers common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_members = {
  "common_unique_msgs__msg",  // message namespace
  "UniHeader",  // message name
  3,  // number of fields
  sizeof(common_unique_msgs__msg__UniHeader),
  common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_member_array,  // message members
  common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_init_function,  // function to initialize message memory (memory has to be allocated)
  common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_fini_function  // function to terminate message instance (will not free memory)
};

// this is not const since it must be initialized on first access
// since C does not allow non-integral compile-time constants
static rosidl_message_type_support_t common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_type_support_handle = {
  0,
  &common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_members,
  get_message_typesupport_handle_function,
};

ROSIDL_TYPESUPPORT_INTROSPECTION_C_EXPORT_common_unique_msgs
const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, common_unique_msgs, msg, UniHeader)() {
  if (!common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_type_support_handle.typesupport_identifier) {
    common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_type_support_handle.typesupport_identifier =
      rosidl_typesupport_introspection_c__identifier;
  }
  return &common_unique_msgs__msg__UniHeader__rosidl_typesupport_introspection_c__UniHeader_message_type_support_handle;
}
#ifdef __cplusplus
}
#endif
