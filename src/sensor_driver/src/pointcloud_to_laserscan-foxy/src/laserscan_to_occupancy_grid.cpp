#include <memory>
#include <vector>
#include <functional>
#include <algorithm>
#include <cmath>
#include <unordered_set>
#include <queue>
#include <utility>
#include <tuple>

#include "rclcpp/rclcpp.hpp"
#include "sensor_msgs/msg/laser_scan.hpp"
#include "nav_msgs/msg/occupancy_grid.hpp"
#include "geometry_msgs/msg/pose.hpp"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"

class LaserScanToOccupancyGrid : public rclcpp::Node
{
public:
  LaserScanToOccupancyGrid()
  : Node("laserscan_to_occupancy_grid")
  {
    // 参数配置 - 显式指定参数类型
    map_resolution_ = this->declare_parameter<double>("map_resolution", 0.05);  // 地图分辨率 (米/像素)
    map_width_ = this->declare_parameter<double>("map_width", 20.0);           // 地图宽度 (米)
    map_height_ = this->declare_parameter<double>("map_height", 20.0);         // 地图高度 (米)
    obstacle_threshold_ = this->declare_parameter<double>("obstacle_threshold", 10.0); // 障碍物判定阈值 (米)
    
    // 添加膨胀参数
    dilation_radius_ = this->declare_parameter<double>("dilation_radius", 1.0); // 膨胀半径(米)
    max_dilation_distance_ = this->declare_parameter<double>("max_dilation_distance", 8.0); // 应用膨胀的最大距离
    min_obstacle_value_ = this->declare_parameter<int>("min_obstacle_value", 50); // 膨胀区域的最小占据值

    // 创建发布器和订阅器
    // 设置TRANSIENT_LOCAL持久性策略
    rclcpp::QoS map_qos(10); // 队列深度
    map_qos.transient_local(); // 设置持久性为TRANSIENT_LOCAL
    map_qos.reliable(); // 保持RELIABLE可靠性策略
    
    occupancy_pub_ = this->create_publisher<nav_msgs::msg::OccupancyGrid>("m1/occupancy_grid", map_qos);
    
    scan_sub_ = this->create_subscription<sensor_msgs::msg::LaserScan>("m1/scan", 10, std::bind(&LaserScanToOccupancyGrid::scanCallback, this, std::placeholders::_1));
    
    // 初始化地图
    initializeMap();
    
    RCLCPP_INFO(this->get_logger(), "Occupancy grid publisher set to TRANSIENT_LOCAL durability");
  }

private:
  void initializeMap()
  {
    // 计算地图尺寸 (像素)
    grid_width_ = static_cast<int>(map_width_ / map_resolution_);
    grid_height_ = static_cast<int>(map_height_ / map_resolution_);
    
    // 设置地图原点 (地图中心对应机器人位置)
    map_origin_.position.x = -map_width_ / 2.0;
    map_origin_.position.y = -map_height_ / 2.0;
    map_origin_.position.z = 0.0;
    map_origin_.orientation = tf2::toMsg(tf2::Quaternion::getIdentity());
    
    // 初始化地图数据
    occupancy_data_.assign(grid_width_ * grid_height_, -1);  // -1 表示未知区域
  }

  void scanCallback(const sensor_msgs::msg::LaserScan::SharedPtr scan)
  {
    // 创建新的占据地图消息
    auto occupancy_msg = std::make_unique<nav_msgs::msg::OccupancyGrid>();
    
    // 填充消息头
    occupancy_msg->header = scan->header;
    occupancy_msg->header.stamp = this->now();
    
    // 设置地图属性
    occupancy_msg->info.resolution = map_resolution_;
    occupancy_msg->info.width = grid_width_;
    occupancy_msg->info.height = grid_height_;
    occupancy_msg->info.origin = map_origin_;
    
    // 关键修复：确保数据大小正确
    occupancy_msg->data.resize(grid_width_ * grid_height_);
    
    // 处理激光数据并填充地图
    processScan(scan, occupancy_msg->data);
    
    // 发布地图
    occupancy_pub_->publish(std::move(occupancy_msg));
  }

  void processScan(const sensor_msgs::msg::LaserScan::SharedPtr scan, 
                  std::vector<int8_t>& map_data)
  {
    // 重置地图为未知状态 (-1)
    std::fill(map_data.begin(), map_data.end(), -1);
    
    // 计算中心点 (机器人位置)
    const int center_x = grid_width_ / 2;
    const int center_y = grid_height_ / 2;
    
    // 添加边界检查
    if (center_x >= grid_width_ || center_y >= grid_height_) {
      RCLCPP_ERROR(this->get_logger(), "Invalid center coordinates: (%d, %d) in map size (%d, %d)",
                  center_x, center_y, grid_width_, grid_height_);
      return;
    }
    
    // 处理每个激光点
    float angle = scan->angle_min;
    for (size_t i = 0; i < scan->ranges.size(); ++i, angle += scan->angle_increment)
    {
      const float range = scan->ranges[i];
      
      // 跳过无效测量
      if (range < scan->range_min || range > scan->range_max || std::isnan(range)) {
        continue;
      }
      
      // 计算世界坐标系中的点位置
      const float x = range * cos(angle);
      const float y = range * sin(angle);
      
      // 转换为地图网格坐标
      const int grid_x = static_cast<int>((x - map_origin_.position.x) / map_resolution_);
      const int grid_y = static_cast<int>((y - map_origin_.position.y) / map_resolution_);
      
      // 检查是否在地图范围内
      if (grid_x >= 0 && grid_x < grid_width_ && grid_y >= 0 && grid_y < grid_height_)
      {
        const int index = grid_y * grid_width_ + grid_x;
        
        // 标记障碍物 (100%)
        map_data[index] = 100;
        
        // 标记机器人当前位置到障碍物之间的路径为自由空间 (0%)
        markFreePath(center_x, center_y, grid_x, grid_y, map_data);
      }
    }
    
    // 添加膨胀层 - 处理远距离点云稀疏导致的空缺
    dilateObstacles(map_data);
  }

