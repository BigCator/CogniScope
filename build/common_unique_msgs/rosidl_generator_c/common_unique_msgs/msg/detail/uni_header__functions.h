// generated from rosidl_generator_c/resource/idl__functions.h.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice

#ifndef COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__FUNCTIONS_H_
#define COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__FUNCTIONS_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stdlib.h>

#include "rosidl_runtime_c/visibility_control.h"
#include "common_unique_msgs/msg/rosidl_generator_c__visibility_control.h"

#include "common_unique_msgs/msg/detail/uni_header__struct.h"

/// Initialize msg/UniHeader message.
/**
 * If the init function is called twice for the same message without
 * calling fini inbetween previously allocated memory will be leaked.
 * \param[in,out] msg The previously allocated message pointer.
 * Fields without a default value will not be initialized by this function.
 * You might want to call memset(msg, 0, sizeof(
 * common_unique_msgs__msg__UniHeader
 * )) before or use
 * common_unique_msgs__msg__UniHeader__create()
 * to allocate and initialize the message.
 * \return true if initialization was successful, otherwise false
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__UniHeader__init(common_unique_msgs__msg__UniHeader * msg);

/// Finalize msg/UniHeader message.
/**
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__UniHeader__fini(common_unique_msgs__msg__UniHeader * msg);

/// Create msg/UniHeader message.
/**
 * It allocates the memory for the message, sets the memory to zero, and
 * calls
 * common_unique_msgs__msg__UniHeader__init().
 * \return The pointer to the initialized message if successful,
 * otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
common_unique_msgs__msg__UniHeader *
common_unique_msgs__msg__UniHeader__create();

/// Destroy msg/UniHeader message.
/**
 * It calls
 * common_unique_msgs__msg__UniHeader__fini()
 * and frees the memory of the message.
 * \param[in,out] msg The allocated message pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__UniHeader__destroy(common_unique_msgs__msg__UniHeader * msg);

/// Check for msg/UniHeader message equality.
/**
 * \param[in] lhs The message on the left hand size of the equality operator.
 * \param[in] rhs The message on the right hand size of the equality operator.
 * \return true if messages are equal, otherwise false.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__UniHeader__are_equal(const common_unique_msgs__msg__UniHeader * lhs, const common_unique_msgs__msg__UniHeader * rhs);

/// Copy a msg/UniHeader message.
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
common_unique_msgs__msg__UniHeader__copy(
  const common_unique_msgs__msg__UniHeader * input,
  common_unique_msgs__msg__UniHeader * output);

/// Initialize array of msg/UniHeader messages.
/**
 * It allocates the memory for the number of elements and calls
 * common_unique_msgs__msg__UniHeader__init()
 * for each element of the array.
 * \param[in,out] array The allocated array pointer.
 * \param[in] size The size / capacity of the array.
 * \return true if initialization was successful, otherwise false
 * If the array pointer is valid and the size is zero it is guaranteed
 # to return true.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__UniHeader__Sequence__init(common_unique_msgs__msg__UniHeader__Sequence * array, size_t size);

/// Finalize array of msg/UniHeader messages.
/**
 * It calls
 * common_unique_msgs__msg__UniHeader__fini()
 * for each element of the array and frees the memory for the number of
 * elements.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__UniHeader__Sequence__fini(common_unique_msgs__msg__UniHeader__Sequence * array);

/// Create array of msg/UniHeader messages.
/**
 * It allocates the memory for the array and calls
 * common_unique_msgs__msg__UniHeader__Sequence__init().
 * \param[in] size The size / capacity of the array.
 * \return The pointer to the initialized array if successful, otherwise NULL
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
common_unique_msgs__msg__UniHeader__Sequence *
common_unique_msgs__msg__UniHeader__Sequence__create(size_t size);

/// Destroy array of msg/UniHeader messages.
/**
 * It calls
 * common_unique_msgs__msg__UniHeader__Sequence__fini()
 * on the array,
 * and frees the memory of the array.
 * \param[in,out] array The initialized array pointer.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
void
common_unique_msgs__msg__UniHeader__Sequence__destroy(common_unique_msgs__msg__UniHeader__Sequence * array);

/// Check for msg/UniHeader message array equality.
/**
 * \param[in] lhs The message array on the left hand size of the equality operator.
 * \param[in] rhs The message array on the right hand size of the equality operator.
 * \return true if message arrays are equal in size and content, otherwise false.
 */
ROSIDL_GENERATOR_C_PUBLIC_common_unique_msgs
bool
common_unique_msgs__msg__UniHeader__Sequence__are_equal(const common_unique_msgs__msg__UniHeader__Sequence * lhs, const common_unique_msgs__msg__UniHeader__Sequence * rhs);

/// Copy an array of msg/UniHeader messages.
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
common_unique_msgs__msg__UniHeader__Sequence__copy(
  const common_unique_msgs__msg__UniHeader__Sequence * input,
  common_unique_msgs__msg__UniHeader__Sequence * output);

#ifdef __cplusplus
}
#endif

#endif  // COMMON_UNIQUE_MSGS__MSG__DETAIL__UNI_HEADER__FUNCTIONS_H_
