// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from ultralytics_ros:msg/YoloResult.idl
// generated code does not contain a copyright notice

#ifndef ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__STRUCT_H_
#define ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__STRUCT_H_

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
// Member 'detections'
#include "vision_msgs/msg/detail/detection2_d_array__struct.h"
// Member 'masks'
#include "sensor_msgs/msg/detail/image__struct.h"

/// Struct defined in msg/YoloResult in the package ultralytics_ros.
typedef struct ultralytics_ros__msg__YoloResult
{
  std_msgs__msg__Header header;
  vision_msgs__msg__Detection2DArray detections;
  sensor_msgs__msg__Image__Sequence masks;
} ultralytics_ros__msg__YoloResult;

// Struct for a sequence of ultralytics_ros__msg__YoloResult.
typedef struct ultralytics_ros__msg__YoloResult__Sequence
{
  ultralytics_ros__msg__YoloResult * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} ultralytics_ros__msg__YoloResult__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // ULTRALYTICS_ROS__MSG__DETAIL__YOLO_RESULT__STRUCT_H_
