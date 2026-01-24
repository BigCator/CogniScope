#ifndef IMU_SPEED__UDP_DRIVER_HPP_
#define IMU_SPEED__UDP_DRIVER_HPP_

#include <array>
#include <cstdint>
#include <string>
#include <vector>

namespace imu_speed
{

// 通用请求帧（0x8000 / 0x0029）
struct RequestFrame
{
  uint16_t frame_header{0x8000};
  uint16_t frame_type{0x0029};
  uint16_t frame_length{10};
  uint8_t accumulated{0};
  uint16_t request_id{0};
  uint8_t crc{0};
};

// 电机状态帧（0x0021）
struct MotorStateFrame
{
  uint16_t frame_header;
  uint16_t frame_type;
  uint16_t frame_length;
  uint8_t accumulated;
  uint16_t left_wheel_raw;
  uint16_t right_wheel_raw;
  std::array<uint8_t, 1> baoliu01;
  std::array<uint8_t, 1> baoliu02;
  std::array<uint16_t, 10> reserved;
  uint8_t checksum;
};

// IMU 状态帧（0x0027）
struct ImuStateFrame
{
  uint16_t frame_header;
  uint16_t frame_type;
  uint16_t frame_length;
  uint8_t accumulated;
  int16_t gyro_x;
  int16_t gyro_y;
  int16_t gyro_z;
  int16_t acc_x;
  int16_t acc_y;
  int16_t acc_z;
  int32_t q0;
  int32_t q1;
  int32_t q2;
  int32_t q3;
  int16_t mag_x;
  int16_t mag_y;
  int16_t mag_z;
  int32_t lon;
  int32_t lat;
  int32_t height;
  uint8_t rtk_state;
  int16_t gps_speed;
  int16_t car_speed;
  uint16_t dual_antenna_heading;
  uint32_t time_raw;
  uint8_t crc;
};

// 校验和计算：字节累加取低 8 位
uint8_t calculateChecksum(const uint8_t * data, size_t len);

// 将 RequestFrame 打包为大端字节流
std::array<uint8_t, 10> packRequestFrame(const RequestFrame & frame);

// 解析电机状态帧，成功返回 true
bool parseMotorStateFrame(const uint8_t * data, size_t len, MotorStateFrame & out);

// 解析 IMU 状态帧，成功返回 true
bool parseImuStateFrame(const uint8_t * data, size_t len, ImuStateFrame & out);

// 将原始轮速（协议单位：rad/min，raw - 30000）转换为物理量 rad/s
inline double wheelRawToRadPerSec(uint16_t raw)
{
  // 物理量 = 数据 * 系数 + 偏移
  // 协议中 left/right_wheel_speed 的系数为 1，偏移 -30000，单位 rad/min
  const double value_rad_per_min = static_cast<int32_t>(raw) - 30000.0;
  return value_rad_per_min * (1.0 / 60.0);  // rad/min -> rad/s
}

// 将陀螺原始值转为 deg/s
inline double gyroRawToDegPerSec(int16_t raw)
{
  // 系数 300/32768
  return static_cast<double>(raw) * (300.0 / 32768.0);
}

// 将加速度原始值转为 m/s^2
inline double accRawToMps2(int16_t raw)
{
  // 系数 12/32768
  return static_cast<double>(raw) * (12.0 / 32768.0);
}

// 将四元数原始值转为 double（系数 1e-6）
inline double quatRawToDouble(int32_t raw)
{
  return static_cast<double>(raw) * 1e-6;
}

// 磁力计 / GPS / 车速等按协议系数在节点中再换算

}  // namespace imu_speed

#endif  // IMU_SPEED__UDP_DRIVER_HPP_


