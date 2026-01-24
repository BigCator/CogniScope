// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from common_unique_msgs:msg/Location.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/location__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


// Include directives for member types
// Member `header`
#include "common_unique_msgs/msg/detail/uni_header__functions.h"

bool
common_unique_msgs__msg__Location__init(common_unique_msgs__msg__Location * msg)
{
  if (!msg) {
    return false;
  }
  // header
  if (!common_unique_msgs__msg__UniHeader__init(&msg->header)) {
    common_unique_msgs__msg__Location__fini(msg);
    return false;
  }
  // ui_satel_lon
  // ui_satel_lat
  // ui_satel_alt
  // uc_satle_state
  // ui_nav_lon
  // ui_nav_lat
  // ui_nav_alt
  // us_nav_yaw
  // s_nav_pitch
  // s_nav_roll
  // s_nav_vx
  // s_nav_vy
  // s_nav_vz
  // s_nav_wx
  // s_nav_wy
  // s_nav_wz
  // ui_mileage
  // ul_satel_time
  // ui_work_time
  // uc_work_state
  // uc_nav_state
  // reserve1
  // reserve2
  // us_check_sum
  return true;
}

void
common_unique_msgs__msg__Location__fini(common_unique_msgs__msg__Location * msg)
{
  if (!msg) {
    return;
  }
  // header
  common_unique_msgs__msg__UniHeader__fini(&msg->header);
  // ui_satel_lon
  // ui_satel_lat
  // ui_satel_alt
  // uc_satle_state
  // ui_nav_lon
  // ui_nav_lat
  // ui_nav_alt
  // us_nav_yaw
  // s_nav_pitch
  // s_nav_roll
  // s_nav_vx
  // s_nav_vy
  // s_nav_vz
  // s_nav_wx
  // s_nav_wy
  // s_nav_wz
  // ui_mileage
  // ul_satel_time
  // ui_work_time
  // uc_work_state
  // uc_nav_state
  // reserve1
  // reserve2
  // us_check_sum
}

bool
common_unique_msgs__msg__Location__are_equal(const common_unique_msgs__msg__Location * lhs, const common_unique_msgs__msg__Location * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // header
  if (!common_unique_msgs__msg__UniHeader__are_equal(
      &(lhs->header), &(rhs->header)))
  {
    return false;
  }
  // ui_satel_lon
  if (lhs->ui_satel_lon != rhs->ui_satel_lon) {
    return false;
  }
  // ui_satel_lat
  if (lhs->ui_satel_lat != rhs->ui_satel_lat) {
    return false;
  }
  // ui_satel_alt
  if (lhs->ui_satel_alt != rhs->ui_satel_alt) {
    return false;
  }
  // uc_satle_state
  if (lhs->uc_satle_state != rhs->uc_satle_state) {
    return false;
  }
  // ui_nav_lon
  if (lhs->ui_nav_lon != rhs->ui_nav_lon) {
    return false;
  }
  // ui_nav_lat
  if (lhs->ui_nav_lat != rhs->ui_nav_lat) {
    return false;
  }
  // ui_nav_alt
  if (lhs->ui_nav_alt != rhs->ui_nav_alt) {
    return false;
  }
  // us_nav_yaw
  if (lhs->us_nav_yaw != rhs->us_nav_yaw) {
    return false;
  }
  // s_nav_pitch
  if (lhs->s_nav_pitch != rhs->s_nav_pitch) {
    return false;
  }
  // s_nav_roll
  if (lhs->s_nav_roll != rhs->s_nav_roll) {
    return false;
  }
  // s_nav_vx
  if (lhs->s_nav_vx != rhs->s_nav_vx) {
    return false;
  }
  // s_nav_vy
  if (lhs->s_nav_vy != rhs->s_nav_vy) {
    return false;
  }
  // s_nav_vz
  if (lhs->s_nav_vz != rhs->s_nav_vz) {
    return false;
  }
  // s_nav_wx
  if (lhs->s_nav_wx != rhs->s_nav_wx) {
    return false;
  }
  // s_nav_wy
  if (lhs->s_nav_wy != rhs->s_nav_wy) {
    return false;
  }
  // s_nav_wz
  if (lhs->s_nav_wz != rhs->s_nav_wz) {
    return false;
  }
  // ui_mileage
  if (lhs->ui_mileage != rhs->ui_mileage) {
    return false;
  }
  // ul_satel_time
  if (lhs->ul_satel_time != rhs->ul_satel_time) {
    return false;
  }
  // ui_work_time
  if (lhs->ui_work_time != rhs->ui_work_time) {
    return false;
  }
  // uc_work_state
  if (lhs->uc_work_state != rhs->uc_work_state) {
    return false;
  }
  // uc_nav_state
  if (lhs->uc_nav_state != rhs->uc_nav_state) {
    return false;
  }
  // reserve1
  if (lhs->reserve1 != rhs->reserve1) {
    return false;
  }
  // reserve2
  if (lhs->reserve2 != rhs->reserve2) {
    return false;
  }
  // us_check_sum
  if (lhs->us_check_sum != rhs->us_check_sum) {
    return false;
  }
  return true;
}

