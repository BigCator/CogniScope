// NOLINT: This file starts with a BOM since it contain non-ASCII characters
// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from common_unique_msgs:msg/CustomIMU.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__STRUCT_H_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__STRUCT_H_

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
#include "std_msgs/msg/detail/header__struct.h"
// Member 'checksum'
#include "rosidl_runtime_c/string.h"

/// Struct defined in msg/CustomIMU in the package common_unique_msgs.
/**
  * CustomIMU.msg
 */
typedef struct common_unique_msgs__msg__CustomIMU
{
  /// ROS标准头（时间戳+坐标系）
  std_msgs__msg__Header header;
  /// GPS时间信息
  /// 自1980-1-6起累计的周数（如1550）
  uint16_t gps_week;
  /// 周内秒数（如298625.000）
  double gps_time;
  /// 陀螺仪数据（单位：度/s）
  double gyro_x;
  double gyro_y;
  double gyro_z;
  /// 加速度计数据（单位：m/s²）
  double acc_x;
  double acc_y;
  double acc_z;
  /// 温度（单位：°C）
  double temperature;
  /// 原始校验和（如"A3"）
  rosidl_runtime_c__String checksum;
} common_unique_msgs__msg__CustomIMU;

// Struct for a sequence of common_unique_msgs__msg__CustomIMU.
typedef struct common_unique_msgs__msg__CustomIMU__Sequence
{
  common_unique_msgs__msg__CustomIMU * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} common_unique_msgs__msg__CustomIMU__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_IMU__STRUCT_H_
