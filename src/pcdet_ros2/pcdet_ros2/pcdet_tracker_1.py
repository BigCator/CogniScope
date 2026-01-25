import rclpy
from rclpy.node import Node
from vision_msgs.msg import Detection3DArray, Detection3D, ObjectHypothesisWithPose
from geometry_msgs.msg import TwistStamped
import sys, math, numpy as np

# 确保 AB3DMOT 源码路径可见
sys.path.append('/workspace/ros2_yolo/src/AB3DMOT-master')
from AB3DMOT_libs.utils import Config
from AB3DMOT_libs.model import AB3DMOT

import warnings
from numba.core.errors import NumbaWarning, NumbaDeprecationWarning
warnings.filterwarnings("ignore", category=NumbaWarning)
warnings.filterwarnings("ignore", category=NumbaDeprecationWarning)

class DummyLog:
    def write(self, s): print(s.strip())
    def flush(self): pass

CLASS_MAP = {"Car":"1","Pedestrian":"2","Cyclist":"3","Truck":"4","Bus":"5"}
def get_class_id(cat: str) -> str: return CLASS_MAP.get(cat,"0")

class TrackerNode(Node):
    def __init__(self):
        super().__init__('pcdet_tracker')
        self.declare_parameter("tracker_cfg","")
        self.declare_parameter("tracker_cat","Car")
        cfg_file = self.get_parameter("tracker_cfg").value
        cat = self.get_parameter("tracker_cat").value
        self.cat = cat

        cfg,_ = Config(cfg_file)
        self.tracker = AB3DMOT(cfg, cat, log=DummyLog())

        # 订阅检测和 GPS 速度
        self.sub_det = self.create_subscription(Detection3DArray,"input",self.detection_callback,10)
        self.sub_vel = self.create_subscription(TwistStamped,"/kitti/oxts/gps/vel",self.vel_callback,10)
        self.pub_tracks = self.create_publisher(Detection3DArray,"output",10)

        # 状态
        self.frame_id = 0
        self.ego_vel = np.zeros(3)   # 自车速度

    def vel_callback(self,msg:TwistStamped):
        # 保存自车速度 (瞬时速度，不做积分)
        self.ego_vel = np.array([
            msg.twist.linear.x,
            msg.twist.linear.y,
            msg.twist.linear.z
        ], dtype=np.float32)

    def apply_velocity_compensation(self, tracks_array):
        if tracks_array is None or len(tracks_array) == 0:
            return tracks_array

        for i in range(tracks_array.shape[0]):
            if tracks_array.shape[1] > 10:
                vel = np.array([tracks_array[i,8]*10,
                                tracks_array[i,9]*10,
                                tracks_array[i,10]], dtype=np.float32).reshape(3,)
                # 🚀 用 ego_vel 修正目标速度 (世界速度 = 相对速度 + 自车速度)
                new_vel = vel + self.ego_vel
                tracks_array[i,8:11] = new_vel

                # 调试日志，带上 Track ID
                # track_id = int(tracks_array[i,7])
                # self.get_logger().info(
                #     f"Track ID={track_id}, vel before={vel}, ego_vel={self.ego_vel}, vel after={new_vel}"
                # )
        return tracks_array

    def detection_callback(self,msg:Detection3DArray):
        dets_list,info_list=[],[]
        for det in msg.detections:
            x,y,z = det.bbox.center.position.x, det.bbox.center.position.y, det.bbox.center.position.z
            l,w,h = det.bbox.size.x, det.bbox.size.y, det.bbox.size.z
            q = det.bbox.center.orientation
            yaw = math.atan2(2*(q.w*q.z+q.x*q.y),1-2*(q.y*q.y+q.z*q.z))
            score = det.results[0].hypothesis.score if det.results else 1.0
            dets_list.append([h,w,l,x,y,z,yaw])
            info_list.append([score,1,1,1,1,1,1])
        dets = np.array(dets_list,dtype=np.float32) if dets_list else np.zeros((0,7),dtype=np.float32)
        info = np.array(info_list,dtype=np.float32) if info_list else np.zeros((0,7),dtype=np.float32)

        results,_ = self.tracker.track({'dets':dets,'info':info},self.frame_id,seq_name="ros2")
        self.frame_id += 1
        tracks_array = results[0] if len(results)>0 else np.empty((0,15))

        # 🚀 用 ego_vel 修正目标速度
        tracks_array = self.apply_velocity_compensation(tracks_array)

        # 构造输出消息
        tracks_msg = Detection3DArray()
        tracks_msg.header = msg.header
        for trk in tracks_array:
            det = Detection3D()
            det.header = msg.header
            det.id = str(int(trk[7]))
            det.bbox.center.position.x,det.bbox.center.position.y,det.bbox.center.position.z = float(trk[3]),float(trk[4]),float(trk[5])
            det.bbox.size.x,det.bbox.size.y,det.bbox.size.z = max(float(trk[2]),0.01),max(float(trk[1]),0.01),max(float(trk[0]),0.01)
            yaw = float(trk[6])
            det.bbox.center.orientation.z,det.bbox.center.orientation.w = math.sin(yaw/2),math.cos(yaw/2)

            hypo = ObjectHypothesisWithPose()
            hypo.hypothesis.class_id = get_class_id(self.cat)
            if trk.shape[0] > 10:
                vx,vy,vz = float(trk[8]),float(trk[9]),float(trk[10])
                speed = math.sqrt(vx**2+vy**2+vz**2)
                # 🚀 二值化速度得分
                hypo.hypothesis.score = 1.0 if speed > 1.8 else 0.0
            else:
                hypo.hypothesis.score = 0.0

            hypo.pose.pose.position = det.bbox.center.position
            hypo.pose.pose.orientation = det.bbox.center.orientation
            det.results.append(hypo)
            tracks_msg.detections.append(det)

        self.pub_tracks.publish(tracks_msg)

def main(args=None):
    rclpy.init(args=args)
    node = TrackerNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__=='__main__':
    main()
