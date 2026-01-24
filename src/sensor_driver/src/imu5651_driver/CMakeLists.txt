cmake_minimum_required(VERSION 3.5)
project(imu5651_driver)

# 使用C++17标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 查找ROS2核心依赖
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)

# 查找串口驱动相关依赖
find_package(serial_driver REQUIRED)    # 关键修正1：使用 ROS2 官方驱动包
find_package(io_context REQUIRED)       # 关键修正2：添加 IO 上下文依赖
find_package(common_unique_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(tf2 REQUIRED)
find_package(nav_msgs REQUIRED)


# 包含头文件目录（如果自定义头文件需要暴露给其他包）
include_directories(
  include
)

# 生成自定义消息（若common_unique_msgs需要生成消息）
# ament_generate_python()

# 构建可执行文件
add_executable(imu5651_driver
  src/main.cpp
  src/serial_reader.cpp
)

# 链接依赖库（现代 CMake 目标链接方式）
target_link_libraries(imu5651_driver
  ${rclcpp_LIBRARIES}                # 替换 rclcpp::rclcpp
  ${serial_driver_LIBRARIES}         # 替换 serial_driver::serial_driver
  ${io_context_LIBRARIES}            # 替换 io_context::io_context
  ${common_unique_msgs_LIBRARIES}    # 替换 common_unique_msgs::common_unique_msgs
)

# 声明ROS2依赖（必须与find_package对应）
ament_target_dependencies(imu5651_driver
  rclcpp
  serial_driver                          # 关键修正5：替换原serial
  io_context                             # 关键修正6：添加此项
  common_unique_msgs
  sensor_msgs
  tf2
  nav_msgs
)

# 安装规则（关键修正）
install(TARGETS imu5651_driver
  RUNTIME DESTINATION lib/${PROJECT_NAME}  # ROS2节点标准安装路径
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
)

# 导出依赖（必须与target_link_libraries一致）
ament_export_dependencies(
  rclcpp
  serial_driver                           # 关键修正7：替换原serial
  io_context                              # 关键修正8：添加此项
  common_unique_msgs
  sensor_msgs        # 新增：用于标准GNSS和IMU消息
  tf2                # 新增：用于四元数转换
  nav_msgs
)

# 必须位于文件末尾！
ament_package()

