// NOLINT: This file starts with a BOM since it contain non-ASCII characters
// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__STRUCT_H_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__STRUCT_H_

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

/// Struct defined in msg/Location in the package common_unique_msgs.
typedef struct common_unique_msgs__msg__Location
{
  common_unique_msgs__msg__UniHeader header;
  /// 卫星定位
  int32_t ui_satel_lon;
  int32_t ui_satel_lat;
  int32_t ui_satel_alt;
  /// 0x00 无效 0x01 单点 0x02 差分
  uint8_t uc_satle_state;
  /// 惯导定位
  int32_t ui_nav_lon;
  int32_t ui_nav_lat;
  int32_t ui_nav_alt;
  /// 航向角 【0-360】
  uint16_t us_nav_yaw;
  int16_t s_nav_pitch;
  int16_t s_nav_roll;
  int16_t s_nav_vx;
  int16_t s_nav_vy;
  int16_t s_nav_vz;
  int16_t s_nav_wx;
  int16_t s_nav_wy;
  int16_t s_nav_wz;
  uint32_t ui_mileage;
  uint64_t ul_satel_time;
  /// 工作时间 0.001 s
  uint32_t ui_work_time;
  /// 0 正在启动 1 启动完毕 2 正在对准 3 组合导航 4 无卫星导航 5 系统异常
  uint8_t uc_work_state;
  /// 0 纯惯性 1 惯性里程计 2 惯性卫星 3 无效
  uint8_t uc_nav_state;
  uint16_t reserve1;
  uint16_t reserve2;
  uint16_t us_check_sum;
} common_unique_msgs__msg__Location;

// Struct for a sequence of common_unique_msgs__msg__Location.
typedef struct common_unique_msgs__msg__Location__Sequence
{
  common_unique_msgs__msg__Location * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} common_unique_msgs__msg__Location__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION__STRUCT_H_
