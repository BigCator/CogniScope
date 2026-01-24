// NOLINT: This file starts with a BOM since it contain non-ASCII characters
// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__STRUCT_H_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Include directives for member types
// Member 'header'
#include "common_unique_msgs/msg/detail/uni_header__struct.h"

/// Struct defined in msg/LocationInitial in the package common_unique_msgs.
typedef struct common_unique_msgs__msg__LocationInitial
{
  common_unique_msgs__msg__UniHeader header;
  /// 加表速度 [-1000,1000] 系数0.01
  int16_t s_ins_vx;
  int16_t s_ins_vy;
  int16_t s_ins_vz;
  /// 加表加速度 [-20000000,20000000] 系数0.00001
  int32_t i_ins_ax;
  int32_t i_ins_ay;
  int32_t i_ins_az;
  /// 陀螺角 系数1
  float f_ins_anglex;
  float f_ins_angley;
  float f_ins_anglez;
  /// 陀螺角速度 [-400.0,400.0] 系数1
  float f_ins_wx;
  float f_ins_wy;
  float f_ins_wz;
  /// 陀螺角加速度 [-1000.0,1000.0] 系数1
  float f_ins_wax;
  float f_ins_way;
  float f_ins_waz;
  uint16_t us_check_sum;
} common_unique_msgs__msg__LocationInitial;

// Struct for a sequence of common_unique_msgs__msg__LocationInitial.
typedef struct common_unique_msgs__msg__LocationInitial__Sequence
{
  common_unique_msgs__msg__LocationInitial * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} common_unique_msgs__msg__LocationInitial__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__STRUCT_H_
