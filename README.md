# CogniScope  
## An Embodied Intelligence Perception System

> **Understanding the World Through Action**  
> 知行合一，通透世界

CogniScope 是一个面向 **具身智能（Embodied Intelligence）与自动驾驶场景** 的  
**多传感器、多模态感知系统工程框架**。

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
┌────────────────────────────┐
│ Physical Sensors │
│ Camera / LiDAR / Radar │
└────────────┬───────────────┘
│
┌────────────▼───────────────┐
│ ROS2 Sensor Drivers │
│ (Camera / LiDAR / Radar) │
└────────────┬───────────────┘
│ ROS2 Topics
┌────────────▼───────────────┐
│ Middleware & Preprocess │
│ Time Sync / TF / Filtering │
└────────────┬───────────────┘
│
┌────────────▼───────────────┐
│ Multi-Modal Perception │
│ LiDAR / Vision / Fusion │
└────────────┬───────────────┘
│
┌────────────▼───────────────┐
│ Post-process & Tracking │
│ AB3DMOT / Velocity Est. │
└────────────┬───────────────┘
│
┌────────────▼───────────────┐
│ Output & Visualization │
│ ROS2 / RViz2 / Logging │
└────────────────────────────┘

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
- 功能：目标检测 / 跟踪 / 速度估计

#### 🔹 激光雷达 + 视觉融合
- 框架：MMDetection3D
- 模型：MVXNet（可训练）
- 功能：融合检测 / 跟踪 / 动静态识别

#### 🔹 纯视觉感知
- 模型：YOLOv8
- 框架：Ultralytics
- 已完成 ROS2 封装，可系统级集成

---

### 4️⃣ 多目标跟踪与后处理
- 算法：AB3DMOT
- 功能：
  - 多目标 ID 管理
  - 目标速度估计
  - 检测结果统一输出

---

### 5️⃣ 雷达与红外扩展
- 4D 毫米波雷达 + 激光雷达融合
- 红外小目标检测
- 可见光 + 红外双流目标检测

---

## 🛠️ 工程实践原则

- ❌ 不直接 `colcon build` 整个工作空间  
- ❌ 不在 GitHub 推送权重与数据  
- ✅ 所有非 ROS 包目录使用 `COLCON_IGNORE`
- ✅ 算法与系统解耦
- ✅ Docker 只负责环境，不负责成果

---

## 📦 目录结构说明（简化）

CogniScope/
├── docker/ # Docker & 环境配置
├── ros2_ws/
│ └── src/
│ ├── sensor_driver/
│ ├── fusiondet/
│ ├── fusion_tracker/
│ └── see_beyond_ros2/
├── scripts/ # 启动与辅助脚本
├── docs/ # 架构与工程文档
└── README.md


---

## 🚫 GitHub 忽略内容说明

以下内容 **不会** 推送至 GitHub：
- 训练数据集
- 模型权重（`.pth / .pt / .ckpt`）
- rosbag 数据
- 第三方完整源码

详见 `.gitignore`。

---

## 🎥 配套内容

本项目同步作为 **技术内容创作素材**：
- Bilibili：具身智能感知系统工程实录
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

