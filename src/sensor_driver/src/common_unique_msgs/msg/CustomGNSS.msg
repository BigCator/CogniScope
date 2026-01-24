# CustomGNSS.msg
std_msgs/Header header     # 标准头（时间戳 + 坐标系）
uint16 gps_week            # GPS周数 [0-9999]
float64 gps_time           # GPS周内秒数 [0.0-604800.0)
float64 heading            # 航向角（0-360度）
float64 pitch              # 俯仰角（-90-90度）
float64 roll               # 横滚角（-180-180度）
float64 latitude           # 纬度（-90-90度）
float64 longitude          # 经度（-180-180度）
float64 altitude           # 海拔（米）
float64 ve                 # 东向速度（m/s）
float64 vn                 # 北向速度（m/s）
float64 vu                 # 天向速度（m/s）
float64 baseline           # 基线长度（米）
uint8 nsv1                 # 主天线卫星数 [0-40]
uint8 nsv2                 # 辅天线卫星数 [0-40]
uint16 status              # 状态字（二进制位掩码）
string checksum            # 校验和（如"1A"）