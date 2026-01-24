#include "imu5651_driver/serial_reader.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <ctime>       // 用于gmtime_r和时间处理
#include <sstream>
#include <vector>
#include <serial_driver/serial_driver.hpp>
#include <sys/ioctl.h>
#include <linux/serial.h>
#include <sstream>   // 用于 std::ostringstream
#include <iomanip>   // 用于 std::hex/ std::setw
#include <tf2/LinearMath/Quaternion.h>  // 添加四元数转换库
#include <sensor_msgs/msg/nav_sat_status.hpp>
#include <nav_msgs/msg/odometry.hpp>	// 添加 Odometry 消息头文件

using namespace std::chrono_literals;
using drivers::serial_driver::FlowControl;
using drivers::serial_driver::Parity;
using drivers::serial_driver::SerialDriver;
using drivers::serial_driver::SerialPortConfig;
using drivers::serial_driver::StopBits;

// 常量定义
constexpr int64_t GPS_TO_UNIX_OFFSET = 315964800;
constexpr int LEAP_SECONDS = 18;

SerialReader::SerialReader(const rclcpp::NodeOptions& options) : Node("imu5651_driver", options),
  io_context_(std::make_shared<drivers::common::IoContext>()),
  write_idx_(0),
  process_idx_(1),
  running_(true),
  nav_msg_initialized_(false),
  nav_msg_counter_(0),
  imu_msg_counter_(0)
{
    // 参数声明
    this->declare_parameter<std::string>("port", "/dev/ttyUSB0");
    this->declare_parameter<int>("baudrate", 230400);
    this->declare_parameter<bool>("hw_flowcontrol", false);

    // 获取参数
    const auto port = this->get_parameter("port").as_string();
    const auto baudrate = this->get_parameter("baudrate").as_int();
    const auto hw_flowcontrol = this->get_parameter("hw_flowcontrol").as_bool();



    /*// 配置串口参数
    const auto flow_control = hw_flowcontrol ? FlowControl::HARDWARE : FlowControl::NONE;
    const auto serial_config = std::make_unique<SerialPortConfig>(
        static_cast<uint32_t>(baudrate),
        flow_control,
        Parity::NONE,
        StopBits::ONE
    );

    // 正确初始化serial_driver_
    try {
        auto context = this->get_node_options().context();
        serial_driver_ = std::make_unique<SerialDriver>(*io_context_);
        serial_driver_->init_port(port, *serial_config);
        serial_driver_->port()->open();
    } catch (const std::exception& e) {
        RCLCPP_FATAL(this->get_logger(), "SerialDriver init failed: %s", e.what());
        throw;
    }*/
    try {
        // 正确初始化（Foxy接口）
        serial_driver_ = std::make_unique<drivers::serial_driver::SerialDriver>(
            *io_context_
        );

        const auto flow_control = hw_flowcontrol ?
            drivers::serial_driver::FlowControl::HARDWARE :
            drivers::serial_driver::FlowControl::NONE;

        const auto serial_config = drivers::serial_driver::SerialPortConfig(
            static_cast<uint32_t>(baudrate),
            flow_control,
            drivers::serial_driver::Parity::NONE,
            drivers::serial_driver::StopBits::ONE
        );

        serial_driver_->init_port(port, serial_config);
        serial_driver_->port()->open();
        // 添加端口状态检查
        if (serial_driver_->port()->is_open()) {
            RCLCPP_INFO(this->get_logger(), "成功打开端口: %s (波特率: %ld)", port.c_str(), baudrate);
        } else {
            RCLCPP_FATAL(this->get_logger(), "端口打开失败: %s", port.c_str());
            throw std::runtime_error("Port open failed");
        }

        RCLCPP_INFO(this->get_logger(), "IO service started with %u threads", io_context_->serviceThreadCount());
    } catch (const std::exception& e) {
        RCLCPP_FATAL(this->get_logger(), "Init error: %s", e.what());
        throw;
    }




    // 初始化发布者（带更大的QoS队列）
    //location_pub_ = this->create_publisher<common_unique_msgs::msg::Location>("zw040201/location",10);

    //initial_pub_ = this->create_publisher<common_unique_msgs::msg::LocationInitial>("zw040201/location_initial",10);
    // GNSS 标准消息发布者 (sensor_msgs/msg/NavSatFix)
    gnss_pub_ = this->create_publisher<sensor_msgs::msg::NavSatFix>("zw040201/gnss5651", 10);
    //gnss_pub_ = this->create_publisher<sensor_msgs::msg::NavSatFix>("gnss/fix", 10);
    // IMU 标准消息发布者 (sensor_msgs/msg/Imu)
    imu_pub_ = this->create_publisher<sensor_msgs::msg::Imu>("zw040201/imu5651", 10);

    custom_gnss_pub_ = this->create_publisher<common_unique_msgs::msg::CustomGNSS>("/gps/custom",10);

    custom_imu_pub_ = this->create_publisher<common_unique_msgs::msg::CustomIMU>("/imu/custom",10);
    
    // 新增 Odometry 发布者
    odom_pub_ = this->create_publisher<nav_msgs::msg::Odometry>("/odometry/gnss", 10);

    // 启动读取线程
    read_thread_ = std::thread(&SerialReader::readSerialData, this);


    RCLCPP_INFO(this->get_logger(),"ALL threads started");

}


