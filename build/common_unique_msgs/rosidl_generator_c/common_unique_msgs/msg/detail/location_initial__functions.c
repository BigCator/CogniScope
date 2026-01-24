// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/location_initial__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


// Include directives for member types
// Member `header`
#include "common_unique_msgs/msg/detail/uni_header__functions.h"

bool
common_unique_msgs__msg__LocationInitial__init(common_unique_msgs__msg__LocationInitial * msg)
{
  if (!msg) {
    return false;
  }
  // header
  if (!common_unique_msgs__msg__UniHeader__init(&msg->header)) {
    common_unique_msgs__msg__LocationInitial__fini(msg);
    return false;
  }
  // s_ins_vx
  // s_ins_vy
  // s_ins_vz
  // i_ins_ax
  // i_ins_ay
  // i_ins_az
  // f_ins_anglex
  // f_ins_angley
  // f_ins_anglez
  // f_ins_wx
  // f_ins_wy
  // f_ins_wz
  // f_ins_wax
  // f_ins_way
  // f_ins_waz
  // us_check_sum
  return true;
}

void
common_unique_msgs__msg__LocationInitial__fini(common_unique_msgs__msg__LocationInitial * msg)
{
  if (!msg) {
    return;
  }
  // header
  common_unique_msgs__msg__UniHeader__fini(&msg->header);
  // s_ins_vx
  // s_ins_vy
  // s_ins_vz
  // i_ins_ax
  // i_ins_ay
  // i_ins_az
  // f_ins_anglex
  // f_ins_angley
  // f_ins_anglez
  // f_ins_wx
  // f_ins_wy
  // f_ins_wz
  // f_ins_wax
  // f_ins_way
  // f_ins_waz
  // us_check_sum
}

bool
common_unique_msgs__msg__LocationInitial__are_equal(const common_unique_msgs__msg__LocationInitial * lhs, const common_unique_msgs__msg__LocationInitial * rhs)
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
  // s_ins_vx
  if (lhs->s_ins_vx != rhs->s_ins_vx) {
    return false;
  }
  // s_ins_vy
  if (lhs->s_ins_vy != rhs->s_ins_vy) {
    return false;
  }
  // s_ins_vz
  if (lhs->s_ins_vz != rhs->s_ins_vz) {
    return false;
  }
  // i_ins_ax
  if (lhs->i_ins_ax != rhs->i_ins_ax) {
    return false;
  }
  // i_ins_ay
  if (lhs->i_ins_ay != rhs->i_ins_ay) {
    return false;
  }
  // i_ins_az
  if (lhs->i_ins_az != rhs->i_ins_az) {
    return false;
  }
  // f_ins_anglex
  if (lhs->f_ins_anglex != rhs->f_ins_anglex) {
    return false;
  }
  // f_ins_angley
  if (lhs->f_ins_angley != rhs->f_ins_angley) {
    return false;
  }
  // f_ins_anglez
  if (lhs->f_ins_anglez != rhs->f_ins_anglez) {
    return false;
  }
  // f_ins_wx
  if (lhs->f_ins_wx != rhs->f_ins_wx) {
    return false;
  }
  // f_ins_wy
  if (lhs->f_ins_wy != rhs->f_ins_wy) {
    return false;
  }
  // f_ins_wz
  if (lhs->f_ins_wz != rhs->f_ins_wz) {
    return false;
  }
  // f_ins_wax
  if (lhs->f_ins_wax != rhs->f_ins_wax) {
    return false;
  }
  // f_ins_way
  if (lhs->f_ins_way != rhs->f_ins_way) {
    return false;
  }
  // f_ins_waz
  if (lhs->f_ins_waz != rhs->f_ins_waz) {
    return false;
  }
  // us_check_sum
  if (lhs->us_check_sum != rhs->us_check_sum) {
    return false;
  }
  return true;
}

