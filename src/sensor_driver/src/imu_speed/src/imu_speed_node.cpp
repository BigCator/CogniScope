#include "rclcpp/rclcpp.hpp"
#include "sensor_msgs/msg/imu.hpp"
#include "sensor_msgs/msg/nav_sat_fix.hpp"
#include "geometry_msgs/msg/twist_stamped.hpp"

#include "imu_speed/udp_driver.hpp"

#include <chrono>
#include <cstring>
#include <string>
#include <thread>
#include <cmath>

#ifdef _WIN32
# include <winsock2.h>
# include <ws2tcpip.h>
typedef int socklen_t;
#else
# include <arpa/inet.h>
# include <netinet/in.h>
# include <sys/socket.h>
# include <unistd.h>
#endif

using namespace std::chrono_literals;

namespace imu_speed
{

static inline uint16_t read_be16(const uint8_t * p)
{
  return static_cast<uint16_t>((p[0] << 8) | p[1]);
}

static inline int16_t read_be16s(const uint8_t * p)
{
  return static_cast<int16_t>((p[0] << 8) | p[1]);
}

static inline uint32_t read_be32(const uint8_t * p)
{
  return (static_cast<uint32_t>(p[0]) << 8 * 3) |
         (static_cast<uint32_t>(p[1]) << 8 * 2) |
         (static_cast<uint32_t>(p[2]) << 8 * 1) |
         (static_cast<uint32_t>(p[3]) << 0);
}

static inline int32_t read_be32s(const uint8_t * p)
{
  return static_cast<int32_t>(read_be32(p));
}

uint8_t calculateChecksum(const uint8_t * data, size_t len)
{
  uint32_t checksum = 0;
  for (size_t i = 0; i < len; ++i) {
    checksum += data[i];
  }
  return static_cast<uint8_t>(checksum & 0xFF);
}

std::array<uint8_t, 10> packRequestFrame(const RequestFrame & frame)
{
  std::array<uint8_t, 10> buf{};
  buf[0] = static_cast<uint8_t>((frame.frame_header >> 8) & 0xFF);
  buf[1] = static_cast<uint8_t>(frame.frame_header & 0xFF);
  buf[2] = static_cast<uint8_t>((frame.frame_type >> 8) & 0xFF);
  buf[3] = static_cast<uint8_t>(frame.frame_type & 0xFF);
  buf[4] = static_cast<uint8_t>((frame.frame_length >> 8) & 0xFF);
  buf[5] = static_cast<uint8_t>(frame.frame_length & 0xFF);
  buf[6] = frame.accumulated;
  buf[7] = static_cast<uint8_t>((frame.request_id >> 8) & 0xFF);
  buf[8] = static_cast<uint8_t>(frame.request_id & 0xFF);
  buf[9] = calculateChecksum(buf.data(), 9);  // 最后 1 字节为 CRC
  return buf;
}

bool parseMotorStateFrame(const uint8_t * data, size_t len, MotorStateFrame & out)
{
  // 基本长度检查
  if (len < 14) {
    return false;
  }

  out.frame_header = read_be16(data + 0);
  out.frame_type = read_be16(data + 2);
  out.frame_length = read_be16(data + 4);

  if (out.frame_header != 0xAACC || out.frame_type != 0x0021) {
    return false;
  }

  out.accumulated = data[6];
  out.left_wheel_raw = read_be16(data + 7);
  out.right_wheel_raw = read_be16(data + 9);
  out.baoliu01[0] = data[11];
  out.baoliu02[0] = data[12];

  out.checksum = data[len - 1];
  return true;
}

bool parseImuStateFrame(const uint8_t * data, size_t len, ImuStateFrame & out)
{
  // 协议中 frame_length=49（单位：字节），最后 1 字节为 crc；这里只做基本长度与帧头类型检查
  if (len < 20) {
    return false;
  }

  size_t off = 0;
  out.frame_header = read_be16(data + off); off += 2;
  out.frame_type = read_be16(data + off); off += 2;
  out.frame_length = read_be16(data + off); off += 2;

  if (out.frame_header != 0xAACC || out.frame_type == 0x0021) {
    return false;
  }

  out.accumulated = data[off]; off += 1;

  out.gyro_x = read_be16s(data + off); off += 2;
  out.gyro_y = read_be16s(data + off); off += 2;
  out.gyro_z = read_be16s(data + off); off += 2;

  out.acc_x = read_be16s(data + off); off += 2;
  out.acc_y = read_be16s(data + off); off += 2;
  out.acc_z = read_be16s(data + off); off += 2;

  out.q0 = read_be32s(data + off); off += 4;
  out.q1 = read_be32s(data + off); off += 4;
  out.q2 = read_be32s(data + off); off += 4;
  out.q3 = read_be32s(data + off); off += 4;

  out.mag_x = read_be16s(data + off); off += 2;
  out.mag_y = read_be16s(data + off); off += 2;
  out.mag_z = read_be16s(data + off); off += 2;

  out.lon = read_be32s(data + off); off += 4;
  out.lat = read_be32s(data + off); off += 4;
  out.height = read_be32s(data + off); off += 4;

  out.rtk_state = data[off]; off += 1;

  out.gps_speed = read_be16s(data + off); off += 2;
  out.car_speed = read_be16s(data + off); off += 2;

  out.dual_antenna_heading = read_be16(data + off); off += 2;

  out.time_raw = read_be32(data + off); off += 4;

  out.crc = data[len - 1];

  return (out.frame_header == 0xAACC && out.frame_type == 0x0027);
}

class ImuSpeedNode : public rclcpp::Node
{
public:
  ImuSpeedNode()
  : Node("imu_speed_node")
  {
    this->declare_parameter<std::string>("remote_ip", "192.168.17.20");
    this->declare_parameter<int>("remote_port", 8000);
    this->declare_parameter<int>("local_port", 8001);
    this->declare_parameter<int>("request_id", 0xFFFF);  // 默认请求全部帧
    this->declare_parameter<double>("publish_rate_hz", 100.0);
    // 发布开关
    this->declare_parameter<bool>("enable_imu", true);
    this->declare_parameter<bool>("enable_wheel", true);
    this->declare_parameter<bool>("enable_gps_fix", true);
    this->declare_parameter<bool>("enable_gps_vel", true);

    remote_ip_ = this->get_parameter("remote_ip").as_string();
    remote_port_ = this->get_parameter("remote_port").as_int();
    local_port_ = this->get_parameter("local_port").as_int();
    request_id_ = static_cast<uint16_t>(this->get_parameter("request_id").as_int());
    publish_period_ = 1.0 / this->get_parameter("publish_rate_hz").as_double();
    enable_imu_ = this->get_parameter("enable_imu").as_bool();
    enable_wheel_ = this->get_parameter("enable_wheel").as_bool();
    enable_gps_fix_ = this->get_parameter("enable_gps_fix").as_bool();
    enable_gps_vel_ = this->get_parameter("enable_gps_vel").as_bool();

    imu_pub_ = this->create_publisher<sensor_msgs::msg::Imu>("imu/data_raw", 10);
    wheel_pub_ =
      this->create_publisher<geometry_msgs::msg::TwistStamped>("wheel_speed", 10);
    gps_fix_pub_ =
      this->create_publisher<sensor_msgs::msg::NavSatFix>("gps/fix", 10);
    gps_vel_pub_ =
      this->create_publisher<geometry_msgs::msg::TwistStamped>("gps/vel", 10);

    if (!initSocket()) {
      RCLCPP_ERROR(this->get_logger(), "Failed to init UDP socket");
      throw std::runtime_error("socket init failed");
    }

    timer_ = this->create_wall_timer(
      std::chrono::duration<double>(publish_period_),
      std::bind(&ImuSpeedNode::onTimer, this));
  }

