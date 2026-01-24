// generated from rosidl_generator_c/resource/idl__functions.h.em
// with input from common_unique_msgs:msg/LocationInitial.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__FUNCTIONS_H_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__FUNCTIONS_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stdlib.h>

#include "rosidl_runtime_c/visibility_control.h"
#include "common_unique_msgs/msg/rosidl_generator_c__visibility_control.h"

#include "common_unique_msgs/msg/detail/location_initial__struct.h"

/// Initialize msg/LocationInitial message.
/**
 * If the init function is called twice for the same message without
 * calling fini inbetween previously allocated memory will be leaked.
 * \param[in,out] msg The previously allocated message pointer.
 * Fields without a default value will not be initialized by this function.
 * You might want to call memset(msg, 0, sizeof(
 * common_unique_msgs__msg__LocationInitial
 * )) before or use
 * common_unique_msgs__msg__LocationInitial__create()
 * to allocate and initialize the message.
 * \return true if initialization was successful, otherwise false
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__LocationInitial__init(common_unique_msgs__msg__LocationInitial * msg);

/// Finalize msg/LocationInitial message.
/**
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__LocationInitial__fini(common_unique_msgs__msg__LocationInitial * msg);

/// Create msg/LocationInitial message.
/**
 * It allocates the memory for the message, sets the memory to zero, and
 * calls
 * common_unique_msgs__msg__LocationInitial__init().
 * \return The pointer to the initialized message if successful,
 * otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
common_unique_msgs__msg__LocationInitial *
common_unique_msgs__msg__LocationInitial__create();

/// Destroy msg/LocationInitial message.
/**
 * It calls
 * common_unique_msgs__msg__LocationInitial__fini()
 * and frees the memory of the message.
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__LocationInitial__destroy(common_unique_msgs__msg__LocationInitial * msg);

/// Check for msg/LocationInitial message equality.
/**
 * \param[in] lhs The message on the left hand size of the equality operator.
 * \param[in] rhs The message on the right hand size of the equality operator.
 * \return true if messages are equal, otherwise false.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__LocationInitial__are_equal(const common_unique_msgs__msg__LocationInitial * lhs, const common_unique_msgs__msg__LocationInitial * rhs);

/// Copy a msg/LocationInitial message.
/**
 * This functions performs a deep copy, as opposed to the shallow copy that
 * plain assignment yields.
 *
 * \param[in] input The source message pointer.
 * \param[out] output The target message pointer, which must
 *   have been initialized before calling this function.
 * \return true if successful, or false if either pointer is null
 *   or memory allocation fails.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__LocationInitial__copy(
  const common_unique_msgs__msg__LocationInitial * input,
  common_unique_msgs__msg__LocationInitial * output);

/// Initialize array of msg/LocationInitial messages.
/**
 * It allocates the memory for the number of elements and calls
 * common_unique_msgs__msg__LocationInitial__init()
 * for each element of the array.
 * \param[in,out] array The allocated array pointer.
 * \param[in] size The size / capacity of the array.
 * \return true if initialization was successful, otherwise false
 * If the array pointer is valid and the size is zero it is guaranteed
 # to return true.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__LocationInitial__Sequence__init(common_unique_msgs__msg__LocationInitial__Sequence * array, size_t size);

/// Finalize array of msg/LocationInitial messages.
/**
 * It calls
 * common_unique_msgs__msg__LocationInitial__fini()
 * for each element of the array and frees the memory for the number of
 * elements.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__LocationInitial__Sequence__fini(common_unique_msgs__msg__LocationInitial__Sequence * array);

/// Create array of msg/LocationInitial messages.
/**
 * It allocates the memory for the array and calls
 * common_unique_msgs__msg__LocationInitial__Sequence__init().
 * \param[in] size The size / capacity of the array.
 * \return The pointer to the initialized array if successful, otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
common_unique_msgs__msg__LocationInitial__Sequence *
common_unique_msgs__msg__LocationInitial__Sequence__create(size_t size);

/// Destroy array of msg/LocationInitial messages.
/**
 * It calls
 * common_unique_msgs__msg__LocationInitial__Sequence__fini()
 * on the array,
 * and frees the memory of the array.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__LocationInitial__Sequence__destroy(common_unique_msgs__msg__LocationInitial__Sequence * array);

/// Check for msg/LocationInitial message array equality.
/**
 * \param[in] lhs The message array on the left hand size of the equality operator.
 * \param[in] rhs The message array on the right hand size of the equality operator.
 * \return true if message arrays are equal in size and content, otherwise false.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__LocationInitial__Sequence__are_equal(const common_unique_msgs__msg__LocationInitial__Sequence * lhs, const common_unique_msgs__msg__LocationInitial__Sequence * rhs);

/// Copy an array of msg/LocationInitial messages.
/**
 * This functions performs a deep copy, as opposed to the shallow copy that
 * plain assignment yields.
 *
 * \param[in] input The source array pointer.
 * \param[out] output The target array pointer, which must
 *   have been initialized before calling this function.
 * \return true if successful, or false if either pointer
 *   is null or memory allocation fails.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__LocationInitial__Sequence__copy(
  const common_unique_msgs__msg__LocationInitial__Sequence * input,
  common_unique_msgs__msg__LocationInitial__Sequence * output);

#ifdef __cplusplus
}
#endif

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__LOCATION_INITIAL__FUNCTIONS_H_
