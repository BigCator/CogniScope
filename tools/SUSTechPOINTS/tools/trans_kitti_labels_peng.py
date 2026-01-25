# #!/usr/bin/env python3
# """
# 手动创建点云到图像的校准矩阵 JSON 文件
# 适用于自定义数据集
# """
#
# import json
# import numpy as np
#
#
# def create_calib_from_parameters(output_file, camera_params, lidar_to_camera_transform):
#     """
#     根据参数创建校准 JSON 文件
#
#     参数:
#     - camera_params: 相机内参字典
#     - lidar_to_camera_transform: 4x4 变换矩阵 (点云到相机)
#     """
#
#     # 构建投影矩阵: P = K * [R|t]
#     K = np.array(camera_params['camera_matrix'])  # 3x3 内参矩阵
#     T = np.array(lidar_to_camera_transform)  # 4x4 外参矩阵
#
#     # 投影矩阵 = K * T[0:3, :]
#     projection_matrix = np.dot(K, T[:3, :])
#
#     calib_data = {
#         "camera_intrinsic": camera_params['camera_matrix'],
#         "camera_extrinsic": lidar_to_camera_transform,
#         "projection_matrix": projection_matrix.tolist(),
#         "image_size": camera_params.get('image_size', [1242, 375]),
#         "distortion_coefficients": camera_params.get('distortion_coefficients', [0.0, 0.0, 0.0, 0.0, 0.0]),
#         "description": "Manual calibration - point cloud to image projection"
#     }
#
#     with open(output_file, 'w') as f:
#         json.dump(calib_data, f, indent=2)
#
#     print(f"校准文件已创建: {output_file}")
#     return calib_data
#
#
# # 预定义配置
# def create_kitti_style_calib(output_file):
#     """创建 KITTI 风格的校准文件"""
#
#     # KITTI 相机内参 (示例)
#     camera_params = {
#         "camera_matrix": [
#             [721.5377, 0.0, 609.5593],
#             [0.0, 721.5377, 172.8540],
#             [0.0, 0.0, 1.0]
#         ],
#         "image_size": [1242, 375],
#         "distortion_coefficients": [0.0, 0.0, 0.0, 0.0, 0.0]
#     }
#
#     # KITTI 激光雷达到相机变换 (示例)
#     lidar_to_camera = [
#         [0.0, -1.0, 0.0, 0.0],
#         [0.0, 0.0, -1.0, -0.08],
#         [1.0, 0.0, 0.0, -0.27],
#         [0.0, 0.0, 0.0, 1.0]
#     ]
#
#     return create_calib_from_parameters(output_file, camera_params, lidar_to_camera)
#
#
# def create_simple_calib(output_file, image_size=(1242, 375)):
#     """创建简单的单位矩阵校准 (用于测试)"""
#
#     camera_params = {
#         "camera_matrix": [
#             [1000.0, 0.0, image_size[0] / 2],
#             [0.0, 1000.0, image_size[1] / 2],
#             [0.0, 0.0, 1.0]
#         ],
#         "image_size": list(image_size),
#         "distortion_coefficients": [0.0, 0.0, 0.0, 0.0, 0.0]
#     }
#
#     # 单位变换矩阵
#     identity_transform = [
#         [1.0, 0.0, 0.0, 0.0],
#         [0.0, 1.0, 0.0, 0.0],
#         [0.0, 0.0, 1.0, 0.0],
#         [0.0, 0.0, 0.0, 1.0]
#     ]
#
#     return create_calib_from_parameters(output_file, camera_params, identity_transform)
#
#
# if __name__ == "__main__":
#     # 创建 KITTI 风格校准
#     create_kitti_style_calib("kitti_style_calib.json")
#
#     # 创建简单校准
#     create_simple_calib("simple_calib.json")

# !/usr/bin/env python3
"""
校准矩阵验证工具
验证点云到图像投影是否正确
"""

import json
import numpy as np
import cv2


def load_calibration(calib_file):
    """加载校准 JSON 文件"""
    with open(calib_file, 'r') as f:
        calib_data = json.load(f)

    print(f"加载校准文件: {calib_file}")
    print(f"图像尺寸: {calib_data['image_size']}")
    print(f"投影矩阵形状: {np.array(calib_data['projection_matrix']).shape}")

    return calib_data


