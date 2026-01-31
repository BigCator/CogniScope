import sys
sys.path.append('/home/local/zdtest/track_ws/src/masa_track/masa_track')
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge
import os
import sys
sys.path.append('/home/local/zdtest/track_ws/src/masa_track/masa_track')
import gc

import torch
from mmcv.transforms import Compose
from mmdet.apis import init_detector
from mmdet.registry import VISUALIZERS
from mmcv.ops.nms import batched_nms

from masa.apis import inference_masa, init_masa, inference_detector, build_test_pipeline
from masa.models.sam import SamPredictor, sam_model_registry
from utils import filter_and_update_tracks
import time
class TrackingNode(Node):
    def __init__(self):
        super().__init__('tracking_node')
        self.bridge = CvBridge()
    
        device = 'cuda:0'
        det_config = '/home/local/zdtest/track_ws/src/masa_track/masa_track/projects/mmdet_configs/yolox/yolox_x_8xb8-300e_coco.py'
        det_checkpoint = '/home/local/zdtest/track_ws/src/masa_track/masa_track/saved_models/pretrain_weights/yolox_x_8x8_300e_coco_20211126_140254-1ef88d67.pth'
        self.det_model = init_detector(det_config,det_checkpoint,palette='random',device=device)
        masa_config = '/home/local/zdtest/track_ws/src/masa_track/masa_track/configs/masa-one/masa_r50_plug_and_play.py'
        masa_checkpoint = '/home/local/zdtest/track_ws/src/masa_track/masa_track/saved_models/masa_models/masa_r50.pth'
        self.masa_model = init_masa(masa_config, masa_checkpoint, device=device)
        
        self.det_model.cfg.test_dataloader.dataset.pipeline[
            0].type = 'mmdet.LoadImageFromNDArray'
        self.test_pipeline = Compose(self.det_model.cfg.test_dataloader.dataset.pipeline)
        self.frame_idx = 0
        self.masa_test_pipeline = build_test_pipeline(self.masa_model.cfg)
        self.instances_list = []
        self.frames = []
        self.fps_list = []
        self.texts = None
       
        self.masa_model.cfg.visualizer['texts'] = self.det_model.dataset_meta['classes']
        self.visualizer = VISUALIZERS.build(self.masa_model.cfg.visualizer)
        self.score_thr = 0.3
        # self.track_result_path = '/home/local/zzz/test_car.txt'
        
        # self.result_pub = self.create_publisher(Image, 'track_carla_camera', 10)
        self.result_image_pub = self.create_publisher(Image, 'track_image_carla_camera', 10)
        # 订阅图像话题 /zw040201/camera_main, carla_camera_rgb人员的仿真数据,carla_camera是仿真驾驶环境的数据
        self.subscription = self.create_subscription(
        Image, 
        'carla_camera_rgb', 
        self.listener_callback, 
        10)   
        self.get_logger().info('初始化完成')

    def listener_callback(self, msg):
        start = time.time()
        # 将ROS图像消息转换为OpenCV图像
        current_frame = self.bridge.imgmsg_to_cv2(msg,desired_encoding="bgr8")
        
        result = inference_detector(self.det_model, current_frame,
                                            test_pipeline=self.test_pipeline,
                                            fp16=True)
        det_bboxes, keep_idx = batched_nms(boxes=result.pred_instances.bboxes,
                                               scores=result.pred_instances.scores,
                                               idxs=result.pred_instances.labels,
                                               class_agnostic=True,
                                               nms_cfg=dict(type='nms',
                                                             iou_threshold=0.5,
                                                             class_agnostic=True,
                                                             split_thr=100000))

        det_bboxes = torch.cat([det_bboxes,
                                result.pred_instances.scores[keep_idx].unsqueeze(1)],
                                dim=1)
        det_labels = result.pred_instances.labels[keep_idx]

        track_result,fps = inference_masa(self.masa_model, current_frame, frame_id=self.frame_idx,
                                          video_len=917,
                                          test_pipeline=self.masa_test_pipeline,
                                          det_bboxes=det_bboxes,
                                          det_labels=det_labels,
                                          fp16=True,
                                          show_fps=True)
        end = time.time()
        sumtime = end - start 
        sumtime*=1000
        # print(sumtime)
        # print(f"{sumtime:.2f}")
        track_result[0].pred_track_instances.bboxes = track_result[0].pred_track_instances.bboxes.to(torch.float32)
        # self.instances_list.append(track_result.to('cpu')) # 将跟踪结果存到列表中
        # self.frames.append(current_frame)

        # 使用可视化函数 
        self.print_track_result(track_result,sumtime)
        visualized_frame = self.visualize_frame(current_frame, track_result, self.frame_idx)
        visualized_frame_rgb = cv2.cvtColor(visualized_frame, cv2.COLOR_BGR2RGB)

        # 将 RGB 图像转换为 ROS 图像消息
        result_img_msg = self.bridge.cv2_to_imgmsg(visualized_frame_rgb, "bgr8")

        # 发布图像消息
        self.result_image_pub.publish(result_img_msg)
        # 保存结果帧
        # self.save_image_result(visualized_frame_rgb)
        
        # 输出这一帧的跟踪结果txt文件
        # self.save_tracking_result_txt(track_result, fps,self.frame_idx,self.track_result_path)
        self.get_logger().info('Processing frame %d' % self.frame_idx)
        self.frame_idx = self.frame_idx + 1
      

    # 调用源代码写的函数来做可视化并发布
    def visualize_frame(self, frame, track_result, frame_idx):
        try:
            if track_result[0] is None:
                self.get_logger().error("track_result[0] is None")
                return None
            self.visualizer.add_datasample(
                name='video_' + str(frame_idx),
                image=frame[:, :, ::-1],  # Convert from BGR to RGB
                data_sample=track_result[0],
                draw_gt=False,
                show=False,
                out_file=None,
                pred_score_thr=self.score_thr
            )
            visualized_frame = self.visualizer.get_image()
            gc.collect()
            return visualized_frame
        except AttributeError as e:
            self.get_logger().error(f"AttributeError: {e}")
            # 打印调试信息
            self.get_logger().info(f"frame: {frame}")
            self.get_logger().info(f"track_result: {track_result}")
            self.get_logger().info(f"frame_idx: {frame_idx}")
            raise
    def publish_result_image(self, track_instances, frame):
        # 发布包含识别结果的图像
        for instance in track_instances:
            bboxes = instance.bboxes.cpu().numpy()
            labels = instance.labels.cpu().numpy()
            scores = instance.scores.cpu().numpy()
            track_id = instance.instances_id.cpu().numpy()
            for i in range(len(bboxes)):
                x1, y1, x2, y2 = bboxes[i]
                label = labels[i]
                score = scores[i]
                if score > 0.5:
                    cv2.rectangle(frame, (int(x1), int(y1)), (int(x2), int(y2)),
                              (0, 255, 0), 2)
                    cv2.putText(frame, f"{track_id}:{str(label)}:{float(score):.2f}", (int(x1), int(y1)),  # 在矩形框上显示类别名称
                        cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 255, 0), 2)
                print(f"跟踪到目标：{track_id}，类别：{label}，置信度：{score:.2f}, 位置：({x1:.2f}, {y1:.2f})-({x2:.2f}, {y2:.2f})")
        result_img_msg = self.bridge.cv2_to_imgmsg(frame,encoding="rgb8")
        self.result_image_pub.publish(result_img_msg)
    
    def print_track_result(self, track_result,sumtime):
        # 打印每一帧的跟踪结果
        for instance in track_result[0].pred_track_instances:
            bboxes = instance.bboxes.cpu().numpy()
            labels = instance.labels.cpu().numpy()
            scores = instance.scores.cpu().numpy()
            track_id = instance.instances_id.cpu().numpy()
            for i in range(len(bboxes)):
                x1, y1, x2, y2 = bboxes[i]
                label = labels[i]
                score = scores[i]
                if score > 0.5:
                    if label == 0:
                        print(f"跟踪到目标id：{track_id}，类别：person，置信度：{score:.2f},处理时间{sumtime:.2f}ms")
                    elif label == 2:
                        print(f"跟踪到目标id：{track_id}，类别：car，置信度：{score:.2f},处理时间{sumtime:.2f}ms")
    
    def save_image_result(self, frame):
        # 保存结果帧
        save_frame_dir = '/home/local/zzz/2'
        # 如果文件夹不存在，则创建它
        if not os.path.exists(save_frame_dir):
            os.makedirs(save_frame_dir)
        frame_filename = os.path.join(save_frame_dir, f"frame_{self.frame_idx:04d}.jpg")
        cv2.imwrite(frame_filename, frame)
        print(f"保存当前帧到{frame_filename}")    
        
    # 将跟踪结果存入txt文件中
    def  save_tracking_result_txt(self, track_result, fps, frame_id,track_result_path):
    
        for instance in track_result[0].pred_track_instances:
            bboxes = instance.bboxes.cpu().numpy()
            labels = instance.labels.cpu().numpy()
            scores = instance.scores.cpu().numpy()
            track_id = instance.instances_id.cpu().numpy()
            
            x1, y1, x2, y2 = bboxes[0]
            width = x2 - x1
            height = y2 - y1
            label = labels[0]
            score = scores[0]
            if score > self.score_thr:
                with open(track_result_path,'a') as f: # a 是文件追加模式
                    f.write(f"{frame_id},{track_id[0]},{x1:.2f},{y1:.2f},{width:.2f},{height:.2f},{score:.2f},{label},-1\n")
            
def main(args=None):
    rclpy.init(args=args)
    tracking_node = TrackingNode()
    rclpy.spin(tracking_node)
    tracking_node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()