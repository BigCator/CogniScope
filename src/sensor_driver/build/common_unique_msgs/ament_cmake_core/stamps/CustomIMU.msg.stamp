# CustomIMU.msg
std_msgs/Header header         # ROS标准头（时间戳+坐标系）

# GPS时间信息
uint16 gps_week                # 自1980-1-6起累计的周数（如1550）
float64 gps_time               # 周内秒数（如298625.000）

# 陀螺仪数据（单位：度/s）
float64 gyro_x
float64 gyro_y
float64 gyro_z

# 加速度计数据（单位：m/s²）
float64 acc_x
float64 acc_y
float64 acc_z

# 温度（单位：°C）
float64 temperature

# 原始校验和（如"A3"）
string checksum