def project_point_cloud_to_image(points_3d, calib_data):
    """
    将 3D 点云投影到图像平面

    参数:
    - points_3d: Nx3 或 Nx4 点云数据
    - calib_data: 校准数据字典

    返回:
    - points_2d: Nx2 图像坐标
    - depth: Nx1 深度值
    """

    # 确保点云是齐次坐标 Nx4
    if points_3d.shape[1] == 3:
        points_3d = np.hstack([points_3d, np.ones((points_3d.shape[0], 1))])

    # 获取投影矩阵
    P = np.array(calib_data['projection_matrix'])  # 3x4

    # 投影: image_coords = P * points_3d.T
    points_2d_homo = np.dot(P, points_3d.T).T  # Nx3

    # 齐次坐标转笛卡尔坐标
    points_2d = points_2d_homo[:, :2] / points_2d_homo[:, 2:3]

    # 深度信息 (通常使用 Z 坐标)
    depth = points_3d[:, 2]

    return points_2d, depth


def validate_calibration(calib_file, sample_points=None):
    """验证校准矩阵是否正确"""
    calib_data = load_calibration(calib_file)

    # 如果没有提供测试点，创建一些示例点
    if sample_points is None:
        sample_points = np.array([
            [0, 0, 10, 1],  # 正前方远处
            [5, 0, 10, 1],  # 右侧
            [-5, 0, 10, 1],  # 左侧
            [0, 2, 10, 1],  # 上方
            [0, -2, 10, 1],  # 下方
            [0, 0, 5, 1],  # 近处
            [0, 0, 50, 1]  # 更远处
        ])

    # 投影到图像
    points_2d, depths = project_point_cloud_to_image(sample_points, calib_data)

    print("\n投影验证结果:")
    print("3D 坐标 -> 2D 图像坐标")
    for i, (point_3d, point_2d, depth) in enumerate(zip(sample_points, points_2d, depths)):
        print(f"点 {i}: ({point_3d[0]:.1f}, {point_3d[1]:.1f}, {point_3d[2]:.1f}) -> "
              f"({point_2d[0]:.1f}, {point_2d[1]:.1f}), 深度: {depth:.1f}m")

    # 检查是否在图像范围内
    image_width, image_height = calib_data['image_size']
    within_image = 0
    for point_2d in points_2d:
        if (0 <= point_2d[0] < image_width and
                0 <= point_2d[1] < image_height):
            within_image += 1

    print(f"\n验证结果: {within_image}/{len(points_2d)} 个点在图像范围内")

    return points_2d, depths


def create_sample_calibration_files():
    """创建示例校准文件用于测试"""

    # 示例1: KITTI 标准配置
    kitti_calib = {
        "camera_intrinsic": [
            [721.5377, 0.0, 609.5593],
            [0.0, 721.5377, 172.8540],
            [0.0, 0.0, 1.0]
        ],
        "camera_extrinsic": [
            [0.0, -1.0, 0.0, 0.0],
            [0.0, 0.0, -1.0, -0.08],
            [1.0, 0.0, 0.0, -0.27],
            [0.0, 0.0, 0.0, 1.0]
        ],
        "projection_matrix": [
            [721.5377, 0.0, 609.5593, 0.0],
            [0.0, 721.5377, 172.8540, 0.0],
            [0.0, 0.0, 1.0, 0.0]
        ],
        "image_size": [1242, 375],
        "distortion_coefficients": [0.0, 0.0, 0.0, 0.0, 0.0],
        "description": "KITTI standard calibration"
    }

    # 示例2: 自定义配置
    custom_calib = {
        "camera_intrinsic": [
            [1000.0, 0.0, 640.0],
            [0.0, 1000.0, 360.0],
            [0.0, 0.0, 1.0]
        ],
        "camera_extrinsic": [
            [1.0, 0.0, 0.0, 0.5],
            [0.0, 1.0, 0.0, 0.1],
            [0.0, 0.0, 1.0, -0.2],
            [0.0, 0.0, 0.0, 1.0]
        ],
        "projection_matrix": [
            [1000.0, 0.0, 640.0, 500.0],
            [0.0, 1000.0, 360.0, 100.0],
            [0.0, 0.0, 1.0, -0.2]
        ],
        "image_size": [1280, 720],
        "distortion_coefficients": [0.0, 0.0, 0.0, 0.0, 0.0],
        "description": "Custom calibration for 1280x720 image"
    }

    with open("sample_kitti_calib.json", 'w') as f:
        json.dump(kitti_calib, f, indent=2)

    with open("sample_custom_calib.json", 'w') as f:
        json.dump(custom_calib, f, indent=2)

    print("示例校准文件已创建:")
    print("  - sample_kitti_calib.json")
    print("  - sample_custom_calib.json")


if __name__ == "__main__":
    # 创建示例文件
    create_sample_calibration_files()

    # 验证校准文件
    print("\n验证校准文件...")
    validate_calibration("sample_kitti_calib.json")
