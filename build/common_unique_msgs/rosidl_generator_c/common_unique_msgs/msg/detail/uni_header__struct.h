// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__STRUCT_H_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

/// Struct defined in msg/UniHeader in the package common_unique_msgs.
typedef struct common_unique_msgs__msg__UniHeader
{
  uint32_t ui_msg_id;
  uint32_t ui_msg_datalength;
  uint64_t ul_msg_stamp;
} common_unique_msgs__msg__UniHeader;

// Struct for a sequence of common_unique_msgs__msg__UniHeader.
typedef struct common_unique_msgs__msg__UniHeader__Sequence
{
  common_unique_msgs__msg__UniHeader * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} common_unique_msgs__msg__UniHeader__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__STRUCT_H_