SerialReader::~SerialReader() {
    running_.store(false);
    //停止执行器
    if(io_context_){

        io_context_->waitForExit();
        RCLCPP_INFO(this->get_logger(),"io service stopped");
    }

    if (read_thread_.joinable()) {
        read_thread_.join();
    }
    if (process_thread_.joinable()) {
        process_thread_.join();
    }

    try {
        if (serial_driver_ && serial_driver_->port()->is_open()) {
            serial_driver_->port()->close();
            RCLCPP_INFO(this->get_logger(),"Serial port closed");
        }
    } catch (const std::exception& e) {
        RCLCPP_ERROR(this->get_logger(), "Port close error: %s", e.what());
    }
}

/*std::string SerialReader::buffer_to_hex(const uint8_t* data, size_t length) const {
    std::ostringstream oss;
    oss << std::hex << std::setfill('0');
    for (size_t i = 0; i < length; ++i) {
      oss << std::setw(2) << static_cast<int>(data[i]) << " ";
    }
    return oss.str();
  }*/

void SerialReader::readSerialData() {
    RCLCPP_INFO(this->get_logger(), "Read thread started");
    std::vector<uint8_t> temp_buffer(MAX_SINGLE_READ);
    //temp_buffer.resize(MAX_SINGLE_READ); // 2048字节

    while (rclcpp::ok() && running_.load()) {
        try {
            size_t bytes_read = serial_driver_->port()->receive(temp_buffer);

        //转换为字符串处理
        std::lock_guard<std::mutex> lock(buffer_mutex_);
        text_buffer_.append(reinterpret_cast<char*>(temp_buffer.data()),bytes_read);

        //分割处理完整帧
        size_t pos = 0;
        while ((pos = text_buffer_.find("\r\n")) != std::string::npos) {
            std::string line = text_buffer_.substr(0, pos);
            text_buffer_.erase(0, pos + 2); //移除已处理数据

            //直接处理有效行
            if (validateChecksum(line)) {
                if (line.find("$GPFPD") == 0) {
                    handleNavigationFrame(line);
                } else if (line.find("$GTIMU") == 0) {
                    handleImuFrame(line);
                }
            } else {
                RCLCPP_WARN(this->get_logger(),"校验失败：%s 长度：%zu",line.c_str(),line.size());
            }
        }

        } catch (const std::exception& e) {
            RCLCPP_ERROR(this->get_logger(), "接收异常: %s", e.what());
            std::this_thread::sleep_for(1s);
        }
    }
}


bool SerialReader::validateChecksum(const std::string& frame) {
    //增加空行过滤
    if (frame.empty() || frame[0] != '$') return false;
    
    size_t asterisk_pos = frame.find('*');
    if (asterisk_pos == std::string::npos || asterisk_pos + 2 >= frame.size()) {
        return false;
    }

    uint8_t calculated = 0;
    for (size_t i = 1; i < asterisk_pos; ++i) {
        calculated ^= static_cast<uint8_t>(frame[i]);
    }

    try {
        uint8_t expected = static_cast<uint8_t>(
            std::stoi(frame.substr(asterisk_pos + 1, 2), nullptr, 16));
        return calculated == expected;
    } catch (...) {
        return false;
    }
}