  ~ImuSpeedNode() override
  {
#ifndef _WIN32
    if (sock_fd_ >= 0) {
      ::close(sock_fd_);
    }
#else
    if (sock_fd_ != INVALID_SOCKET) {
      closesocket(sock_fd_);
      WSACleanup();
    }
#endif
  }

private:
  bool initSocket()
  {
#ifdef _WIN32
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
      return false;
    }
#endif

    sock_fd_ = ::socket(AF_INET, SOCK_DGRAM, 0);
    if (sock_fd_ < 0) {
      return false;
    }

    sockaddr_in local_addr{};
    local_addr.sin_family = AF_INET;
    local_addr.sin_addr.s_addr = INADDR_ANY;
    local_addr.sin_port = htons(static_cast<uint16_t>(local_port_));

    if (bind(sock_fd_, reinterpret_cast<sockaddr *>(&local_addr), sizeof(local_addr)) < 0) {
      return false;
    }

    std::memset(&remote_addr_, 0, sizeof(remote_addr_));
    remote_addr_.sin_family = AF_INET;
    remote_addr_.sin_port = htons(static_cast<uint16_t>(remote_port_));
    if (inet_pton(AF_INET, remote_ip_.c_str(), &remote_addr_.sin_addr) <= 0) {
      return false;
    }

