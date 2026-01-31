import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from std_msgs.msg import String
from cv_bridge import CvBridge
import os
import sys
import gc
import resource
import argparse
import cv2
import tqdm
import time
import torch
from torch.multiprocessing import Pool, set_start_method
import numpy as np
import mmcv
from mmcv.transforms import Compose
from mmengine.utils import track_iter_progress
from mmdet.apis import init_detector
from mmdet.registry import VISUALIZERS
from mmcv.ops.nms import batched_nms

# use package-relative imports so module works when installed as ROS package
from . import masa
from .masa.apis import inference_masa, init_masa, inference_detector, build_test_pipeline
from .masa.models.sam import SamPredictor, sam_model_registry
from .utils import filter_and_update_tracks
from control_interfaces.msg import ObjectMessage
from control_interfaces.msg import TrackResult, TrackInstance

class TrackingNode(Node):
    def __init__(self):
        super().__init__('tracking_node')
        self.br = CvBridge()
        self.result_image_pub = self.create_publisher(Image, 'track_image_carla_camera', 10)
        # 订阅速度
        self.subscription_obj = self.create_subscription(ObjectMessage, '/obj_state', self.obj_callback, 10)
        # 订阅图像话题
        self.subscription = self.create_subscription(Image, 'carla_camera_rgb', self.listener_callback, 10) 
        # New topic for tracking results  
        self.track_result_pub = self.create_publisher(String, 'track_result', 10)

        device = 'cuda:0'
        # det_config = '/home/local/zdtest/track_ws/src/masa_track/masa_track/projects/mmdet_configs/yolox/yolox_x_8xb8-300e_coco.py'
        # det_checkpoint = '/home/local/zdtest/track_ws/src/masa_track/masa_track/saved_models/pretrain_weights/yolox_x_8x8_300e_coco_20211126_140254-1ef88d67.pth'
        # 换小模型做检测
        det_config = '/workspace/CogniScope/src/masa_track/src/masa_track/masa_track/projects/mmdet_configs/yolox/yolox_s_8xb8-300e_coco.py'
        det_checkpoint = '/workspace/CogniScope/src/masa_track/src/masa_track/masa_track/saved_models/pretrain_weights/yolox_s_8x8_300e_coco_20211121_095711-4592a793.pth'
        self.det_model = init_detector(det_config,det_checkpoint,palette='random',device=device)
        masa_config = '/workspace/CogniScope/src/masa_track/src/masa_track/masa_track/configs/masa-one/masa_r50_plug_and_play.py'
        masa_checkpoint = '/workspace/CogniScope/src/masa_track/src/masa_track/masa_track/saved_models/masa_models/masa_r50.pth'
        self.masa_model = init_masa(masa_config, masa_checkpoint, device=device)
        
        self.det_model.cfg.test_dataloader.dataset.pipeline[
            0].type = 'mmdet.LoadImageFromNDArray'
        self.test_pipeline = Compose(self.det_model.cfg.test_dataloader.dataset.pipeline)
        self.frame_idx = 0
        self.masa_test_pipeline = build_test_pipeline(self.masa_model.cfg,with_text=True)
        self.instances_list = []
        self.frames = []
        self.fps_list = []
        self.masa_model.cfg.visualizer['texts'] = 'car'
        self.speed_car0 = 0
        self.speed_car1 = 0
        self.track_car_id = 0
        self.sum_time = 0
        print("初始化完成")
        # self.save_frame_dir = '/home/local/zzz2'
        # # 如果文件夹不存在，则创建它
        # if not os.path.exists(self.save_frame_dir):
        #     os.makedirs(self.save_frame_dir)
        
    def obj_callback(self,msg):
        
        for obj in msg.data:
            # 检查id是否为0或1
            if obj.id ==0:
                self.speed_car0 = (obj.vx**2 + obj.vy**2)**0.5
                # m/s换算成km/h
                self.speed_car0 = self.speed_car0 * 3.6
            if obj.id ==1:
                self.speed_car1 = (obj.vx**2 + obj.vy**2)**0.5
                self.speed_car1 = self.speed_car1 * 3.6
                
    def listener_callback(self, data):
        # 红色字体打印当前帧数
        print("\033[31m-----------------------------------------------------------------------------第{}帧\033[0m".format(self.frame_idx))
        start_time = time.time()
        current_frame = self.br.imgmsg_to_cv2(data,desired_encoding="bgr8")
        result = inference_detector(self.det_model, current_frame,
                                            text_prompt='car',
                                            test_pipeline=self.test_pipeline,
                                            fp16=True)

        #  打印检测结果类别和置信度
        # for i in range(len(result.pred_instances)):
        #     print(f"类别：{result.pred_instances[i].labels.cpu().numpy()}，置信度：{result.pred_instances[i].scores.cpu().numpy()}")
        
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
        det_time = time.time()
        sum_det_time = det_time - start_time
        
        self.sum_time+=sum_det_time
        track_time = time.time()
        track_result,fps = inference_masa(self.masa_model, current_frame, frame_id=self.frame_idx,
                                          video_len=917,
                                          test_pipeline=self.masa_test_pipeline,
                                          det_bboxes=det_bboxes,
                                          det_labels=det_labels,
                                          fp16=True,
                                          show_fps=True)
        track_result[0].pred_track_instances.bboxes = track_result[0].pred_track_instances.bboxes.to(torch.float32)
        # self.instances_list.append(track_result.to('cpu')) # 将跟踪结果存到列表中
        # self.frames.append(current_frame)
        track_time_end = time.time()
        self.frame_idx = self.frame_idx + 1
        print(f"此帧跟踪时间：{sum_det_time:.3f}s,此帧跟踪频率:{1/sum_det_time:.3f}HZ")
        print("------")
        print(f"此帧自车速度: {self.speed_car0:.3f}km/h")
        print("此帧跟踪目标: ")
        # 更新跟踪结果
        # self.instances_list = filter_and_update_tracks(self.instances_list, (current_frame.shape[1], current_frame.shape[0]))
        # 输出这一帧的跟踪结果
        # self.print_tracking_result(track_result, fps)


        self.publish_result_image(track_result, current_frame)

        # Publish tracking result
        track_result_msg = self.format_track_result(track_result)
        self.track_result_pub.publish(track_result_msg)

        end_time = time.time()
        print("------")
        avg_track_time = self.sum_time / self.frame_idx
        avg_track_freq = 1 / avg_track_time
        print(f"累计跟踪耗时:{self.sum_time:.3f}秒,平均跟踪耗时:{avg_track_time:.3f}秒,平均跟踪频率:{avg_track_freq:.3f}HZ")
        # self.save_current_frame(current_frame)    

    # def format_track_result(self, track_result):
    #     formatted_result = TrackResult()
    #     for instance in track_result[0].pred_track_instances:
    #         bboxes = instance.bboxes.cpu().numpy()
    #         labels = instance.labels.cpu().numpy()
    #         scores = instance.scores.cpu().numpy()
    #         track_id = instance.instances_id.cpu().numpy()
    #         for i in range(len(bboxes)):
    #             if scores[i] > 0.05:
    #                 result = TrackInstance()
    #                 result.track_id = int(track_id[i])
    #                 result.x_min = float(bboxes[i][0])
    #                 result.y_min = float(bboxes[i][1])
    #                 result.x_max = float(bboxes[i][2])
    #                 result.y_max = float(bboxes[i][3])
    #                 result.label = int(labels[i])
    #                 result.score = float(scores[i])
    #                 formatted_result.results.append(result)
    #     return formatted_result
    
    def format_track_result(self, track_result):
        formatted_result = []
        for instance in track_result[0].pred_track_instances:
            bboxes = instance.bboxes.cpu().numpy()
            labels = instance.labels.cpu().numpy()
            scores = instance.scores.cpu().numpy()
            track_id = instance.instances_id.cpu().numpy()
            for i in range(len(bboxes)):
                if scores[i] > 0.05:
                    formatted_result.append(
                        f"ID: {track_id[i]}, BBox: {bboxes[i].tolist()}, Label: {labels[i]}, Score: {scores[i]:.2f}"
                    )
        return String(data="\n".join(formatted_result))
    def save_current_frame(self, frame):
        # 保存当前帧
        frame_filename = os.path.join(self.save_frame_dir, f"frame_{self.frame_idx:04d}.jpg")
        cv2.imwrite(frame_filename, frame)
        print(f"保存当前帧到{frame_filename}")    
    def print_tracking_result(self, track_result, fps):
        
        print("正在处理第{}帧".format(self.frame_idx))   
        print(f"FPS: {fps:.2f}")
        for instance in track_result[0].pred_track_instances:
            bboxes = instance.bboxes.cpu().numpy()
            labels = instance.labels.cpu().numpy()
            scores = instance.scores.cpu().numpy()
            track_id = instance.instances_id.cpu().numpy()
           
            x1, y1, x2, y2 = bboxes[0]
            label = labels[0]
            score = scores[0]
            if score > 0.5:
                print(f"跟踪ID: {track_id}, 边界框: [{x1:.2f}, {y1:.2f}, {x2:.2f}, {y2:.2f}], 分数: {score:.2f}, 标签: {label}")
    
    # #发布识别结果
    # def publish_result(self, track_result, frame):
    #     np.random.seed(100) 
    #     COLORS = np.random.randint(0, 255, size=(200, 3), dtype="uint8")
    #     self.publisher.publish(self.visualizer.visualize(frame, track_result))


    def publish_result_image(self, track_result, frame):
        np.random.seed(100)
        COLORS = np.random.randint(0, 255, size=(200, 3), dtype="uint8")
        # 发布包含识别结果的图像
        for instance in track_result[0].pred_track_instances:
            bboxes = instance.bboxes.cpu().numpy()
            labels = instance.labels.cpu().numpy()
            scores = instance.scores.cpu().numpy()
            track_id = instance.instances_id.cpu().numpy()
            # 打印输出每一个实例的所有信息
            # print(f"labels:{labels},scores:{scores},track_id:{track_id}")
            for i in range(len(bboxes)):
                x1, y1, x2, y2 = bboxes[i]
                label = labels[i]
                score = scores[i]
                if self.frame_idx == 1 and (label == 2 or label == 7 or label == 8):
                    self.track_car_id = track_id[i]
                if score > 0.05:
                    color = [int(c) for c in COLORS[int(track_id) % len(COLORS)]]
                    
                    
                    # 绘制文本背景
                    bg_color = (255, 255, 255)  # 白色背景
                    bg_thickness = 2
                    font = cv2.FONT_HERSHEY_SIMPLEX
                    font_scale = 1
                    font_thickness = 3
                    
                    # text = f"{track_id}:person:{float(score):.2f}" if label == 0 else f"{track_id}:car:{float(score):.2f}"
                    # if label == 0:
                    #     text = f"{track_id}:person:{float(score):.2f}"
                    # elif label == 2:
                    #     text = f"{track_id}:car:{float(score):.2f}"
                    # elif label == 7:
                    #     text = f"{track_id}:train:{float(score):.2f}"
                    # elif label == 8:
                    #     text = f"{track_id}:truck:{float(score):.2f}"
                    # else:
                    #     text = f"{track_id}:other:{float(score):.2f}:label:{label}"
                    if label == 0 and score > 0.6:
                        text = f"id{track_id}:person:{float(score):.2f}"
                        text_size, _ = cv2.getTextSize(text, font, font_scale, font_thickness)
                        text_x = int(x1)
                        text_y = int(y1) - 10
                        print(f"ID:{track_id[0]}, 类别:人员, 置信度{score*100:.2f}%, 目标速度:{self.speed_car1:.3f}km/h")
                        cv2.rectangle(frame, (text_x, text_y - text_size[1] - 5), (text_x + text_size[0], text_y + 5), bg_color, cv2.FILLED)
                    
                        # 在矩形框上显示类别名称
                        cv2.putText(frame, text, (int(x1), int(y1) - 10),
                                cv2.FONT_HERSHEY_SIMPLEX, 1, (color[0], color[1], color[2]), 3)
                        # 在图像上绘制矩形框
                        cv2.rectangle(frame, (int(x1), int(y1)), (int(x2), int(y2)),
                                (color[0], color[1], color[2]), 3)
                    # if (label == 2 or label ==7 or label==8) and score > 0.3:
                    if track_id == self.track_car_id:
                        text = f"id{track_id}:car:{float(score):.2f}"
                        text_size, _ = cv2.getTextSize(text, font, font_scale, font_thickness)
                        text_x = int(x1)
                        text_y = int(y1) - 10
                        cv2.rectangle(frame, (text_x, text_y - text_size[1] - 5), (text_x + text_size[0], text_y + 5), bg_color, cv2.FILLED)
                    
                        # 在矩形框上显示类别名称
                        cv2.putText(frame, text, (int(x1), int(y1) - 10),
                                cv2.FONT_HERSHEY_SIMPLEX, 1, (color[0], color[1], color[2]), 3)
                        # 在图像上绘制矩形框
                        cv2.rectangle(frame, (int(x1), int(y1)), (int(x2), int(y2)),
                                (color[0], color[1], color[2]), 3)
                        print(f"ID:{track_id[0]}, 类别:车辆, 置信度{score*100:.2f}%, 目标速度:{self.speed_car1:.2f}km/h")
                    # if label == 0:
                    #     print(f"跟踪到目标：{track_id}，类别：person，置信度：{score:.2f}")
                    # else:
                    #     print(f"跟踪到目标：{track_id}，类别：car，置信度：{score:.2f}")
        result_img_msg = self.br.cv2_to_imgmsg(frame,encoding="bgr8")
        self.result_image_pub.publish(result_img_msg)        
def main(args=None):
    rclpy.init(args=args)
    tracking_node = TrackingNode()
    rclpy.spin(tracking_node)
    tracking_node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()