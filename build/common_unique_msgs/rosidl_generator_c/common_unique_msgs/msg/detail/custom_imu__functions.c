// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from common_unique_msgs:msg/CustomIMU.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/custom_imu__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


// Include directives for member types
// Member `header`
#include "std_msgs/msg/detail/header__functions.h"
// Member `checksum`
#include "rosidl_runtime_c/string_functions.h"

bool
common_unique_msgs__msg__CustomIMU__init(common_unique_msgs__msg__CustomIMU * msg)
{
  if (!msg) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__init(&msg->header)) {
    common_unique_msgs__msg__CustomIMU__fini(msg);
    return false;
  }
  // gps_week
  // gps_time
  // gyro_x
  // gyro_y
  // gyro_z
  // acc_x
  // acc_y
  // acc_z
  // temperature
  // checksum
  if (!rosidl_runtime_c__String__init(&msg->checksum)) {
    common_unique_msgs__msg__CustomIMU__fini(msg);
    return false;
  }
  return true;
}

void
common_unique_msgs__msg__CustomIMU__fini(common_unique_msgs__msg__CustomIMU * msg)
{
  if (!msg) {
    return;
  }
  // header
  std_msgs__msg__Header__fini(&msg->header);
  // gps_week
  // gps_time
  // gyro_x
  // gyro_y
  // gyro_z
  // acc_x
  // acc_y
  // acc_z
  // temperature
  // checksum
  rosidl_runtime_c__String__fini(&msg->checksum);
}

bool
common_unique_msgs__msg__CustomIMU__are_equal(const common_unique_msgs__msg__CustomIMU * lhs, const common_unique_msgs__msg__CustomIMU * rhs)
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
  // gps_week
  if (lhs->gps_week != rhs->gps_week) {
    return false;
  }
  // gps_time
  if (lhs->gps_time != rhs->gps_time) {
    return false;
  }
  // gyro_x
  if (lhs->gyro_x != rhs->gyro_x) {
    return false;
  }
  // gyro_y
  if (lhs->gyro_y != rhs->gyro_y) {
    return false;
  }
  // gyro_z
  if (lhs->gyro_z != rhs->gyro_z) {
    return false;
  }
  // acc_x
  if (lhs->acc_x != rhs->acc_x) {
    return false;
  }
  // acc_y
  if (lhs->acc_y != rhs->acc_y) {
    return false;
  }
  // acc_z
  if (lhs->acc_z != rhs->acc_z) {
    return false;
  }
  // temperature
  if (lhs->temperature != rhs->temperature) {
    return false;
  }
  // checksum
  if (!rosidl_runtime_c__String__are_equal(
      &(lhs->checksum), &(rhs->checksum)))
  {
    return false;
  }
  return true;
}

bool
common_unique_msgs__msg__CustomIMU__copy(
  const common_unique_msgs__msg__CustomIMU * input,
  common_unique_msgs__msg__CustomIMU * output)
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
  // gps_week
  output->gps_week = input->gps_week;
  // gps_time
  output->gps_time = input->gps_time;
  // gyro_x
  output->gyro_x = input->gyro_x;
  // gyro_y
  output->gyro_y = input->gyro_y;
  // gyro_z
  output->gyro_z = input->gyro_z;
  // acc_x
  output->acc_x = input->acc_x;
  // acc_y
  output->acc_y = input->acc_y;
  // acc_z
  output->acc_z = input->acc_z;
  // temperature
  output->temperature = input->temperature;
  // checksum
  if (!rosidl_runtime_c__String__copy(
      &(input->checksum), &(output->checksum)))
  {
    return false;
  }
  return true;
}

common_unique_msgs__msg__CustomIMU *
common_unique_msgs__msg__CustomIMU__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__CustomIMU * msg = (common_unique_msgs__msg__CustomIMU *)allocator.allocate(sizeof(common_unique_msgs__msg__CustomIMU), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(common_unique_msgs__msg__CustomIMU));
  bool success = common_unique_msgs__msg__CustomIMU__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
common_unique_msgs__msg__CustomIMU__destroy(common_unique_msgs__msg__CustomIMU * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    common_unique_msgs__msg__CustomIMU__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
common_unique_msgs__msg__CustomIMU__Sequence__init(common_unique_msgs__msg__CustomIMU__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__CustomIMU * data = NULL;

  if (size) {
    data = (common_unique_msgs__msg__CustomIMU *)allocator.zero_allocate(size, sizeof(common_unique_msgs__msg__CustomIMU), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = common_unique_msgs__msg__CustomIMU__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        common_unique_msgs__msg__CustomIMU__fini(&data[i - 1]);
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
common_unique_msgs__msg__CustomIMU__Sequence__fini(common_unique_msgs__msg__CustomIMU__Sequence * array)
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
      common_unique_msgs__msg__CustomIMU__fini(&array->data[i]);
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

common_unique_msgs__msg__CustomIMU__Sequence *
common_unique_msgs__msg__CustomIMU__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__CustomIMU__Sequence * array = (common_unique_msgs__msg__CustomIMU__Sequence *)allocator.allocate(sizeof(common_unique_msgs__msg__CustomIMU__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = common_unique_msgs__msg__CustomIMU__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
common_unique_msgs__msg__CustomIMU__Sequence__destroy(common_unique_msgs__msg__CustomIMU__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    common_unique_msgs__msg__CustomIMU__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
common_unique_msgs__msg__CustomIMU__Sequence__are_equal(const common_unique_msgs__msg__CustomIMU__Sequence * lhs, const common_unique_msgs__msg__CustomIMU__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!common_unique_msgs__msg__CustomIMU__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
common_unique_msgs__msg__CustomIMU__Sequence__copy(
  const common_unique_msgs__msg__CustomIMU__Sequence * input,
  common_unique_msgs__msg__CustomIMU__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(common_unique_msgs__msg__CustomIMU);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    common_unique_msgs__msg__CustomIMU * data =
      (common_unique_msgs__msg__CustomIMU *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!common_unique_msgs__msg__CustomIMU__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          common_unique_msgs__msg__CustomIMU__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!common_unique_msgs__msg__CustomIMU__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