    return true;
  }

  void sendRequest()
  {
    RequestFrame rf;
    rf.request_id = request_id_;
    static uint8_t accumulated = 0;
    rf.accumulated = accumulated++;
    auto buf = packRequestFrame(rf);
    (void)::sendto(
      sock_fd_,
      reinterpret_cast<const char *>(buf.data()),
      static_cast<int>(buf.size()),
      0,
      reinterpret_cast<sockaddr *>(&remote_addr_),
      sizeof(remote_addr_));
  }

  void onTimer()
  {
    sendRequest();

    uint8_t buf[256];
    sockaddr_in src_addr{};
    socklen_t addr_len = sizeof(src_addr);

    // 非阻塞/短超时读取可以更安全，这里简单使用一次 recvfrom，若无数据则直接返回
    int flags =
#ifdef _WIN32
      0;
#else
      MSG_DONTWAIT;
#endif

    int n = ::recvfrom(
      sock_fd_,
      reinterpret_cast<char *>(buf),
      static_cast<int>(sizeof(buf)),
      flags,
      reinterpret_cast<sockaddr *>(&src_addr),
      &addr_len);

    if (n <= 0) {
      return;
    }

    // 根据帧类型判断是哪类数据
    if (n >= 6) {
      uint16_t frame_type = read_be16(buf + 2);
      if (frame_type == 0x0021) {
        handleMotorFrame(buf, static_cast<size_t>(n));
      } else if (frame_type == 0x0027) {
        handleImuFrame(buf, static_cast<size_t>(n));
      } else {
        // 其他帧暂不处理
      }
    }
  }

  void handleMotorFrame(const uint8_t * data, size_t len)
  {
    if (!enable_wheel_) {
      return;
    }
    MotorStateFrame frame{};
    if (!parseMotorStateFrame(data, len, frame)) {
      RCLCPP_WARN_THROTTLE(
        this->get_logger(), *this->get_clock(), 2000,
        "Failed to parse MotorStateFrame");
      return;
    }

    auto msg = geometry_msgs::msg::TwistStamped();
    msg.header.stamp = this->get_clock()->now();
    msg.header.frame_id = "base_link";

    const double left = wheelRawToRadPerSec(frame.left_wheel_raw);
    const double right = wheelRawToRadPerSec(frame.right_wheel_raw);

    // 简单用线速度/角速度表示：这里假设左右轮间距为 1m，可根据真实车体改
    const double tread = 1.0;
    msg.twist.linear.x = (left + right) * 0.5;           // 近似线速度 (rad/s -> 直接输出)
    msg.twist.angular.z = (right - left) / tread;        // 简单差速模型
    msg.twist.linear.y = 0.0;
    msg.twist.linear.z = 0.0;
    msg.twist.angular.x = 0.0;
    msg.twist.angular.y = 0.0;

    if (wheel_pub_) {
      wheel_pub_->publish(msg);
    }
  }