  void dilateObstacles(std::vector<int8_t>& map_data)
  {
    // 计算膨胀像素半径
    const int max_dilation_pixels = static_cast<int>(std::ceil(dilation_radius_ / map_resolution_));
    
    // 创建待膨胀的障碍物队列 (x, y, 原始距离)
    std::queue<std::tuple<int, int, float>> obstacle_queue;
    
    // 第一次遍历：收集所有障碍物点
    for (int y = 0; y < grid_height_; y++) {
      for (int x = 0; x < grid_width_; x++) {
        const int idx = y * grid_width_ + x;
        if (map_data[idx] == 100) { // 只处理完全占据的点
          // 计算到机器人中心的距离
          const float dist_x = (x - grid_width_/2.0f) * map_resolution_;
          const float dist_y = (y - grid_height_/2.0f) * map_resolution_;
          const float distance = std::hypot(dist_x, dist_y);
          
          // 只对有效距离内的障碍物应用膨胀
          if (distance <= max_dilation_distance_ && distance > 0.1f) {
            obstacle_queue.push(std::make_tuple(x, y, distance));
          }
        }
      }
    }
    
    // 第二次遍历：执行膨胀
    while (!obstacle_queue.empty()) {
      // 替换结构化绑定以兼容不同C++版本
      auto front = obstacle_queue.front();
      int x = std::get<0>(front);
      int y = std::get<1>(front);
      float distance = std::get<2>(front);
      obstacle_queue.pop();
      
      // 修复std::min类型不匹配问题
      float distance_ratio = distance / max_dilation_distance_;
      float adaptive_factor = 1.0f - (distance_ratio > 1.0f ? 1.0f : distance_ratio);
      const float adaptive_radius = dilation_radius_ * (0.5f + 0.5f * adaptive_factor);
      const int adaptive_pixels = static_cast<int>(std::ceil(adaptive_radius / map_resolution_));
      
      // 在膨胀半径内标记障碍物
      for (int dy = -adaptive_pixels; dy <= adaptive_pixels; dy++) {
        for (int dx = -adaptive_pixels; dx <= adaptive_pixels; dx++) {
          const int nx = x + dx;
          const int ny = y + dy;
          
          // 跳过超出边界的点
          if (nx < 0 || nx >= grid_width_ || ny < 0 || ny >= grid_height_) 
            continue;
          
          const int nidx = ny * grid_width_ + nx;
          
          // 计算当前点到原始障碍物的距离
          const float pixel_dist = std::hypot(dx, dy) * map_resolution_;
          
          // 只填充未知区域(-1)且距离在膨胀半径内
          if (map_data[nidx] == -1 && pixel_dist <= adaptive_radius) {
            // 线性衰减：距离越远，占据值越低
            const float decay = 1.0f - (pixel_dist / adaptive_radius);
            const int8_t occupancy_value = static_cast<int8_t>(min_obstacle_value_ + 
                                       (100 - min_obstacle_value_) * decay);
            
            // 设置占据值（确保不低于最小值）
            map_data[nidx] = std::max(static_cast<int8_t>(min_obstacle_value_), occupancy_value);
          }
        }
      }
    }
  }

  void markFreePath(int x0, int y0, int x1, int y1, std::vector<int8_t>& map_data)
  {
    // 确保起点和终点都在地图范围内
    if (x0 < 0 || x0 >= grid_width_ || y0 < 0 || y0 >= grid_height_ ||
        x1 < 0 || x1 >= grid_width_ || y1 < 0 || y1 >= grid_height_) {
      return;
    }
    
    // 使用Bresenham算法绘制直线
    int dx = abs(x1 - x0);
    int dy = abs(y1 - y0);
    int sx = (x0 < x1) ? 1 : -1;
    int sy = (y0 < y1) ? 1 : -1;
    int err = dx - dy;
    
    while (true) {
      // 跳过终点（终点是障碍物）
      if (x0 == x1 && y0 == y1) break;
      
      // 标记自由空间
      if (x0 >= 0 && x0 < grid_width_ && y0 >= 0 && y0 < grid_height_) {
        const int index = y0 * grid_width_ + x0;
        if (map_data[index] != 100) {  // 不要覆盖障碍物
          map_data[index] = 0;
        }
      }
      
      // 到达终点
      if (x0 == x1 && y0 == y1) break;
      
      int e2 = 2 * err;
      if (e2 > -dy) {
        err -= dy;
        x0 += sx;
      }
      if (e2 < dx) {
        err += dx;
        y0 += sy;
      }
    }
  }

  // 参数
  double map_resolution_;
  double map_width_;
  double map_height_;
  double obstacle_threshold_;
  double dilation_radius_;
  double max_dilation_distance_;
  int min_obstacle_value_;
  
  // 地图属性
  int grid_width_;
  int grid_height_;
  geometry_msgs::msg::Pose map_origin_;
  
  // ROS 接口
  rclcpp::Publisher<nav_msgs::msg::OccupancyGrid>::SharedPtr occupancy_pub_;
  rclcpp::Subscription<sensor_msgs::msg::LaserScan>::SharedPtr scan_sub_;
  
  // 地图数据缓存
  std::vector<int8_t> occupancy_data_;
};

int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<LaserScanToOccupancyGrid>());
  rclcpp::shutdown();
  return 0;
}