bool
common_unique_msgs__msg__LocationInitial__copy(
  const common_unique_msgs__msg__LocationInitial * input,
  common_unique_msgs__msg__LocationInitial * output)
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
  // s_ins_vx
  output->s_ins_vx = input->s_ins_vx;
  // s_ins_vy
  output->s_ins_vy = input->s_ins_vy;
  // s_ins_vz
  output->s_ins_vz = input->s_ins_vz;
  // i_ins_ax
  output->i_ins_ax = input->i_ins_ax;
  // i_ins_ay
  output->i_ins_ay = input->i_ins_ay;
  // i_ins_az
  output->i_ins_az = input->i_ins_az;
  // f_ins_anglex
  output->f_ins_anglex = input->f_ins_anglex;
  // f_ins_angley
  output->f_ins_angley = input->f_ins_angley;
  // f_ins_anglez
  output->f_ins_anglez = input->f_ins_anglez;
  // f_ins_wx
  output->f_ins_wx = input->f_ins_wx;
  // f_ins_wy
  output->f_ins_wy = input->f_ins_wy;
  // f_ins_wz
  output->f_ins_wz = input->f_ins_wz;
  // f_ins_wax
  output->f_ins_wax = input->f_ins_wax;
  // f_ins_way
  output->f_ins_way = input->f_ins_way;
  // f_ins_waz
  output->f_ins_waz = input->f_ins_waz;
  // us_check_sum
  output->us_check_sum = input->us_check_sum;
  return true;
}

common_unique_msgs__msg__LocationInitial *
common_unique_msgs__msg__LocationInitial__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__LocationInitial * msg = (common_unique_msgs__msg__LocationInitial *)allocator.allocate(sizeof(common_unique_msgs__msg__LocationInitial), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(common_unique_msgs__msg__LocationInitial));
  bool success = common_unique_msgs__msg__LocationInitial__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
common_unique_msgs__msg__LocationInitial__destroy(common_unique_msgs__msg__LocationInitial * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    common_unique_msgs__msg__LocationInitial__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
common_unique_msgs__msg__LocationInitial__Sequence__init(common_unique_msgs__msg__LocationInitial__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__LocationInitial * data = NULL;

  if (size) {
    data = (common_unique_msgs__msg__LocationInitial *)allocator.zero_allocate(size, sizeof(common_unique_msgs__msg__LocationInitial), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = common_unique_msgs__msg__LocationInitial__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        common_unique_msgs__msg__LocationInitial__fini(&data[i - 1]);
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
common_unique_msgs__msg__LocationInitial__Sequence__fini(common_unique_msgs__msg__LocationInitial__Sequence * array)
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
      common_unique_msgs__msg__LocationInitial__fini(&array->data[i]);
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

common_unique_msgs__msg__LocationInitial__Sequence *
common_unique_msgs__msg__LocationInitial__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__LocationInitial__Sequence * array = (common_unique_msgs__msg__LocationInitial__Sequence *)allocator.allocate(sizeof(common_unique_msgs__msg__LocationInitial__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = common_unique_msgs__msg__LocationInitial__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
common_unique_msgs__msg__LocationInitial__Sequence__destroy(common_unique_msgs__msg__LocationInitial__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    common_unique_msgs__msg__LocationInitial__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
common_unique_msgs__msg__LocationInitial__Sequence__are_equal(const common_unique_msgs__msg__LocationInitial__Sequence * lhs, const common_unique_msgs__msg__LocationInitial__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!common_unique_msgs__msg__LocationInitial__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
common_unique_msgs__msg__LocationInitial__Sequence__copy(
  const common_unique_msgs__msg__LocationInitial__Sequence * input,
  common_unique_msgs__msg__LocationInitial__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(common_unique_msgs__msg__LocationInitial);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    common_unique_msgs__msg__LocationInitial * data =
      (common_unique_msgs__msg__LocationInitial *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!common_unique_msgs__msg__LocationInitial__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          common_unique_msgs__msg__LocationInitial__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!common_unique_msgs__msg__LocationInitial__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
