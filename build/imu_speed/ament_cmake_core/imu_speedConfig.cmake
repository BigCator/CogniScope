# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_imu_speed_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED imu_speed_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(imu_speed_FOUND FALSE)
  elseif(NOT imu_speed_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(imu_speed_FOUND FALSE)
  endif()
  return()
endif()
set(_imu_speed_CONFIG_INCLUDED TRUE)

# output package information
if(NOT imu_speed_FIND_QUIETLY)
  message(STATUS "Found imu_speed: 0.0.1 (${imu_speed_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'imu_speed' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${imu_speed_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(imu_speed_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${imu_speed_DIR}/${_extra}")
endforeach()
