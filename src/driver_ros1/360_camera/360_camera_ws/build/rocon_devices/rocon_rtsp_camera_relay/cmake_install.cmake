# Install script for directory: /home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_rtsp_camera_relay

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_rtsp_camera_relay/catkin_generated/installspace/rocon_rtsp_camera_relay.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_rtsp_camera_relay/cmake" TYPE FILE FILES
    "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_rtsp_camera_relay/catkin_generated/installspace/rocon_rtsp_camera_relayConfig.cmake"
    "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_rtsp_camera_relay/catkin_generated/installspace/rocon_rtsp_camera_relayConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_rtsp_camera_relay" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_rtsp_camera_relay/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_rtsp_camera_relay/catkin_generated/installspace/25.rocon-rtsp-camera-relay.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_rtsp_camera_relay/catkin_env_hook" TYPE FILE FILES "/home/neousys/driver/360_camera/360_camera_ws/build/rocon_devices/rocon_rtsp_camera_relay/catkin_generated/installspace/25.rocon-rtsp-camera-relay.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librocon_rtsp_camera_relay.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librocon_rtsp_camera_relay.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librocon_rtsp_camera_relay.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/neousys/driver/360_camera/360_camera_ws/devel/lib/librocon_rtsp_camera_relay.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librocon_rtsp_camera_relay.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librocon_rtsp_camera_relay.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librocon_rtsp_camera_relay.so"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librocon_rtsp_camera_relay.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay" TYPE EXECUTABLE FILES "/home/neousys/driver/360_camera/360_camera_ws/devel/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node"
         OLD_RPATH "/home/neousys/driver/360_camera/360_camera_ws/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rocon_rtsp_camera_relay/rocon_rtsp_camera_relay_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rocon_rtsp_camera_relay" TYPE DIRECTORY FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_rtsp_camera_relay/include/rocon_rtsp_camera_relay/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_rtsp_camera_relay" TYPE DIRECTORY FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_rtsp_camera_relay/rapps")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_rtsp_camera_relay" TYPE DIRECTORY FILES "/home/neousys/driver/360_camera/360_camera_ws/src/rocon_devices/rocon_rtsp_camera_relay/launch")
endif()

