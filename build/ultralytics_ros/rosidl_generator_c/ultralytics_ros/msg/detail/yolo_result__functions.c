// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from ultralytics_ros:msg/YoloResult.idl
// generated code does not contain a copyright notice
#include "ultralytics_ros/msg/detail/yolo_result__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


// Include directives for member types
// Member `header`
#include "std_msgs/msg/detail/header__functions.h"
// Member `detections`
#include "vision_msgs/msg/detail/detection2_d_array__functions.h"
// Member `masks`
#include "sensor_msgs/msg/detail/image__functions.h"

bool
ultralytics_ros__msg__YoloResult__init(ultralytics_ros__msg__YoloResult * msg)
{
  if (!msg) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__init(&msg->header)) {
    ultralytics_ros__msg__YoloResult__fini(msg);
    return false;
  }
  // detections
  if (!vision_msgs__msg__Detection2DArray__init(&msg->detections)) {
    ultralytics_ros__msg__YoloResult__fini(msg);
    return false;
  }
  // masks
  if (!sensor_msgs__msg__Image__Sequence__init(&msg->masks, 0)) {
    ultralytics_ros__msg__YoloResult__fini(msg);
    return false;
  }
  return true;
}

void
ultralytics_ros__msg__YoloResult__fini(ultralytics_ros__msg__YoloResult * msg)
{
  if (!msg) {
    return;
  }
  // header
  std_msgs__msg__Header__fini(&msg->header);
  // detections
  vision_msgs__msg__Detection2DArray__fini(&msg->detections);
  // masks
  sensor_msgs__msg__Image__Sequence__fini(&msg->masks);
}

bool
ultralytics_ros__msg__YoloResult__are_equal(const ultralytics_ros__msg__YoloResult * lhs, const ultralytics_ros__msg__YoloResult * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__are_equal(
      &(lhs->header), &(rhs->header)))
  {
    return false;
  }
  // detections
  if (!vision_msgs__msg__Detection2DArray__are_equal(
      &(lhs->detections), &(rhs->detections)))
  {
    return false;
  }
  // masks
  if (!sensor_msgs__msg__Image__Sequence__are_equal(
      &(lhs->masks), &(rhs->masks)))
  {
    return false;
  }
  return true;
}

bool
ultralytics_ros__msg__YoloResult__copy(
  const ultralytics_ros__msg__YoloResult * input,
  ultralytics_ros__msg__YoloResult * output)
{
  if (!input || !output) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__copy(
      &(input->header), &(output->header)))
  {
    return false;
  }
  // detections
  if (!vision_msgs__msg__Detection2DArray__copy(
      &(input->detections), &(output->detections)))
  {
    return false;
  }
  // masks
  if (!sensor_msgs__msg__Image__Sequence__copy(
      &(input->masks), &(output->masks)))
  {
    return false;
  }
  return true;
}

ultralytics_ros__msg__YoloResult *
ultralytics_ros__msg__YoloResult__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  ultralytics_ros__msg__YoloResult * msg = (ultralytics_ros__msg__YoloResult *)allocator.allocate(sizeof(ultralytics_ros__msg__YoloResult), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(ultralytics_ros__msg__YoloResult));
  bool success = ultralytics_ros__msg__YoloResult__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
ultralytics_ros__msg__YoloResult__destroy(ultralytics_ros__msg__YoloResult * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    ultralytics_ros__msg__YoloResult__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
ultralytics_ros__msg__YoloResult__Sequence__init(ultralytics_ros__msg__YoloResult__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  ultralytics_ros__msg__YoloResult * data = NULL;

  if (size) {
    data = (ultralytics_ros__msg__YoloResult *)allocator.zero_allocate(size, sizeof(ultralytics_ros__msg__YoloResult), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = ultralytics_ros__msg__YoloResult__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        ultralytics_ros__msg__YoloResult__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
ultralytics_ros__msg__YoloResult__Sequence__fini(ultralytics_ros__msg__YoloResult__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      ultralytics_ros__msg__YoloResult__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

ultralytics_ros__msg__YoloResult__Sequence *
ultralytics_ros__msg__YoloResult__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  ultralytics_ros__msg__YoloResult__Sequence * array = (ultralytics_ros__msg__YoloResult__Sequence *)allocator.allocate(sizeof(ultralytics_ros__msg__YoloResult__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = ultralytics_ros__msg__YoloResult__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
ultralytics_ros__msg__YoloResult__Sequence__destroy(ultralytics_ros__msg__YoloResult__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    ultralytics_ros__msg__YoloResult__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
ultralytics_ros__msg__YoloResult__Sequence__are_equal(const ultralytics_ros__msg__YoloResult__Sequence * lhs, const ultralytics_ros__msg__YoloResult__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!ultralytics_ros__msg__YoloResult__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
ultralytics_ros__msg__YoloResult__Sequence__copy(
  const ultralytics_ros__msg__YoloResult__Sequence * input,
  ultralytics_ros__msg__YoloResult__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(ultralytics_ros__msg__YoloResult);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    ultralytics_ros__msg__YoloResult * data =
      (ultralytics_ros__msg__YoloResult *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!ultralytics_ros__msg__YoloResult__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          ultralytics_ros__msg__YoloResult__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!ultralytics_ros__msg__YoloResult__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
