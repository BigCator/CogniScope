#include <memory>
#include <vector>
#include <functional>
#include <algorithm>
#include <cmath>
#include <unordered_set>

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
    
    // 添加机器人半径和安全余量参数
    //robot_radius_ = this->declare_parameter<double>("robot_radius", 1.5);      // 机器人半径 (米)
    //safety_margin_ = this->declare_parameter<double>("safety_margin", 0.2);    // 安全余量 (米)

    // 创建发布器和订阅器
    occupancy_pub_ = this->create_publisher<nav_msgs::msg::OccupancyGrid>("m1/occupancy_grid", 10);
    scan_sub_ = this->create_subscription<sensor_msgs::msg::LaserScan>(
      "m1/scan", 10, std::bind(&LaserScanToOccupancyGrid::scanCallback, this, std::placeholders::_1));
    
    // 初始化地图
    initializeMap();
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
  
  // 机器人参数
  //double robot_radius_;
  //double safety_margin_;
  
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