  void handleImuFrame(const uint8_t * data, size_t len)
  {
    if (!enable_imu_ && !enable_gps_fix_ && !enable_gps_vel_) {
      return;
    }
    ImuStateFrame frame{};
    if (!parseImuStateFrame(data, len, frame)) {
      RCLCPP_WARN_THROTTLE(
        this->get_logger(), *this->get_clock(), 2000,
        "Failed to parse ImuStateFrame");
      return;
    }

    // 使用同一个时间戳给 IMU / GPS 消息
    const auto stamp = this->get_clock()->now();

    auto msg = sensor_msgs::msg::Imu();
    msg.header.stamp = stamp;
    msg.header.frame_id = "imu_link";

    // 角速度：协议是 deg/s，需要转 rad/s
    constexpr double DEG2RAD = 3.14159265358979323846 / 180.0;
    const double wx = gyroRawToDegPerSec(frame.gyro_x) * DEG2RAD;
    const double wy = gyroRawToDegPerSec(frame.gyro_y) * DEG2RAD;
    const double wz = gyroRawToDegPerSec(frame.gyro_z) * DEG2RAD;

    msg.angular_velocity.x = wx;
    msg.angular_velocity.y = wy;
    msg.angular_velocity.z = wz;

    // 加速度：直接 m/s^2
    msg.linear_acceleration.x = accRawToMps2(frame.acc_x);
    msg.linear_acceleration.y = accRawToMps2(frame.acc_y);
    msg.linear_acceleration.z = accRawToMps2(frame.acc_z);

    // 四元数
    msg.orientation.w = quatRawToDouble(frame.q0);
    msg.orientation.x = quatRawToDouble(frame.q1);
    msg.orientation.y = quatRawToDouble(frame.q2);
    msg.orientation.z = quatRawToDouble(frame.q3);

    if (enable_imu_ && imu_pub_) {
      imu_pub_->publish(msg);
    }

    // ---------------- GPS NavSatFix ----------------
    if (enable_gps_fix_ && gps_fix_pub_) {
      auto fix = sensor_msgs::msg::NavSatFix();
      fix.header.stamp = stamp;
      fix.header.frame_id = "base_link";

      sensor_msgs::msg::NavSatStatus status;
      // rtk_state：0=不定位,1=单点,2=DGPS,4=RTK固定解,5=RTK浮点解
      switch (frame.rtk_state) {
        case 0:
          status.status = sensor_msgs::msg::NavSatStatus::STATUS_NO_FIX;
          break;
        case 1:
          status.status = sensor_msgs::msg::NavSatStatus::STATUS_FIX;
          break;
        case 2:
          status.status = sensor_msgs::msg::NavSatStatus::STATUS_SBAS_FIX;
          break;
        case 4:
        case 5:
          status.status = sensor_msgs::msg::NavSatStatus::STATUS_GBAS_FIX;
          break;
        default:
          status.status = sensor_msgs::msg::NavSatStatus::STATUS_NO_FIX;
          break;
      }
      status.service = sensor_msgs::msg::NavSatStatus::SERVICE_GPS;
      fix.status = status;

      // 经纬度、高度
      fix.latitude = static_cast<double>(frame.lat) * 1e-7;   // deg
      fix.longitude = static_cast<double>(frame.lon) * 1e-7;  // deg
      fix.altitude = static_cast<double>(frame.height) * 1e-3;  // m

      fix.position_covariance_type =
        sensor_msgs::msg::NavSatFix::COVARIANCE_TYPE_UNKNOWN;

      gps_fix_pub_->publish(fix);
    }

    // ---------------- GPS 速度（模长） ----------------
    if (enable_gps_vel_ && gps_vel_pub_) {
      auto gps_vel = geometry_msgs::msg::TwistStamped();
      gps_vel.header.stamp = stamp;
      gps_vel.header.frame_id = "base_link";
      const double v_gps = static_cast<double>(frame.gps_speed) * 1e-2;  // m/s
      gps_vel.twist.linear.x = v_gps;  // 沿车体 x 方向，只有模长信息
      gps_vel_pub_->publish(gps_vel);
    }
  }

  // 参数
  std::string remote_ip_;
  int remote_port_{8000};
  int local_port_{8001};
  uint16_t request_id_{0xFFFF};
  double publish_period_{0.01};

  bool enable_imu_{true};
  bool enable_wheel_{true};
  bool enable_gps_fix_{true};
  bool enable_gps_vel_{true};

  // UDP
  int sock_fd_{-1};
  sockaddr_in remote_addr_{};

  // ROS
  rclcpp::Publisher<sensor_msgs::msg::Imu>::SharedPtr imu_pub_;
  rclcpp::Publisher<geometry_msgs::msg::TwistStamped>::SharedPtr wheel_pub_;
  rclcpp::Publisher<sensor_msgs::msg::NavSatFix>::SharedPtr gps_fix_pub_;
  rclcpp::Publisher<geometry_msgs::msg::TwistStamped>::SharedPtr gps_vel_pub_;
  rclcpp::TimerBase::SharedPtr timer_;
};

}  // namespace imu_speed

int main(int argc, char ** argv)
{
  rclcpp::init(argc, argv);
  auto node = std::make_shared<imu_speed::ImuSpeedNode>();
  rclcpp::spin(node);
  rclcpp::shutdown();
  return 0;
}



