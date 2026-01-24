#include <ros/ros.h>
#include <sensor_msgs/Range.h>
#include <tf2_ros/transform_broadcaster.h>
#include <geometry_msgs/TransformStamped.h>
#include <stdint.h>
#include <assert.h>
#include <stdio.h>
#include <string>
#include <unistd.h>
#include <string.h>
#include "easywsclient.hpp"

using easywsclient::WebSocket;
static WebSocket::pointer ws = NULL;

typedef struct {
    bool bIsValid;
    float aF32Distance[12];
} SV_stUltrasonicRadarDistance_S;

// 发布TF转换
void publish_tf(ros::Time stamp, const std::string& frame_id, const std::string& child_frame_id,
                tf2_ros::TransformBroadcaster& tf_broadcaster, float x_offset, float y_offset, bool rotate_180) {
    geometry_msgs::TransformStamped transformStamped;

    transformStamped.header.stamp = stamp;
    transformStamped.header.frame_id = frame_id;  // 固定坐标系，例如 base_link
    transformStamped.child_frame_id = child_frame_id;  // 传感器坐标系

    // 设置传感器相对于 base_link 的位置
    transformStamped.transform.translation.x = x_offset;
    transformStamped.transform.translation.y = y_offset;
    transformStamped.transform.translation.z = 0.0;  // 假设传感器高度为0.5

    // 设置旋转
    if (rotate_180) {
        // 180度绕z轴旋转的四元数
        transformStamped.transform.rotation.x = 0.0;
        transformStamped.transform.rotation.y = 0.0;
        transformStamped.transform.rotation.z = 1.0;
        transformStamped.transform.rotation.w = 0.0;
    } else {
        // 无旋转，单位四元数
        transformStamped.transform.rotation.x = 0.0;
        transformStamped.transform.rotation.y = 0.0;
        transformStamped.transform.rotation.z = 0.0;
        transformStamped.transform.rotation.w = 1.0;
    }

    // 发布TF
    tf_broadcaster.sendTransform(transformStamped);
}

void handle_Radar_message(const std::vector<unsigned char>& vRadarData,
                          std::vector<ros::Publisher>& pubs, tf2_ros::TransformBroadcaster& tf_broadcaster) {
    SV_stUltrasonicRadarDistance_S stRadarData;
    stRadarData.bIsValid = vRadarData.at(0);
    printf("bIsValid = %d\n", stRadarData.bIsValid);

    if (stRadarData.bIsValid) {
        for (unsigned int i = 1; i < vRadarData.size(); i += 4) {
            stRadarData.aF32Distance[i / 4] = *(float*)&vRadarData.at(i);
        }

        // 设置矩形的宽度和长度
        float width = 3.0;   //
        float length = 2.0;  // 

        // 传感器的坐标位置
        float sensor_positions[4][2] = {
            { width / 2, -length / 2},  // 
            { width / 2,  length / 2},  // 右上角
            {-width / 2, -length / 2},  // 左下角
            {-width / 2,  length / 2}   // 
        };

        // 发布每个传感器的超声波信息和TF转换
        for (unsigned int i = 0; i < 4; ++i) {
            sensor_msgs::Range range_msg;
            range_msg.header.stamp = ros::Time::now();
            range_msg.header.frame_id = "ultrasonic_sensor_s" + std::to_string(i+1); // 每个传感器使用不同的frame_id
            range_msg.range = stRadarData.aF32Distance[i];
            range_msg.radiation_type = 1;
            range_msg.field_of_view = 0.5;
            range_msg.min_range = 0.0; // 根据传感器规格设定最小范围
            range_msg.max_range = 3.0; // 根据传感器规格设定最大范围
            pubs[i].publish(range_msg);
            printf("Sensor ID: %d  Distance: %f\n", i + 1, range_msg.range);

            // 为传感器3和4（索引2和3）旋转180度
            bool rotate_180 = (i == 2 || i == 3);

            // 为每个传感器发布TF转换，使用矩形四个角的位置
            float x_offset = sensor_positions[i][0];  // x方向偏移
            float y_offset = sensor_positions[i][1];  // y方向偏移
            publish_tf(ros::Time::now(), "base_link", "ultrasonic_sensor_s" + std::to_string(i+1), tf_broadcaster, x_offset, y_offset, rotate_180);
        }
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "ultrasonic_radar_node");
    ros::NodeHandle nh;

    // 创建多个发布者，每个传感器有一个话题
    std::vector<ros::Publisher> pubs;
    for (int i = 0; i < 4; ++i) {
        pubs.push_back(nh.advertise<sensor_msgs::Range>("ultrasonic_data_s" + std::to_string(i+1), 10));
    }

    // 创建TF广播器
    tf2_ros::TransformBroadcaster tf_broadcaster;

    ws = WebSocket::from_url("ws://192.168.1.117");
    assert(ws); // 检查 WebSocket 初始化

    ws->send("getRadarData");

    while (ros::ok() && ws->getReadyState() != WebSocket::CLOSED) {
        ws->poll();
        ws->dispatchBinary([&pubs, &tf_broadcaster](const std::vector<unsigned char>& data) {
            handle_Radar_message(data, pubs, tf_broadcaster);
        });
        ros::spinOnce(); // 处理 ROS 回调
        usleep(500000); // 睡眠 500ms
    }

    return 0;
}