// ============== 组合导航消息处理 ==============
void SerialReader::handleNavigationFrame(const std::string& frame) {
    //common_unique_msgs::msg::Location msg;
    sensor_msgs::msg::NavSatFix gnss_msg;  // 标准 GNSS 消息
    common_unique_msgs::msg::CustomGNSS custom_gnss;  // 新增消息

    // 新增 Odometry 消息
    nav_msgs::msg::Odometry odom_msg;
    
    
    try {
        std::vector<std::string> tokens = split(frame, ',');
        if (tokens.size() < 16) throw std::out_of_range("Invalid frame");

        // 解析时间
        int gps_week = std::stoi(tokens[1]);
        double gps_time = std::stod(tokens[2]);
        // ====================== 填充并发布 Odometry 消息 ======================
        odom_msg.header.stamp = convertGpsToRosTime(gps_week, gps_time);
        odom_msg.header.frame_id = "odom";
        odom_msg.child_frame_id = "base_link";
        
        odom_msg.twist.twist.linear.x = std::sqrt((std::stod(tokens[9]))*(std::stod(tokens[9])) + (std::stod(tokens[10])) * (std::stod(tokens[10])));  // 东向速度 (m/s)
        odom_msg.twist.twist.linear.y = 0.0; // 北向速度 (m/s)
        odom_msg.twist.twist.linear.z = 0.0; // 天向速度 (m/s)
        
        // 设置角速度 (从导航数据获取)
        //if (nav_msg_initialized_) {
        //    std::lock_guard<std::mutex> lock(nav_msg_mutex_);
        //    odom_msg.twist.twist.angular.x = latest_nav_msg_.roll;
        //    odom_msg.twist.twist.angular.y = latest_nav_msg_.pitch;
        //    odom_msg.twist.twist.angular.z = latest_nav_msg_.heading;
        //}
        
        // 设置协方差 (示例值，可根据实际需求调整)
        odom_msg.twist.covariance[0] = 0.1;  // vx 方差
        odom_msg.twist.covariance[7] = 0.1;  // vy 方差
        odom_msg.twist.covariance[14] = 0.1; // vz 方差
        odom_msg.twist.covariance[21] = 0.01; // wx 方差
        odom_msg.twist.covariance[28] = 0.01; // wy 方差
        odom_msg.twist.covariance[35] = 0.01; // wz 方差
        
        // 发布 Odometry 消息
        odom_pub_->publish(odom_msg);
        
        
        // 填充标准 GNSS 消息头
        gnss_msg.header.stamp = convertGpsToRosTime(gps_week, gps_time);
        gnss_msg.header.frame_id = "gnss";

        // 设置位置信息
        gnss_msg.latitude = std::stod(tokens[6]);
        gnss_msg.longitude = std::stod(tokens[7]);
        gnss_msg.altitude = std::stod(tokens[8]);

        // 设置定位状态
        gnss_msg.status.status = sensor_msgs::msg::NavSatStatus::STATUS_FIX;
        if (tokens[15].size() >= 2) {
            const std::string& state_flag = tokens[15].substr(0, 2);
            if (state_flag == "4B") {
                gnss_msg.status.status = sensor_msgs::msg::NavSatStatus::STATUS_GBAS_FIX;
            } else if (state_flag == "4A") {
                gnss_msg.status.status = sensor_msgs::msg::NavSatStatus::STATUS_SBAS_FIX;
            } else {
                gnss_msg.status.status = sensor_msgs::msg::NavSatStatus::STATUS_NO_FIX;
            }
        }

        // 设置卫星系统
        gnss_msg.status.service = sensor_msgs::msg::NavSatStatus::SERVICE_GPS | sensor_msgs::msg::NavSatStatus::SERVICE_GLONASS;

        // 设置位置协方差 (示例值，实际应使用真实数据)
        gnss_msg.position_covariance_type = sensor_msgs::msg::NavSatFix::COVARIANCE_TYPE_DIAGONAL_KNOWN;
        gnss_msg.position_covariance[0] = 1.44;  // 东向方差 (m²)
        gnss_msg.position_covariance[4] = 1.44;  // 北向方差
        gnss_msg.position_covariance[8] = 6.25;   // 天向方差

        // 发布标准 GNSS 消息
        gnss_pub_->publish(gnss_msg);


        // ====================== 新增 CustomGNSS 消息处理 ======================
        // 时间戳（使用相同GPS时间）
        custom_gnss.header.stamp = convertGpsToRosTime(gps_week, gps_time);
        custom_gnss.header.frame_id = "gps_link";

        // 直接读取原始数据（无需单位转换）
        custom_gnss.gps_week = gps_week;         // tokens[1]
        custom_gnss.gps_time = gps_time;         // tokens[2]
        custom_gnss.heading = std::stod(tokens[3]);
        custom_gnss.pitch = std::stod(tokens[4]);
        custom_gnss.roll = std::stod(tokens[5]);
        custom_gnss.latitude = std::stod(tokens[6]);
        custom_gnss.longitude = std::stod(tokens[7]);
        custom_gnss.altitude = std::stod(tokens[8]);
        custom_gnss.ve = std::stod(tokens[9]);
        custom_gnss.vn = std::stod(tokens[10]);
        custom_gnss.vu = std::stod(tokens[11]);
        custom_gnss.baseline = std::stod(tokens[12]);
        custom_gnss.nsv1 = static_cast<uint8_t>(std::stoi(tokens[13]));
        custom_gnss.nsv2 = static_cast<uint8_t>(std::stoi(tokens[14]));
        custom_gnss.status = static_cast<uint16_t>(std::stoi(tokens[15], nullptr, 16));  // 16进制解析

        // 校验和
        size_t asterisk_pos = frame.find_last_of('*');
        if (asterisk_pos != std::string::npos && frame.size() >= asterisk_pos+3) {
            custom_gnss.checksum = frame.substr(asterisk_pos+1, 2);
        }

        custom_gnss_pub_->publish(custom_gnss);

        // === 新增：保存最新导航数据 ===
        {
            std::lock_guard<std::mutex> lock(nav_msg_mutex_);
            latest_nav_msg_ = custom_gnss;              // 保存最新消息
            nav_msg_initialized_ = true;        // 标记已初始化
        }

    } catch (const std::exception& e) {
        RCLCPP_ERROR(this->get_logger(), "GPFPD parse error: %s", e.what());
    }
}

