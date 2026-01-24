#pragma once

#include <rclcpp/rclcpp.hpp>
#include <serial_driver/serial_driver.hpp>
#include <common_unique_msgs/msg/location.hpp>
#include <common_unique_msgs/msg/location_initial.hpp>
#include <common_unique_msgs/msg/custom_gnss.hpp>
#include <common_unique_msgs/msg/custom_imu.hpp>
#include <sensor_msgs/msg/nav_sat_fix.hpp>
#include <sensor_msgs/msg/imu.hpp>
#include <array>
#include <mutex>
#include <atomic>
#include <vector>
#include <string>
#include <chrono>
#include <io_context/io_context.hpp>
#include <nav_msgs/msg/odometry.hpp>


class SerialReader : public rclcpp::Node {
public:
    explicit SerialReader(const rclcpp::NodeOptions& options = rclcpp::NodeOptions());
    virtual ~SerialReader();

private:
    void readSerialData();
    //void processBuffer(std::vector<uint8_t>& buffer);
    bool validateChecksum(const std::string& frame);
    // 时间转换函数声明
    rclcpp::Time convertGpsToRosTime(uint16_t gps_week, double gps_seconds);
    void handleNavigationFrame(const std::string& frame);
    void handleImuFrame(const std::string& frame);

    // 添加以下共享数据成员和互斥锁
    common_unique_msgs::msg::CustomGNSS latest_nav_msg_;  // 存储最新的组合导航消息
    std::mutex nav_msg_mutex_;                         // 保护共享数据的互斥锁
    bool nav_msg_initialized_ = false;                 // 标记导航数据是否已初始化

    uint32_t nav_msg_counter_;    // 导航消息计数器
    uint32_t imu_msg_counter_;    // IMU消息计数器

    //std::string buffer_to_hex(const uint8_t* data, size_t length) const;
    std::vector<std::string> split(const std::string& s, char delimiter);

    // 三缓冲配置
    //std::array<std::vector<uint8_t>, 3> buffers_;
    std::string text_buffer_;
    std::atomic<uint8_t> write_idx_;
    std::atomic<uint8_t> process_idx_;
    std::mutex buffer_mutex_;
    //std::atomic<bool> read_thread_running_{true};
    std::atomic<bool> running_;

    std::unique_ptr<drivers::serial_driver::SerialDriver> serial_driver_;
    std::shared_ptr<drivers::common::IoContext> io_context_;

    std::shared_ptr<rclcpp::executors::MultiThreadedExecutor> executor_;
    //rclcpp::Publisher<common_unique_msgs::msg::Location>::SharedPtr location_pub_;
    //rclcpp::Publisher<common_unique_msgs::msg::LocationInitial>::SharedPtr initial_pub_;
    rclcpp::Publisher<common_unique_msgs::msg::CustomGNSS>::SharedPtr custom_gnss_pub_;
    rclcpp::Publisher<common_unique_msgs::msg::CustomIMU>::SharedPtr custom_imu_pub_;
    rclcpp::Publisher<sensor_msgs::msg::NavSatFix>::SharedPtr gnss_pub_;
    rclcpp::Publisher<sensor_msgs::msg::Imu>::SharedPtr imu_pub_;
    rclcpp::Publisher<nav_msgs::msg::Odometry>::SharedPtr odom_pub_;

    

    std::thread read_thread_;
    std::thread process_thread_;
    std::thread executor_thread_;
    std::thread io_thread_;

    // 常量定义
    static constexpr size_t INITIAL_BUFFER_SIZE = 8192;
    static constexpr std::chrono::milliseconds READ_INTERVAL{2};
    static constexpr size_t MAX_SINGLE_READ = 2048;
    static constexpr char FRAME_END[3] = "\r\n";
};
