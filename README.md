# CogniScope  
## An Embodied Intelligence Perception System

> **Understanding the World Through Action**  
> 知行合一，通透世界

CogniScope 是一个面向 **具身智能（Embodied Intelligence）与自动驾驶场景的多传感器、多模态感知系统工程框架**。

本项目关注的不是单一模型性能，而是 **真实工程环境下** 感知系统的：
- 可集成性
- 可扩展性
- 可复现性
- 可上车运行能力

---

## ✨ 项目目标（Why this project）

在实际工程中，感知系统面临的核心挑战并不是：
- 模型是否 SOTA

而是：
- **多传感器如何统一**
- **算法如何系统级封装**
- **训练与推理如何解耦**
- **从 Demo 到实车如何演进**

CogniScope 的目标是：
> 构建一个 **工程级、可持续演进的具身智能感知系统参考实现**。

---

## 🧠 系统整体架构（Overview）

系统采用 **分层解耦设计**：
---
<img width="1763" height="1080" alt="mermaid-diagram-2026-01-17-213404" src="https://github.com/user-attachments/assets/3cb0dc5e-467d-43d2-b7ab-25482a071165" />

---

## 🧩 功能模块（Features）

### 1️⃣ 底层支撑环境
- Docker + CUDA
- ROS 2 Humble
- PyTorch + GPU 加速
- 完整隔离的算法运行环境

---

### 2️⃣ 传感器驱动层（ROS2）
已完成驱动与验证：
- 相机（RGB）
- 激光雷达
- 4D 毫米波雷达
- 红外相机
- IMU / GNSS

所有传感器数据统一封装为 **ROS2 Topic**。

---

### 3️⃣ 多模态感知算法层

#### 🔹 纯激光雷达感知
- 框架：OpenPCDet
- 模型：PV-RCNN
- 功能：目标检测 / 跟踪 / 速度估计 / 动静态识别
- 已完成 ROS2 封装，可系统级集成

#### 🔹 纯视觉感知
- 模型：YOLOv8
- 框架：Ultralytics
- 功能：目标检测 / 跟踪 
- 已完成 ROS2 封装，可系统级集成

#### 🔹 激光雷达 + 视觉可见光融合感知
- 框架：MMDetection3D
- 模型：MVXNet（可训练）
- 功能：融合检测 / 跟踪 / 动静态识别
- 已完成 ROS2 封装，可系统级集成

#### 🔹 激光雷达 + 4D毫米波雷达融合感知
- 模型：see_beyond
- 框架：OpenPCDet
- 功能：目标检测 
- 已完成 ROS2 封装，可系统级集成

#### 🔹 纯红外感知
- 模型：PSASISTD
- 框架：CNN
- 功能：红外小目标检测

#### 🔹 视觉可见光 + 红外融合感知
- 模型：DDFN
- 框架：CNN + Transformer
- 功能：可见光和红外双流目标检测
---

### 4️⃣ 多目标跟踪与后处理
- 算法：AB3DMOT
- 功能：
  - 多目标 ID 管理
  - 目标速度估计
  - 检测结果统一输出

---

## 🛠️ 工程实践原则
  
- ✅ 一个系统：所有功能集成于同一套框架，杜绝散落、孤立的“演示代码”。
- ✅ 可移植、可复现、易交付：底层环境通过Docker标准化，确保研究成果在任何地方都能一键复现、轻松部署。
- ✅ 环境非必要不隔离：最大限度追求模型与模块在统一环境下的兼容性，降低系统复杂度。
- ✅ 模型算法与系统解耦：通信与消息格式统一，整个系统严格基于 ROS2 Humble 构建，确保通信层的高效与规范。

---

## 📦 目录结构说明

```plaintext
CogniScope/                     # 项目根目录 
├── data/                       # 数据集存放位置   
├── docs/                       # 项目文档
│   └── GETTING_STARTED         # 项目使用文档
├── src/                   
│   └── AB3DMOT-master/         # 跟踪模块
│   ├── driver_ros1/            # ROS 1传感器驱动模块(弃用)
│   ├── fusiondet/              # 激光雷达 + 视觉可见光融合检测/跟踪/动静态识别/
│   ├── Infrared-Small-Target-Detection-master/  # 红外小目标检测模块
│   ├── OpenPCDet/              # OpenPCDet 框架
│   ├── pcdet_ros2              # 纯激光雷达检测/跟踪/动静态识别
│   ├── ros2_numpy              # ros2_numpy库
│   ├── see_beyond_ros2/        # 激光雷达 + 4D 毫米波融合检测 ROS2 节点
│   ├── see_test/               # 激光雷达 + 4D 毫米波融合检测
│   ├── sensor_driver/          # ROS 2传感器驱动模块
│   ├── ultralytics_ros/        # 纯视觉可见光检测/跟踪模块 ROS2 节点
│   └── vision_msgs_rviz_plugins-humble/         # RVIZ可视化插件
│ 
├── rosbag2/                    # 数据包
├── tools/                      # 标注工具与数据处理脚本
└──  README.md                   # 项目说明文档
```

---


## 🚀 如何开始（Getting Started）

为了降低环境配置成本，CogniScope 提供了 **已配置完成的 Docker 镜像**，可直接拉取使用。

### 1️⃣ 拉取镜像（推荐）

```bash
docker pull ghcr.io/bigcator/cogniscope:v1
```
该镜像已包含：

- CUDA + GPU 运行环境

- ROS 2 Humble

- PyTorch / OpenPCDet / MMDetection3D / Ultralytics

- CogniScope 所需核心依赖

---

### 2️⃣ 启动容器示例
```bash
docker run --gpus all --shm-size=32g -it \
  --name cogniscope_dev \
  -v /home:/home \
  -v $(pwd):/workspace/CogniScope \
  --ipc host \
  --network host \
  --privileged \
  ghcr.io/bigcator/cogniscope:v1 \
  /bin/bash
```
---

### 3️⃣ 详细使用说明

完整的环境说明、ROS2 工作空间构建方式、模块启动方法，请参考：

📄 GETTING_STARTED.md
👉 docs/GETTING_STARTED.md

---
## 🎥 配套内容

本项目同步作为 **技术内容创作素材**：
- Bilibili：https://space.bilibili.com/327695780?spm_id_from=333.1387.0.0 （知行世界）
- 内容聚焦：工程方法、系统设计、踩坑经验

---

## 📜 License

This project is for **research and engineering reference** only.  
Commercial use requires proper authorization.

---

## 🙌 Acknowledgements

- ROS 2
- OpenPCDet
- MMDetection3D
- Ultralytics YOLO
- AB3DMOT
- see_beyond