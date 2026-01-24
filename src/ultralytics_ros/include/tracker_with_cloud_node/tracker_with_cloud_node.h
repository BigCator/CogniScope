#ifndef TRACKER_WITH_CLOUD_NODE_H
#define TRACKER_WITH_CLOUD_NODE_H

#include <rclcpp/rclcpp.hpp>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <sensor_msgs/msg/camera_info.hpp>
#include <sensor_msgs/msg/point_cloud2.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <vision_msgs/msg/detection2_d_array.hpp>
#include <vision_msgs/msg/detection3_d_array.hpp>
#include <vision_msgs/msg/object_hypothesis_with_pose.hpp>
#include <ultralytics_ros/msg/yolo_result.hpp>
#include <visualization_msgs/msg/marker_array.hpp>
#include <geometry_msgs/msg/point.hpp>
#include <cv_bridge/cv_bridge.h>
#include <image_geometry/pinhole_camera_model.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_eigen/tf2_eigen.hpp>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/kdtree/kdtree.h>
#include <pcl/segmentation/extract_clusters.h>
#include <pcl/common/centroid.h>
#include <pcl/common/transforms.h>
#include <pcl/common/common.h>
#include <Eigen/Dense>
#include <Eigen/Geometry>

// 添加标定结构体定义
struct KittiCalib {
  Eigen::Matrix<float, 3, 4> P2;
  Eigen::Matrix3f R0;
  Eigen::Matrix<float, 3, 4> Tr;
};

KittiCalib loadKittiCalib(const std::string& calib_file);

class TrackerWithCloudNode : public rclcpp::Node
{
public:
  TrackerWithCloudNode();

private:
  // 回调函数
  void syncCallback(const sensor_msgs::msg::CameraInfo::ConstSharedPtr& camera_info_msg,
                    const sensor_msgs::msg::PointCloud2::ConstSharedPtr& cloud_msg,
                    const ultralytics_ros::msg::YoloResult::ConstSharedPtr& yolo_result_msg);

  // 处理函数
  void projectCloud(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                    const ultralytics_ros::msg::YoloResult::ConstSharedPtr& yolo_result_msg,
                    const std_msgs::msg::Header& header,
                    vision_msgs::msg::Detection3DArray& detection3d_array_msg,
                    sensor_msgs::msg::PointCloud2& combine_detection_cloud_msg);

  void processPointsWithBbox(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                             const vision_msgs::msg::Detection2D& detection2d_msg,
                             pcl::PointCloud<pcl::PointXYZ>::Ptr& detection_cloud_raw);

  void processPointsWithMask(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                             const sensor_msgs::msg::Image& mask_image_msg,
                             pcl::PointCloud<pcl::PointXYZ>::Ptr& detection_cloud_raw);

  // 新增函数声明
  void processPointsWithBboxUsingCalib(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                                       const vision_msgs::msg::Detection2D& detection2d_msg,
                                       pcl::PointCloud<pcl::PointXYZ>::Ptr& detection_cloud_raw);

  void processPointsWithMaskUsingCalib(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                                       const sensor_msgs::msg::Image& mask_image_msg,
                                       pcl::PointCloud<pcl::PointXYZ>::Ptr& detection_cloud_raw);

  void transformPointCloud(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud_in,
                           pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud_out,
                           const Eigen::Affine3f& transform);

  void createBoundingBox(vision_msgs::msg::Detection3DArray& detection3d_array_msg,
                        const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                        const std::vector<vision_msgs::msg::ObjectHypothesisWithPose>& detections_results_msg);

  pcl::PointCloud<pcl::PointXYZ>::Ptr downsampleCloudMsg(const sensor_msgs::msg::PointCloud2::ConstSharedPtr& cloud_msg);

  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud2TransformedCloud(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                                                            const std::string& source_frame,
                                                            const std::string& target_frame,
                                                            const rclcpp::Time& stamp);

  pcl::PointCloud<pcl::PointXYZ>::Ptr euclideanClusterExtraction(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud);

  visualization_msgs::msg::MarkerArray createMarkerArray(const vision_msgs::msg::Detection3DArray& detection3d_array_msg,
                                                        const double& duration);

  // 成员变量
  typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::msg::CameraInfo,
          sensor_msgs::msg::PointCloud2,
          ultralytics_ros::msg::YoloResult> ApproximateSyncPolicy;

  // 订阅者
  message_filters::Subscriber<sensor_msgs::msg::CameraInfo> camera_info_sub_;
  message_filters::Subscriber<sensor_msgs::msg::PointCloud2> lidar_sub_;
  message_filters::Subscriber<ultralytics_ros::msg::YoloResult> yolo_result_sub_;
  std::shared_ptr<message_filters::Synchronizer<ApproximateSyncPolicy>> sync_;

  // 发布者
  rclcpp::Publisher<vision_msgs::msg::Detection3DArray>::SharedPtr detection3d_pub_;
  rclcpp::Publisher<sensor_msgs::msg::PointCloud2>::SharedPtr detection_cloud_pub_;
  rclcpp::Publisher<visualization_msgs::msg::MarkerArray>::SharedPtr marker_pub_;

  // 参数
  std::string camera_info_topic_;
  std::string lidar_topic_;
  std::string yolo_result_topic_;
  std::string yolo_3d_result_topic_;
  float cluster_tolerance_;
  float voxel_leaf_size_;
  int min_cluster_size_;
  int max_cluster_size_;

  // 时间戳
  rclcpp::Time last_call_time_;

  // TF
  std::shared_ptr<tf2_ros::Buffer> tf_buffer_;
  std::shared_ptr<tf2_ros::TransformListener> tf_listener_;

  // 相机模型
  image_geometry::PinholeCameraModel cam_model_;

  // 标定参数
  KittiCalib calib_;  // 添加这个成员变量
};

#endif // TRACKER_WITH_CLOUD_NODE_H