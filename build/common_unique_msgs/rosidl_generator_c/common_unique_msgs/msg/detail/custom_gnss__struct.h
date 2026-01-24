// NOLINT: This file starts with a BOM since it contain non-ASCII characters
// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from common_unique_msgs:msg/CustomGNSS.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__STRUCT_H_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__STRUCT_H_

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

/// Struct defined in msg/CustomGNSS in the package common_unique_msgs.
/**
  * CustomGNSS.msg
 */
typedef struct common_unique_msgs__msg__CustomGNSS
{
  /// 标准头（时间戳 + 坐标系）
  std_msgs__msg__Header header;
  /// GPS周数
  uint16_t gps_week;
  /// GPS周内秒数 [0.0-604800.0)
  double gps_time;
  /// 航向角（0-360度）
  double heading;
  /// 俯仰角（-90-90度）
  double pitch;
  /// 横滚角（-180-180度）
  double roll;
  /// 纬度（-90-90度）
  double latitude;
  /// 经度（-180-180度）
  double longitude;
  /// 海拔（米）
  double altitude;
  /// 东向速度（m/s）
  double ve;
  /// 北向速度（m/s）
  double vn;
  /// 天向速度（m/s）
  double vu;
  /// 基线长度（米）
  double baseline;
  /// 主天线卫星数
  uint8_t nsv1;
  /// 辅天线卫星数
  uint8_t nsv2;
  /// 状态字（二进制位掩码）
  uint16_t status;
  /// 校验和（如"1A"）
  rosidl_runtime_c__String checksum;
} common_unique_msgs__msg__CustomGNSS;

// Struct for a sequence of common_unique_msgs__msg__CustomGNSS.
typedef struct common_unique_msgs__msg__CustomGNSS__Sequence
{
  common_unique_msgs__msg__CustomGNSS * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} common_unique_msgs__msg__CustomGNSS__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__CUSTOM_GNSS__STRUCT_H_
