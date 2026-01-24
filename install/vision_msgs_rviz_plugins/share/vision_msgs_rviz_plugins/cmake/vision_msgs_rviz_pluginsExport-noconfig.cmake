#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "vision_msgs_rviz_plugins::vision_msgs_rviz_plugins" for configuration ""
set_property(TARGET vision_msgs_rviz_plugins::vision_msgs_rviz_plugins APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(vision_msgs_rviz_plugins::vision_msgs_rviz_plugins PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libvision_msgs_rviz_plugins.so"
  IMPORTED_SONAME_NOCONFIG "libvision_msgs_rviz_plugins.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS vision_msgs_rviz_plugins::vision_msgs_rviz_plugins )
list(APPEND _IMPORT_CHECK_FILES_FOR_vision_msgs_rviz_plugins::vision_msgs_rviz_plugins "${_IMPORT_PREFIX}/lib/libvision_msgs_rviz_plugins.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
