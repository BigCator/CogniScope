// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice
#include "common_unique_msgs/msg/detail/uni_header__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


bool
common_unique_msgs__msg__UniHeader__init(common_unique_msgs__msg__UniHeader * msg)
{
  if (!msg) {
    return false;
  }
  // ui_msg_id
  // ui_msg_datalength
  // ul_msg_stamp
  return true;
}

void
common_unique_msgs__msg__UniHeader__fini(common_unique_msgs__msg__UniHeader * msg)
{
  if (!msg) {
    return;
  }
  // ui_msg_id
  // ui_msg_datalength
  // ul_msg_stamp
}

bool
common_unique_msgs__msg__UniHeader__are_equal(const common_unique_msgs__msg__UniHeader * lhs, const common_unique_msgs__msg__UniHeader * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // ui_msg_id
  if (lhs->ui_msg_id != rhs->ui_msg_id) {
    return false;
  }
  // ui_msg_datalength
  if (lhs->ui_msg_datalength != rhs->ui_msg_datalength) {
    return false;
  }
  // ul_msg_stamp
  if (lhs->ul_msg_stamp != rhs->ul_msg_stamp) {
    return false;
  }
  return true;
}

bool
common_unique_msgs__msg__UniHeader__copy(
  const common_unique_msgs__msg__UniHeader * input,
  common_unique_msgs__msg__UniHeader * output)
{
  if (!input || !output) {
    return false;
  }
  // ui_msg_id
  output->ui_msg_id = input->ui_msg_id;
  // ui_msg_datalength
  output->ui_msg_datalength = input->ui_msg_datalength;
  // ul_msg_stamp
  output->ul_msg_stamp = input->ul_msg_stamp;
  return true;
}

common_unique_msgs__msg__UniHeader *
common_unique_msgs__msg__UniHeader__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__UniHeader * msg = (common_unique_msgs__msg__UniHeader *)allocator.allocate(sizeof(common_unique_msgs__msg__UniHeader), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(common_unique_msgs__msg__UniHeader));
  bool success = common_unique_msgs__msg__UniHeader__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
common_unique_msgs__msg__UniHeader__destroy(common_unique_msgs__msg__UniHeader * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    common_unique_msgs__msg__UniHeader__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
common_unique_msgs__msg__UniHeader__Sequence__init(common_unique_msgs__msg__UniHeader__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__UniHeader * data = NULL;

  if (size) {
    data = (common_unique_msgs__msg__UniHeader *)allocator.zero_allocate(size, sizeof(common_unique_msgs__msg__UniHeader), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = common_unique_msgs__msg__UniHeader__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        common_unique_msgs__msg__UniHeader__fini(&data[i - 1]);
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
common_unique_msgs__msg__UniHeader__Sequence__fini(common_unique_msgs__msg__UniHeader__Sequence * array)
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
      common_unique_msgs__msg__UniHeader__fini(&array->data[i]);
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

common_unique_msgs__msg__UniHeader__Sequence *
common_unique_msgs__msg__UniHeader__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  common_unique_msgs__msg__UniHeader__Sequence * array = (common_unique_msgs__msg__UniHeader__Sequence *)allocator.allocate(sizeof(common_unique_msgs__msg__UniHeader__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = common_unique_msgs__msg__UniHeader__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
common_unique_msgs__msg__UniHeader__Sequence__destroy(common_unique_msgs__msg__UniHeader__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    common_unique_msgs__msg__UniHeader__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
common_unique_msgs__msg__UniHeader__Sequence__are_equal(const common_unique_msgs__msg__UniHeader__Sequence * lhs, const common_unique_msgs__msg__UniHeader__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!common_unique_msgs__msg__UniHeader__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
common_unique_msgs__msg__UniHeader__Sequence__copy(
  const common_unique_msgs__msg__UniHeader__Sequence * input,
  common_unique_msgs__msg__UniHeader__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(common_unique_msgs__msg__UniHeader);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    common_unique_msgs__msg__UniHeader * data =
      (common_unique_msgs__msg__UniHeader *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!common_unique_msgs__msg__UniHeader__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          common_unique_msgs__msg__UniHeader__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!common_unique_msgs__msg__UniHeader__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
