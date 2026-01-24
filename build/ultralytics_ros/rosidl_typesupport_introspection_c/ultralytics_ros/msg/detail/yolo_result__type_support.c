// generated from rosidl_typesupport_introspection_c/resource/idl__type_support.c.em
// with input from ultralytics_ros:msg/YoloResult.idl
// generated code does not contain a copyright notice

#include <stddef.h>
#include "ultralytics_ros/msg/detail/yolo_result__rosidl_typesupport_introspection_c.h"
#include "ultralytics_ros/msg/rosidl_typesupport_introspection_c__visibility_control.h"
#include "rosidl_typesupport_introspection_c/field_types.h"
#include "rosidl_typesupport_introspection_c/identifier.h"
#include "rosidl_typesupport_introspection_c/message_introspection.h"
#include "ultralytics_ros/msg/detail/yolo_result__functions.h"
#include "ultralytics_ros/msg/detail/yolo_result__struct.h"


// Include directives for member types
// Member `header`
#include "std_msgs/msg/header.h"
// Member `header`
#include "std_msgs/msg/detail/header__rosidl_typesupport_introspection_c.h"
// Member `detections`
#include "vision_msgs/msg/detection2_d_array.h"
// Member `detections`
#include "vision_msgs/msg/detail/detection2_d_array__rosidl_typesupport_introspection_c.h"
// Member `masks`
#include "sensor_msgs/msg/image.h"
// Member `masks`
#include "sensor_msgs/msg/detail/image__rosidl_typesupport_introspection_c.h"

#ifdef __cplusplus
extern "C"
{
#endif

void ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_init_function(
  void * message_memory, enum rosidl_runtime_c__message_initialization _init)
{
  // TODO(karsten1987): initializers are not yet implemented for typesupport c
  // see https://github.com/ros2/ros2/issues/397
  (void) _init;
  ultralytics_ros__msg__YoloResult__init(message_memory);
}

void ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_fini_function(void * message_memory)
{
  ultralytics_ros__msg__YoloResult__fini(message_memory);
}

size_t ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__size_function__YoloResult__masks(
  const void * untyped_member)
{
  const sensor_msgs__msg__Image__Sequence * member =
    (const sensor_msgs__msg__Image__Sequence *)(untyped_member);
  return member->size;
}

const void * ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__get_const_function__YoloResult__masks(
  const void * untyped_member, size_t index)
{
  const sensor_msgs__msg__Image__Sequence * member =
    (const sensor_msgs__msg__Image__Sequence *)(untyped_member);
  return &member->data[index];
}

void * ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__get_function__YoloResult__masks(
  void * untyped_member, size_t index)
{
  sensor_msgs__msg__Image__Sequence * member =
    (sensor_msgs__msg__Image__Sequence *)(untyped_member);
  return &member->data[index];
}

void ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__fetch_function__YoloResult__masks(
  const void * untyped_member, size_t index, void * untyped_value)
{
  const sensor_msgs__msg__Image * item =
    ((const sensor_msgs__msg__Image *)
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__get_const_function__YoloResult__masks(untyped_member, index));
  sensor_msgs__msg__Image * value =
    (sensor_msgs__msg__Image *)(untyped_value);
  *value = *item;
}

void ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__assign_function__YoloResult__masks(
  void * untyped_member, size_t index, const void * untyped_value)
{
  sensor_msgs__msg__Image * item =
    ((sensor_msgs__msg__Image *)
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__get_function__YoloResult__masks(untyped_member, index));
  const sensor_msgs__msg__Image * value =
    (const sensor_msgs__msg__Image *)(untyped_value);
  *item = *value;
}

bool ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__resize_function__YoloResult__masks(
  void * untyped_member, size_t size)
{
  sensor_msgs__msg__Image__Sequence * member =
    (sensor_msgs__msg__Image__Sequence *)(untyped_member);
  sensor_msgs__msg__Image__Sequence__fini(member);
  return sensor_msgs__msg__Image__Sequence__init(member, size);
}

static rosidl_typesupport_introspection_c__MessageMember ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_member_array[3] = {
  {
    "header",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_MESSAGE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message (initialized later)
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(ultralytics_ros__msg__YoloResult, header),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL,  // fetch(index, &value) function pointer
    NULL,  // assign(index, value) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "detections",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_MESSAGE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message (initialized later)
    false,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(ultralytics_ros__msg__YoloResult, detections),  // bytes offset in struct
    NULL,  // default value
    NULL,  // size() function pointer
    NULL,  // get_const(index) function pointer
    NULL,  // get(index) function pointer
    NULL,  // fetch(index, &value) function pointer
    NULL,  // assign(index, value) function pointer
    NULL  // resize(index) function pointer
  },
  {
    "masks",  // name
    rosidl_typesupport_introspection_c__ROS_TYPE_MESSAGE,  // type
    0,  // upper bound of string
    NULL,  // members of sub message (initialized later)
    true,  // is array
    0,  // array size
    false,  // is upper bound
    offsetof(ultralytics_ros__msg__YoloResult, masks),  // bytes offset in struct
    NULL,  // default value
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__size_function__YoloResult__masks,  // size() function pointer
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__get_const_function__YoloResult__masks,  // get_const(index) function pointer
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__get_function__YoloResult__masks,  // get(index) function pointer
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__fetch_function__YoloResult__masks,  // fetch(index, &value) function pointer
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__assign_function__YoloResult__masks,  // assign(index, value) function pointer
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__resize_function__YoloResult__masks  // resize(index) function pointer
  }
};

static const rosidl_typesupport_introspection_c__MessageMembers ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_members = {
  "ultralytics_ros__msg",  // message namespace
  "YoloResult",  // message name
  3,  // number of fields
  sizeof(ultralytics_ros__msg__YoloResult),
  ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_member_array,  // message members
  ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_init_function,  // function to initialize message memory (memory has to be allocated)
  ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_fini_function  // function to terminate message instance (will not free memory)
};

// this is not const since it must be initialized on first access
// since C does not allow non-integral compile-time constants
static rosidl_message_type_support_t ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_type_support_handle = {
  0,
  &ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_members,
  get_message_typesupport_handle_function,
};

ROSIDL_TYPESUPPORT_INTROSPECTION_C_EXPORT_ultralytics_ros
const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, ultralytics_ros, msg, YoloResult)() {
  ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_member_array[0].members_ =
    ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, std_msgs, msg, Header)();
  ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_member_array[1].members_ =
    ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, vision_msgs, msg, Detection2DArray)();
  ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_member_array[2].members_ =
    ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_introspection_c, sensor_msgs, msg, Image)();
  if (!ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_type_support_handle.typesupport_identifier) {
    ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_type_support_handle.typesupport_identifier =
      rosidl_typesupport_introspection_c__identifier;
  }
  return &ultralytics_ros__msg__YoloResult__rosidl_typesupport_introspection_c__YoloResult_message_type_support_handle;
}
#ifdef __cplusplus
}
#endif