bool
common_unique_msgs__msg__Location__copy(
  const common_unique_msgs__msg__Location * input,
  common_unique_msgs__msg__Location * output)
{
  if (!input || !output) {
    return false;
  }
  // header
  if (!common_unique_msgs__msg__UniHeader__copy(
      &(input->header), &(output->header)))
  {
    return false;
  }
  // ui_satel_lon
  output->ui_satel_lon = input->ui_satel_lon;
  // ui_satel_lat
  output->ui_satel_lat = input->ui_satel_lat;
  // ui_satel_alt
  output->ui_satel_alt = input->ui_satel_alt;
  // uc_satle_state
  output->uc_satle_state = input->uc_satle_state;
  // ui_nav_lon
  output->ui_nav_lon = input->ui_nav_lon;
  // ui_nav_lat
  output->ui_nav_lat = input->ui_nav_lat;
  // ui_nav_alt
  output->ui_nav_alt = input->ui_nav_alt;
  // us_nav_yaw
  output->us_nav_yaw = input->us_nav_yaw;
  // s_nav_pitch
  output->s_nav_pitch = input->s_nav_pitch;
  // s_nav_roll
  output->s_nav_roll = input->s_nav_roll;
  // s_nav_vx
  output->s_nav_vx = input->s_nav_vx;
  // s_nav_vy
  output->s_nav_vy = input->s_nav_vy;
  // s_nav_vz
  output->s_nav_vz = input->s_nav_vz;
  // s_nav_wx
  output->s_nav_wx = input->s_nav_wx;
  // s_nav_wy
  output->s_nav_wy = input->s_nav_wy;
  // s_nav_wz
  output->s_nav_wz = input->s_nav_wz;
  // ui_mileage
  output->ui_mileage = input->ui_mileage;
  // ul_satel_time
  output->ul_satel_time = input->ul_satel_time;
  // ui_work_time
  output->ui_work_time = input->ui_work_time;
  // uc_work_state
  output->uc_work_state = input->uc_work_state;
  // uc_nav_state
  output->uc_nav_state = input->uc_nav_state;
  // reserve1
  output->reserve1 = input->reserve1;
  // reserve2
  output->reserve2 = input->reserve2;
  // us_check_sum
  output->us_check_sum = input->us_check_sum;
  return true;
}

common_unique_msgs__msg__Location *
common_unique_msgs__msg__Location__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__Location * msg = (common_unique_msgs__msg__Location *)allocator.allocate(sizeof(common_unique_msgs__msg__Location), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(common_unique_msgs__msg__Location));
  bool success = common_unique_msgs__msg__Location__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
common_unique_msgs__msg__Location__destroy(common_unique_msgs__msg__Location * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    common_unique_msgs__msg__Location__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
common_unique_msgs__msg__Location__Sequence__init(common_unique_msgs__msg__Location__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__Location * data = NULL;

  if (size) {
    data = (common_unique_msgs__msg__Location *)allocator.zero_allocate(size, sizeof(common_unique_msgs__msg__Location), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = common_unique_msgs__msg__Location__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        common_unique_msgs__msg__Location__fini(&data[i - 1]);
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
common_unique_msgs__msg__Location__Sequence__fini(common_unique_msgs__msg__Location__Sequence * array)
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
      common_unique_msgs__msg__Location__fini(&array->data[i]);
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

common_unique_msgs__msg__Location__Sequence *
common_unique_msgs__msg__Location__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__Location__Sequence * array = (common_unique_msgs__msg__Location__Sequence *)allocator.allocate(sizeof(common_unique_msgs__msg__Location__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = common_unique_msgs__msg__Location__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
common_unique_msgs__msg__Location__Sequence__destroy(common_unique_msgs__msg__Location__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    common_unique_msgs__msg__Location__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
common_unique_msgs__msg__Location__Sequence__are_equal(const common_unique_msgs__msg__Location__Sequence * lhs, const common_unique_msgs__msg__Location__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!common_unique_msgs__msg__Location__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
common_unique_msgs__msg__Location__Sequence__copy(
  const common_unique_msgs__msg__Location__Sequence * input,
  common_unique_msgs__msg__Location__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(common_unique_msgs__msg__Location);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    common_unique_msgs__msg__Location * data =
      (common_unique_msgs__msg__Location *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!common_unique_msgs__msg__Location__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          common_unique_msgs__msg__Location__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!common_unique_msgs__msg__Location__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
