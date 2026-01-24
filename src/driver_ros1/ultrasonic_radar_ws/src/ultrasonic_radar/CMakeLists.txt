cmake_minimum_required(VERSION 3.0.2)
project(ultrasonic_radar)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  sensor_msgs
  tf2_ros # 添加tf2_ros依赖

)

# 添加 libwebsockets 的查找
find_package(PkgConfig REQUIRED)
pkg_check_modules(LWS REQUIRED libwebsockets)

#Describe catkin project
catkin_package(
  #INCLUDE_DIRS include
  LIBRARIES ${PROJECT_NAME}
  CATKIN_DEPENDS roscpp std_msgs sensor_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  ${LWS_INCLUDE_DIRS}  # 包含 libwebsockets 的头文件
  /home/neousys/driver/ultrasonic_radar_ws/src/easywsclient  # 包含 easywsclient 的头文件
)

add_executable(ultrasonic_radar_node 
		src/ultrasonic_radar_node.cpp
		/home/neousys/driver/ultrasonic_radar_ws/src/easywsclient/easywsclient.cpp
)


target_link_libraries(ultrasonic_radar_node
  ${catkin_LIBRARIES}
  ${LWS_LIBRARIES}  # 链接 libwebsockets 库
)

add_dependencies(ultrasonic_radar_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