rclcpp::Time SerialReader::convertGpsToRosTime(
    uint16_t gps_week,
    double gps_seconds
) {
    const int64_t GPS_EPOCH_OFFSET = 315964800;  // GPS时间起点到UNIX时间的秒数偏移
    const int64_t LEAP_SECONDS = 18;             // 当前闰秒

    // 计算总秒数
    int64_t total_sec = 
        static_cast<int64_t>(gps_week) * 604800 + 
        static_cast<int64_t>(gps_seconds) - 
        LEAP_SECONDS;

    // 转换为ROS时间
    return rclcpp::Time(
        total_sec + GPS_EPOCH_OFFSET,
        static_cast<uint64_t>((gps_seconds - floor(gps_seconds)) * 1e9)
    );
}

// ============== 惯导原始数据处理 ==============
void SerialReader::handleImuFrame(const std::string& frame) {
    sensor_msgs::msg::Imu imu_msg;        // 标准 IMU 消息
    common_unique_msgs::msg::CustomIMU custom_imu;        // 新增消息

    try {
        std::vector<std::string> tokens = split(frame, ',');
        if (tokens.size() < 10) throw std::out_of_range("Invalid frame");


        // 解析时间
        int gps_week = std::stoi(tokens[1]);
        double gps_time = std::stod(tokens[2]);

        // 填充标准 IMU 消息头
        imu_msg.header.stamp = convertGpsToRosTime(gps_week, gps_time);
        imu_msg.header.frame_id = "imu";

        // 设置角速度 (单位: rad/s)
        imu_msg.angular_velocity.x = std::stod(tokens[3]) * (M_PI / 180.0);  // 度/秒 -> 弧度/秒
        imu_msg.angular_velocity.y = std::stod(tokens[4]) * (M_PI / 180.0);
        imu_msg.angular_velocity.z = std::stod(tokens[5]) * (M_PI / 180.0);
        
        // ============== 重力补偿 ==============
        constexpr double G_TO_MPS2 = 9.80665;
        double acc_x_raw = std::stod(tokens[6]) * G_TO_MPS2;
        double acc_y_raw = std::stod(tokens[7]) * G_TO_MPS2;
        double acc_z_raw = std::stod(tokens[8]) * G_TO_MPS2;

        // 初始化重力分量
        double g_x = 0.0;
        double g_y = 0.0;
        double g_z = 0.0;

        // 添加重力补偿
        if (nav_msg_initialized_) {
            std::lock_guard<std::mutex> lock(nav_msg_mutex_);
            const uint64_t time_diff = std::abs(gps_time - latest_nav_msg_.gps_time);
            
            if (time_diff < 0.1) {  // 时间差小于0.1秒
                // 将角度转换为弧度
                double roll_rad = latest_nav_msg_.roll * M_PI / 180.0;
                double pitch_rad = latest_nav_msg_.pitch * M_PI / 180.0;
                
                // 计算重力在各轴上的分量
                g_x = -G_TO_MPS2 * sin(pitch_rad);
                g_y = G_TO_MPS2 * sin(roll_rad) * cos(pitch_rad);
                g_z = G_TO_MPS2 * cos(roll_rad) * cos(pitch_rad);
            }
        }

        // 应用重力补偿和零偏校正
        //imu_msg.linear_acceleration.x = acc_x_raw - g_x;
        //imu_msg.linear_acceleration.y = acc_y_raw - g_y;
        //imu_msg.linear_acceleration.z = acc_z_raw - g_z;


        // 设置加速度 (单位: m/s²)
        //constexpr double G_TO_MPS2 = 9.80665;
        imu_msg.linear_acceleration.x = (std::stod(tokens[6])) * G_TO_MPS2;  // g -> m/s²
        imu_msg.linear_acceleration.y = (std::stod(tokens[7])) * G_TO_MPS2;
        imu_msg.linear_acceleration.z = std::stod(tokens[8]) * G_TO_MPS2;

        // 设置协方差 (示例值)
        imu_msg.angular_velocity_covariance[0] = 2.4 * 1e-9;  // x
        imu_msg.angular_velocity_covariance[4] = 2.4 * 1e-9;  // y
        imu_msg.angular_velocity_covariance[8] = 2.4 * 1e-9;  // z

        imu_msg.linear_acceleration_covariance[0] = 2.4 * 1e-7;  // x
        imu_msg.linear_acceleration_covariance[4] = 2.4 * 1e-7;  // y
        imu_msg.linear_acceleration_covariance[8] = 2.4 * 1e-7;  // z

        // 设置姿态 (四元数)
        double roll, pitch, yaw;

        // 尝试获取导航数据中的姿态角
        if (nav_msg_initialized_) {
            std::lock_guard<std::mutex> lock(nav_msg_mutex_);
            const uint64_t time_diff = std::abs(gps_time - latest_nav_msg_.gps_time);
            if (time_diff < 0.1) {
                roll = latest_nav_msg_.roll;  // 度 -> 弧度
                pitch = latest_nav_msg_.pitch;
                yaw = latest_nav_msg_.heading;
            }
        }

        // 转换欧拉角为四元数
        tf2::Quaternion q;
        //q.setRPY(roll, pitch, yaw);
        q.setRPY(roll * M_PI/180.0, pitch * M_PI/180.0, yaw * M_PI/180.0);
        imu_msg.orientation.x = q.x();
        imu_msg.orientation.y = q.y();
        imu_msg.orientation.z = q.z();
        imu_msg.orientation.w = q.w();

        imu_msg.orientation_covariance[0] = 7.6 * 1e-7;  // 横滚方差
        imu_msg.orientation_covariance[4] = 7.6 * 1e-7;  // 俯仰方差
        imu_msg.orientation_covariance[8] = 3 * 1e-6;         // 航向方差

        // 发布标准 IMU 消息
        imu_pub_->publish(imu_msg);


        // ====================== 新增 CustomIMU 消息处理 ======================
        // 时间戳（复用已解析的GPS时间）
        custom_imu.header.stamp = convertGpsToRosTime(gps_week, gps_time);
        custom_imu.header.frame_id = "imu_link";

        // 直接读取原始数据（无需单位转换）
        custom_imu.gps_week = gps_week;                     // tokens[1]
        custom_imu.gps_time = gps_time;                     // tokens[2]
        custom_imu.gyro_x = std::stod(tokens[3]);           // 原始单位（度/秒）
        custom_imu.gyro_y = std::stod(tokens[4]);
        custom_imu.gyro_z = std::stod(tokens[5]);
        custom_imu.acc_x = std::stod(tokens[6]);            // 原始单位（g）
        custom_imu.acc_y = std::stod(tokens[7]);
        custom_imu.acc_z = std::stod(tokens[8]);
        custom_imu.temperature = std::stod(tokens[9]);      // 温度（°C）

        // 校验和提取（如 "*1A" → "1A"）
        size_t asterisk_pos = frame.find_last_of('*');
        if (asterisk_pos != std::string::npos && frame.size() >= asterisk_pos+3) {
            custom_imu.checksum = frame.substr(asterisk_pos+1, 2);
        }

        custom_imu_pub_->publish(custom_imu);


    } catch (const std::exception& e) {
        RCLCPP_ERROR(this->get_logger(), "GTIMU parse error: %s", e.what());
    }
}


    std::vector<std::string> SerialReader::split(const std::string& s, char delimiter) {
        std::vector<std::string> tokens;
        std::string token;
        std::istringstream tokenStream(s);

        while (std::getline(tokenStream, token, delimiter)) {
            if (!token.empty()) {
                tokens.push_back(token);
            }
        }

        return tokens;
    }
