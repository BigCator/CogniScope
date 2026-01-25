import rclpy
from rclpy.node import Node
from vision_msgs.msg import Detection3DArray, Detection3D, ObjectHypothesisWithPose
from geometry_msgs.msg import TwistStamped
from visualization_msgs.msg import Marker, MarkerArray
import sys, math, numpy as np

# 确保 AB3DMOT 源码路径可见
sys.path.append('/workspace/CogniScope/src/AB3DMOT-master')
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

def get_color_by_speed(speed: float):
    """
    根据速度返回颜色 (RGBA)
    低速=绿色，中速=黄色，高速=红色
    """
    if speed < 0.5:      # 低速
        return (0.0, 1.0, 0.0, 1.0)   # 绿色
    elif speed < 3.0:    # 中速
        return (1.0, 1.0, 0.0, 1.0)   # 黄色
    else:                # 高速
        return (1.0, 0.0, 0.0, 1.0)   # 红色


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
        #/kitti/oxts/gps/vel /wheel_speed
        self.pub_tracks = self.create_publisher(Detection3DArray,"output",10)
        self.pub_markers = self.create_publisher(MarkerArray,"output_markers",10)  # 新增 Marker 发布器

        # 状态
        self.frame_id = 0
        self.ego_vel = np.zeros(3)   # 自车速度

        print("tracker_init")

    def vel_callback(self,msg:TwistStamped):
        print("vel_callback")
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
                new_vel = vel + self.ego_vel
                tracks_array[i,8:11] = new_vel
        return tracks_array

    def detection_callback(self,msg:Detection3DArray):
        print("detection_callback")
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

        tracks_array = self.apply_velocity_compensation(tracks_array)

        tracks_msg = Detection3DArray()
        tracks_msg.header = msg.header
        markers = MarkerArray()

        # 🚀 推荐方法：每帧先清空旧的 Marker
        delete_all = Marker()
        delete_all.action = Marker.DELETEALL
        markers.markers.append(delete_all)

        for trk in tracks_array:
            tid = int(trk[7])
            det = Detection3D()
            det.header = msg.header
            det.id = str(tid)
            det.bbox.center.position.x = float(trk[3])
            det.bbox.center.position.y = float(trk[4])
            det.bbox.center.position.z = float(trk[5])
            det.bbox.size.x = max(float(trk[2]),0.01)
            det.bbox.size.y = max(float(trk[1]),0.01)
            det.bbox.size.z = max(float(trk[0]),0.01)
            yaw = float(trk[6])
            det.bbox.center.orientation.z = math.sin(yaw/2)
            det.bbox.center.orientation.w = math.cos(yaw/2)

            hypo = ObjectHypothesisWithPose()
            hypo.hypothesis.class_id = get_class_id(self.cat)
            if trk.shape[0] > 10:
                vx,vy,vz = float(trk[8]),float(trk[9]),float(trk[10])
                speed = math.sqrt(vx**2+vy**2+vz**2)
                state = "MOV" if speed > 1.8 else "STA"
                hypo.hypothesis.score = 1.0 if state=="MOV" else 0.0
            else:
                speed = 0.0
                state = "STA"
                hypo.hypothesis.score = 0.0

            hypo.pose.pose.position = det.bbox.center.position
            hypo.pose.pose.orientation = det.bbox.center.orientation
            det.results.append(hypo)
            tracks_msg.detections.append(det)

            # # Marker 标签
            # marker = Marker()
            # marker.header = msg.header
            # marker.ns = "track_labels"
            # marker.id = tid
            # marker.type = Marker.TEXT_VIEW_FACING
            # marker.action = Marker.ADD
            # marker.pose.position.x = float(trk[3])
            # marker.pose.position.y = float(trk[4])
            # marker.pose.position.z = float(trk[5]) + 2.0
            # marker.scale.z = 0.5
            # marker.color.a = 1.0
            # marker.color.r = 1.0
            # marker.color.g = 1.0
            # marker.color.b = 1.0
            # marker.text = f"ID={tid} v={speed:.2f} {state}"
            # markers.markers.append(marker)

            # 根据速度选择颜色
            r,g,b,a = get_color_by_speed(speed)

            # 框 Marker (CUBE)
            box_marker = Marker()
            box_marker.header = msg.header
            box_marker.ns = "track_boxes"
            box_marker.id = tid
            box_marker.type = Marker.CUBE
            box_marker.action = Marker.ADD
            box_marker.pose = det.bbox.center
            box_marker.scale.x = det.bbox.size.x
            box_marker.scale.y = det.bbox.size.y
            box_marker.scale.z = det.bbox.size.z
            box_marker.color.r = r
            box_marker.color.g = g
            box_marker.color.b = b
            box_marker.color.a = a
            markers.markers.append(box_marker)

            # 标签 Marker (TEXT)
            text_marker = Marker()
            text_marker.header = msg.header
            text_marker.ns = "track_labels"
            text_marker.id = tid
            text_marker.type = Marker.TEXT_VIEW_FACING
            text_marker.action = Marker.ADD
            text_marker.pose.position.x = float(trk[3])
            text_marker.pose.position.y = float(trk[4])
            text_marker.pose.position.z = float(trk[5]) + 2.0
            text_marker.scale.z = 0.5
            text_marker.color.r = r
            text_marker.color.g = g
            text_marker.color.b = b
            text_marker.color.a = a
            text_marker.text = f"ID={tid} v={speed:.2f} {state}"
            markers.markers.append(text_marker)


        self.pub_tracks.publish(tracks_msg)
        self.pub_markers.publish(markers)

def main(args=None):
    rclpy.init(args=args)
    node = TrackerNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__=='__main__':
    main()
