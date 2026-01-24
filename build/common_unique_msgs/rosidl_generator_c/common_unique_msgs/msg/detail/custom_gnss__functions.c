// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from common_unique_msgs:msg/CustomGNSS.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/custom_gnss__functions.h"

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
common_unique_msgs__msg__CustomGNSS__init(common_unique_msgs__msg__CustomGNSS * msg)
{
  if (!msg) {
    return false;
  }
  // header
  if (!std_msgs__msg__Header__init(&msg->header)) {
    common_unique_msgs__msg__CustomGNSS__fini(msg);
    return false;
  }
  // gps_week
  // gps_time
  // heading
  // pitch
  // roll
  // latitude
  // longitude
  // altitude
  // ve
  // vn
  // vu
  // baseline
  // nsv1
  // nsv2
  // status
  // checksum
  if (!rosidl_runtime_c__String__init(&msg->checksum)) {
    common_unique_msgs__msg__CustomGNSS__fini(msg);
    return false;
  }
  return true;
}

void
common_unique_msgs__msg__CustomGNSS__fini(common_unique_msgs__msg__CustomGNSS * msg)
{
  if (!msg) {
    return;
  }
  // header
  std_msgs__msg__Header__fini(&msg->header);
  // gps_week
  // gps_time
  // heading
  // pitch
  // roll
  // latitude
  // longitude
  // altitude
  // ve
  // vn
  // vu
  // baseline
  // nsv1
  // nsv2
  // status
  // checksum
  rosidl_runtime_c__String__fini(&msg->checksum);
}

bool
common_unique_msgs__msg__CustomGNSS__are_equal(const common_unique_msgs__msg__CustomGNSS * lhs, const common_unique_msgs__msg__CustomGNSS * rhs)
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
  // heading
  if (lhs->heading != rhs->heading) {
    return false;
  }
  // pitch
  if (lhs->pitch != rhs->pitch) {
    return false;
  }
  // roll
  if (lhs->roll != rhs->roll) {
    return false;
  }
  // latitude
  if (lhs->latitude != rhs->latitude) {
    return false;
  }
  // longitude
  if (lhs->longitude != rhs->longitude) {
    return false;
  }
  // altitude
  if (lhs->altitude != rhs->altitude) {
    return false;
  }
  // ve
  if (lhs->ve != rhs->ve) {
    return false;
  }
  // vn
  if (lhs->vn != rhs->vn) {
    return false;
  }
  // vu
  if (lhs->vu != rhs->vu) {
    return false;
  }
  // baseline
  if (lhs->baseline != rhs->baseline) {
    return false;
  }
  // nsv1
  if (lhs->nsv1 != rhs->nsv1) {
    return false;
  }
  // nsv2
  if (lhs->nsv2 != rhs->nsv2) {
    return false;
  }
  // status
  if (lhs->status != rhs->status) {
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
common_unique_msgs__msg__CustomGNSS__copy(
  const common_unique_msgs__msg__CustomGNSS * input,
  common_unique_msgs__msg__CustomGNSS * output)
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
  // heading
  output->heading = input->heading;
  // pitch
  output->pitch = input->pitch;
  // roll
  output->roll = input->roll;
  // latitude
  output->latitude = input->latitude;
  // longitude
  output->longitude = input->longitude;
  // altitude
  output->altitude = input->altitude;
  // ve
  output->ve = input->ve;
  // vn
  output->vn = input->vn;
  // vu
  output->vu = input->vu;
  // baseline
  output->baseline = input->baseline;
  // nsv1
  output->nsv1 = input->nsv1;
  // nsv2
  output->nsv2 = input->nsv2;
  // status
  output->status = input->status;
  // checksum
  if (!rosidl_runtime_c__String__copy(
      &(input->checksum), &(output->checksum)))
  {
    return false;
  }
  return true;
}

common_unique_msgs__msg__CustomGNSS *
common_unique_msgs__msg__CustomGNSS__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__CustomGNSS * msg = (common_unique_msgs__msg__CustomGNSS *)allocator.allocate(sizeof(common_unique_msgs__msg__CustomGNSS), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(common_unique_msgs__msg__CustomGNSS));
  bool success = common_unique_msgs__msg__CustomGNSS__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
common_unique_msgs__msg__CustomGNSS__destroy(common_unique_msgs__msg__CustomGNSS * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    common_unique_msgs__msg__CustomGNSS__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
common_unique_msgs__msg__CustomGNSS__Sequence__init(common_unique_msgs__msg__CustomGNSS__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__CustomGNSS * data = NULL;

  if (size) {
    data = (common_unique_msgs__msg__CustomGNSS *)allocator.zero_allocate(size, sizeof(common_unique_msgs__msg__CustomGNSS), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = common_unique_msgs__msg__CustomGNSS__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        common_unique_msgs__msg__CustomGNSS__fini(&data[i - 1]);
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
common_unique_msgs__msg__CustomGNSS__Sequence__fini(common_unique_msgs__msg__CustomGNSS__Sequence * array)
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
      common_unique_msgs__msg__CustomGNSS__fini(&array->data[i]);
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

common_unique_msgs__msg__CustomGNSS__Sequence *
common_unique_msgs__msg__CustomGNSS__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__CustomGNSS__Sequence * array = (common_unique_msgs__msg__CustomGNSS__Sequence *)allocator.allocate(sizeof(common_unique_msgs__msg__CustomGNSS__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = common_unique_msgs__msg__CustomGNSS__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
common_unique_msgs__msg__CustomGNSS__Sequence__destroy(common_unique_msgs__msg__CustomGNSS__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    common_unique_msgs__msg__CustomGNSS__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
common_unique_msgs__msg__CustomGNSS__Sequence__are_equal(const common_unique_msgs__msg__CustomGNSS__Sequence * lhs, const common_unique_msgs__msg__CustomGNSS__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!common_unique_msgs__msg__CustomGNSS__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
common_unique_msgs__msg__CustomGNSS__Sequence__copy(
  const common_unique_msgs__msg__CustomGNSS__Sequence * input,
  common_unique_msgs__msg__CustomGNSS__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(common_unique_msgs__msg__CustomGNSS);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    common_unique_msgs__msg__CustomGNSS * data =
      (common_unique_msgs__msg__CustomGNSS *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!common_unique_msgs__msg__CustomGNSS__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          common_unique_msgs__msg__CustomGNSS__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!common_unique_msgs__msg__CustomGNSS__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
