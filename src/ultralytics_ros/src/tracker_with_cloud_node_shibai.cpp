/**
 * ultralytics_ros
 * Copyright (C) 2023-2024  Alpaca-zip
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "tracker_with_cloud_node/tracker_with_cloud_node.h"
#include <fstream>
#include <sstream>
#include <Eigen/Dense>

KittiCalib loadKittiCalib(const std::string& calib_file) {
  KittiCalib calib;
  std::ifstream fi(calib_file);
  std::string line;
  
  while (std::getline(fi, line)) {
    if (line.rfind("P2:", 0) == 0) {
      std::stringstream ss(line.substr(3));
      for (int i = 0; i < 12; i++) {
        ss >> calib.P2(i / 4, i % 4);
      }
    } else if (line.rfind("R0_rect:", 0) == 0) {
      std::stringstream ss(line.substr(8));
      for (int i = 0; i < 9; i++) {
        ss >> calib.R0(i / 3, i % 3);
      }
    } else if (line.rfind("Tr_velo_to_cam:", 0) == 0) {
      std::stringstream ss(line.substr(15));
      for (int i = 0; i < 12; i++) {
        ss >> calib.Tr(i / 4, i % 4);
      }
    }
  }
  return calib;
}

TrackerWithCloudNode::TrackerWithCloudNode() : rclcpp::Node("tracker_with_cloud_node")
{
  this->declare_parameter<std::string>("camera_info_topic", "camera_info");
  this->declare_parameter<std::string>("lidar_topic", "points_raw");
  this->declare_parameter<std::string>("yolo_result_topic", "yolo_result");
  this->declare_parameter<std::string>("yolo_3d_result_topic", "yolo_3d_result");
  this->declare_parameter<float>("cluster_tolerance", 0.5);
  this->declare_parameter<float>("voxel_leaf_size", 0.5);
  this->declare_parameter<int>("min_cluster_size", 100);
  this->declare_parameter<int>("max_cluster_size", 25000);

  this->get_parameter("camera_info_topic", camera_info_topic_);
  this->get_parameter("lidar_topic", lidar_topic_);
  this->get_parameter("yolo_result_topic", yolo_result_topic_);
  
  // 订阅话题
  camera_info_sub_.subscribe(this, camera_info_topic_);
  lidar_sub_.subscribe(this, lidar_topic_);
  yolo_result_sub_.subscribe(this, yolo_result_topic_);
  
  // 创建同步器，增加队列大小和时间容差
  sync_ = std::make_shared<message_filters::Synchronizer<ApproximateSyncPolicy>>(100);
  sync_->connectInput(camera_info_sub_, lidar_sub_, yolo_result_sub_);
  sync_->setMaxIntervalDuration(rclcpp::Duration::from_seconds(1.0));  // 增加时间容差到1秒
  sync_->registerCallback(std::bind(&TrackerWithCloudNode::syncCallback, this, std::placeholders::_1,
                                    std::placeholders::_2, std::placeholders::_3));

  this->get_parameter("yolo_3d_result_topic", yolo_3d_result_topic_);
  detection3d_pub_ = this->create_publisher<vision_msgs::msg::Detection3DArray>(yolo_3d_result_topic_, 1);
  detection_cloud_pub_ = this->create_publisher<sensor_msgs::msg::PointCloud2>("detection_cloud", 1);
  marker_pub_ = this->create_publisher<visualization_msgs::msg::MarkerArray>("detection_marker", 1);

  last_call_time_ = this->now();
  
  // 加载标定文件
  calib_ = loadKittiCalib("/workspace/ros2_yolo/src/fusiondet/config/000815_1.txt");
  
  // 添加日志确认节点初始化
  RCLCPP_INFO(this->get_logger(), "TrackerWithCloudNode initialized with calib file loaded.");
  RCLCPP_INFO(this->get_logger(), "Subscribing to: %s, %s, %s", 
              camera_info_topic_.c_str(), lidar_topic_.c_str(), yolo_result_topic_.c_str());
}

void TrackerWithCloudNode::syncCallback(const sensor_msgs::msg::CameraInfo::ConstSharedPtr& camera_info_msg,
                                        const sensor_msgs::msg::PointCloud2::ConstSharedPtr& cloud_msg,
                                        const ultralytics_ros::msg::YoloResult::ConstSharedPtr& yolo_result_msg)
{
  RCLCPP_INFO_THROTTLE(this->get_logger(), *this->get_clock(), 1000,  // 每秒一次
                       "SyncCallback called! Cloud points: %d, Detections: %zu", 
                       cloud_msg->width * cloud_msg->height, 
                       yolo_result_msg->detections.detections.size());
  
  rclcpp::Time current_call_time = this->now();
  rclcpp::Duration callback_interval = current_call_time - last_call_time_;
  last_call_time_ = current_call_time;

  pcl::PointCloud<pcl::PointXYZ>::Ptr downsampled_cloud(new pcl::PointCloud<pcl::PointXYZ>());
  downsampled_cloud = downsampleCloudMsg(cloud_msg);

  // 不再使用相机模型，直接使用标定参数
  vision_msgs::msg::Detection3DArray detection3d_array_msg;
  sensor_msgs::msg::PointCloud2 detection_cloud_msg;
  projectCloud(downsampled_cloud, yolo_result_msg, cloud_msg->header, detection3d_array_msg, detection_cloud_msg);

  // 检查是否有检测结果
  if (detection3d_array_msg.detections.size() > 0) {
    RCLCPP_INFO(this->get_logger(), "Publishing %zu 3D detections", detection3d_array_msg.detections.size());
  }

  visualization_msgs::msg::MarkerArray marker_array_msg =
      createMarkerArray(detection3d_array_msg, callback_interval.seconds());

  detection3d_pub_->publish(detection3d_array_msg);
  detection_cloud_pub_->publish(detection_cloud_msg);
  marker_pub_->publish(marker_array_msg);
}

void TrackerWithCloudNode::transformPointCloud(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud_in,
                                               pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud_out,
                                               const Eigen::Affine3f& transform)
{
  int cloud_size = cloud_in->size();
  cloud_out->resize(cloud_size);

  for (int i = 0; i < cloud_size; i++)
  {
    const auto& point = cloud_in->points[i];
    cloud_out->points[i].x =
        transform(0, 0) * point.x + transform(0, 1) * point.y + transform(0, 2) * point.z + transform(0, 3);
    cloud_out->points[i].y =
        transform(1, 0) * point.x + transform(1, 1) * point.y + transform(1, 2) * point.z + transform(1, 3);
    cloud_out->points[i].z =
        transform(2, 0) * point.x + transform(2, 1) * point.y + transform(2, 2) * point.z + transform(2, 3);
  }
}

void TrackerWithCloudNode::projectCloud(
    const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
    const ultralytics_ros::msg::YoloResult::ConstSharedPtr& yolo_result_msg,
    const std_msgs::msg::Header& header,
    vision_msgs::msg::Detection3DArray& detection3d_array_msg,
    sensor_msgs::msg::PointCloud2& combine_detection_cloud_msg)
{
  pcl::PointCloud<pcl::PointXYZ>::Ptr combine_detection_cloud(new pcl::PointCloud<pcl::PointXYZ>());
  detection3d_array_msg.header = header;
  detection3d_array_msg.header.stamp = yolo_result_msg->header.stamp;

  for (size_t i = 0; i < yolo_result_msg->detections.detections.size(); i++)
  {
    pcl::PointCloud<pcl::PointXYZ>::Ptr detection_cloud_raw(new pcl::PointCloud<pcl::PointXYZ>());

    if (yolo_result_msg->masks.empty())
    {
      processPointsWithBbox(cloud, yolo_result_msg->detections.detections[i], detection_cloud_raw);
    }
    else
    {
      processPointsWithMask(cloud, yolo_result_msg->masks[i], detection_cloud_raw);
    }

    if (!detection_cloud_raw->points.empty())
    {
      pcl::PointCloud<pcl::PointXYZ>::Ptr detection_cloud(new pcl::PointCloud<pcl::PointXYZ>());
      detection_cloud = detection_cloud_raw;  // 不再进行坐标转换

      pcl::PointCloud<pcl::PointXYZ>::Ptr closest_detection_cloud(new pcl::PointCloud<pcl::PointXYZ>());
      closest_detection_cloud = euclideanClusterExtraction(detection_cloud);
      *combine_detection_cloud += *closest_detection_cloud;

      createBoundingBox(detection3d_array_msg, closest_detection_cloud,
                        yolo_result_msg->detections.detections[i].results);
    }
  }

  pcl::toROSMsg(*combine_detection_cloud, combine_detection_cloud_msg);
  combine_detection_cloud_msg.header = header;
}

void TrackerWithCloudNode::processPointsWithBbox(
    const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
    const vision_msgs::msg::Detection2D& detection2d_msg,
    pcl::PointCloud<pcl::PointXYZ>::Ptr& detection_cloud_raw)
{
  double xmin = detection2d_msg.bbox.center.position.x - detection2d_msg.bbox.size_x / 2.0;
  double xmax = detection2d_msg.bbox.center.position.x + detection2d_msg.bbox.size_x / 2.0;
  double ymin = detection2d_msg.bbox.center.position.y - detection2d_msg.bbox.size_y / 2.0;
  double ymax = detection2d_msg.bbox.center.position.y + detection2d_msg.bbox.size_y / 2.0;

  for (const auto& point : cloud->points)
  {
    Eigen::Vector4f pt(point.x, point.y, point.z, 1.0f);

    // 激光雷达到相机坐标系 (结果是 3x1)
    Eigen::Vector3f cam = calib_.R0.cast<float>() * (calib_.Tr * pt);

    // 投影到图像 (结果是 3x1)
    Eigen::Vector3f img = calib_.P2 * cam;
    double u = img(0) / img(2);
    double v = img(1) / img(2);

    if (cam(2) > 0 && u >= xmin && u <= xmax && v >= ymin && v <= ymax)
    {
      detection_cloud_raw->points.push_back(point);
    }
  }
}

void TrackerWithCloudNode::processPointsWithMask(
    const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
    const sensor_msgs::msg::Image& mask_image_msg,
    pcl::PointCloud<pcl::PointXYZ>::Ptr& detection_cloud_raw)
{
  cv_bridge::CvImagePtr cv_ptr;
  try
  {
    cv_ptr = cv_bridge::toCvCopy(mask_image_msg, sensor_msgs::image_encodings::MONO8);
  }
  catch (cv_bridge::Exception& e)
  {
    RCLCPP_ERROR(this->get_logger(), "%s", e.what());
    return;
  }

  for (const auto& point : cloud->points)
  {
    Eigen::Vector4f pt(point.x, point.y, point.z, 1.0f);

    // 激光雷达到相机坐标系
    Eigen::Vector3f cam = calib_.R0.cast<float>() * (calib_.Tr * pt);

    // 投影到图像
    Eigen::Vector3f img = calib_.P2 * cam;
    double u = img(0) / img(2);
    double v = img(1) / img(2);

    if (cam(2) > 0 && u >= 0 && u < cv_ptr->image.cols && v >= 0 && v < cv_ptr->image.rows)
    {
      if (cv_ptr->image.at<uchar>(cv::Point(u, v)) > 0)
      {
        detection_cloud_raw->points.push_back(point);
      }
    }
  }
}


void TrackerWithCloudNode::createBoundingBox(
    vision_msgs::msg::Detection3DArray& detection3d_array_msg, const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
    const std::vector<vision_msgs::msg::ObjectHypothesisWithPose>& detections_results_msg)
{
  Eigen::Vector4f centroid;
  pcl::compute3DCentroid(*cloud, centroid);
  double theta = -atan2(centroid[1], sqrt(pow(centroid[0], 2) + pow(centroid[2], 2)));
  Eigen::Affine3f transform = Eigen::Affine3f::Identity();
  transform.rotate(Eigen::AngleAxisf(theta, Eigen::Vector3f::UnitZ()));

  pcl::PointCloud<pcl::PointXYZ>::Ptr transformed_cloud(new pcl::PointCloud<pcl::PointXYZ>());
  transformPointCloud(cloud, transformed_cloud, transform);

  pcl::PointXYZ min_pt, max_pt;
  pcl::getMinMax3D(*transformed_cloud, min_pt, max_pt);
  Eigen::Vector4f transformed_bbox_center =
      Eigen::Vector4f((min_pt.x + max_pt.x) / 2, (min_pt.y + max_pt.y) / 2, (min_pt.z + max_pt.z) / 2, 1);
  Eigen::Vector4f bbox_center = transform.inverse() * transformed_bbox_center;
  Eigen::Quaternionf q(transform.inverse().rotation());

  vision_msgs::msg::Detection3D detection3d_msg;
  detection3d_msg.bbox.center.position.x = bbox_center[0];
  detection3d_msg.bbox.center.position.y = bbox_center[1];
  detection3d_msg.bbox.center.position.z = bbox_center[2];
  detection3d_msg.bbox.center.orientation.x = q.x();
  detection3d_msg.bbox.center.orientation.y = q.y();
  detection3d_msg.bbox.center.orientation.z = q.z();
  detection3d_msg.bbox.center.orientation.w = q.w();
  detection3d_msg.bbox.size.x = max_pt.x - min_pt.x;
  detection3d_msg.bbox.size.y = max_pt.y - min_pt.y;
  detection3d_msg.bbox.size.z = max_pt.z - min_pt.z;
  detection3d_msg.results = detections_results_msg;
  detection3d_array_msg.detections.push_back(detection3d_msg);
}

pcl::PointCloud<pcl::PointXYZ>::Ptr
TrackerWithCloudNode::downsampleCloudMsg(const sensor_msgs::msg::PointCloud2::ConstSharedPtr& cloud_msg)
{
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>());
  pcl::fromROSMsg(*cloud_msg, *cloud);

  this->get_parameter("voxel_leaf_size", voxel_leaf_size_);
  pcl::PointCloud<pcl::PointXYZ>::Ptr downsampled_cloud(new pcl::PointCloud<pcl::PointXYZ>());
  pcl::VoxelGrid<pcl::PointXYZ>::Ptr voxel_grid(new pcl::VoxelGrid<pcl::PointXYZ>());
  voxel_grid->setInputCloud(cloud);
  voxel_grid->setLeafSize(voxel_leaf_size_, voxel_leaf_size_, voxel_leaf_size_);
  voxel_grid->filter(*downsampled_cloud);

  return downsampled_cloud;
}

pcl::PointCloud<pcl::PointXYZ>::Ptr
TrackerWithCloudNode::cloud2TransformedCloud(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud,
                                             const std::string& source_frame, const std::string& target_frame,
                                             const rclcpp::Time& stamp)
{
  // 不再使用TF转换，直接返回原始点云
  return cloud;
}

pcl::PointCloud<pcl::PointXYZ>::Ptr
TrackerWithCloudNode::euclideanClusterExtraction(const pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud)
{
  this->get_parameter("cluster_tolerance", cluster_tolerance_);
  this->get_parameter("min_cluster_size", min_cluster_size_);
  this->get_parameter("max_cluster_size", max_cluster_size_);
  pcl::search::KdTree<pcl::PointXYZ>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZ>());
  std::vector<pcl::PointIndices> cluster_indices;
  pcl::EuclideanClusterExtraction<pcl::PointXYZ> ec;
  ec.setClusterTolerance(cluster_tolerance_);
  ec.setMinClusterSize(min_cluster_size_);
  ec.setMaxClusterSize(max_cluster_size_);
  ec.setSearchMethod(tree);
  ec.setInputCloud(cloud);
  ec.extract(cluster_indices);

  float min_distance = std::numeric_limits<float>::max();
  pcl::PointCloud<pcl::PointXYZ>::Ptr closest_cluster(new pcl::PointCloud<pcl::PointXYZ>());

  for (const auto& cluster : cluster_indices)
  {
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_cluster(new pcl::PointCloud<pcl::PointXYZ>());
    for (const auto& indice : cluster.indices)
    {
      cloud_cluster->push_back((*cloud)[indice]);
    }

    Eigen::Vector4f centroid;
    pcl::compute3DCentroid(*cloud_cluster, centroid);
    float distance = centroid.norm();

    if (distance < min_distance)
    {
      min_distance = distance;
      *closest_cluster = *cloud_cluster;
    }
  }

  return closest_cluster;
}

visualization_msgs::msg::MarkerArray
TrackerWithCloudNode::createMarkerArray(const vision_msgs::msg::Detection3DArray& detection3d_array_msg,
                                        const double& duration)
{
  visualization_msgs::msg::MarkerArray marker_array_msg;

  for (size_t i = 0; i < detection3d_array_msg.detections.size(); i++)
  {
    if (std::isfinite(detection3d_array_msg.detections[i].bbox.size.x) &&
        std::isfinite(detection3d_array_msg.detections[i].bbox.size.y) &&
        std::isfinite(detection3d_array_msg.detections[i].bbox.size.z))
    {
      visualization_msgs::msg::Marker marker_msg;
      marker_msg.header = detection3d_array_msg.header;
      marker_msg.ns = "detection";
      marker_msg.id = i;
      marker_msg.type = visualization_msgs::msg::Marker::CUBE;
      marker_msg.action = visualization_msgs::msg::Marker::ADD;
      marker_msg.pose = detection3d_array_msg.detections[i].bbox.center;
      marker_msg.scale.x = detection3d_array_msg.detections[i].bbox.size.x;
      marker_msg.scale.y = detection3d_array_msg.detections[i].bbox.size.y;
      marker_msg.scale.z = detection3d_array_msg.detections[i].bbox.size.z;
      marker_msg.color.r = 0.0;
      marker_msg.color.g = 1.0;
      marker_msg.color.b = 0.0;
      marker_msg.color.a = 0.5;
      marker_msg.lifetime = rclcpp::Duration(std::chrono::duration<double>(duration));
      marker_array_msg.markers.push_back(marker_msg);
    }
  }

  return marker_array_msg;
}

int main(int argc, char* argv[])
{
  rclcpp::init(argc, argv);
  auto node = std::make_shared<TrackerWithCloudNode>();
  rclcpp::spin(node);
  rclcpp::shutdown();
  return 0;
}