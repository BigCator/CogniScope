# Install script for directory: /home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_smartthings_bridge

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/neousys/driver/360_camera/360_camera_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_smartthings_bridge/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_smartthings_bridge/catkin_generated/installspace/rocon_smartthings_bridge.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_smartthings_bridge/cmake" TYPE FILE FILES
    "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_smartthings_bridge/catkin_generated/installspace/rocon_smartthings_bridgeConfig.cmake"
    "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_smartthings_bridge/catkin_generated/installspace/rocon_smartthings_bridgeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_smartthings_bridge" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_smartthings_bridge/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_smartthings_bridge/catkin_generated/installspace/25.rocon-smartthings-bridge.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_smartthings_bridge/catkin_env_hook" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_smartthings_bridge/catkin_generated/installspace/25.rocon-smartthings-bridge.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_smartthings_bridge" TYPE DIRECTORY FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_smartthings_bridge/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_smartthings_bridge" TYPE DIRECTORY FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_smartthings_bridge/resources")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rocon_smartthings_bridge" TYPE PROGRAM FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_smartthings_bridge/scripts/smartthings_bridge.py")
endif()

