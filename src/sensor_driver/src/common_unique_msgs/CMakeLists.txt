cmake_minimum_required(VERSION 3.8)
project(common_unique_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)


rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/UniHeader.msg"
  "msg/Location.msg"
  "msg/LocationInitial.msg"
  "msg/CustomGNSS.msg"
  "msg/CustomIMU.msg"
  DEPENDENCIES std_msgs
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
