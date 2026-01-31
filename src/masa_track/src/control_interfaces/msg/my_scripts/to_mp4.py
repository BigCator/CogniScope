import cv2
import os

# 图像文件夹路径 【城市】
image_folder = 'demo/mp4_chengshilukou/results/PKU-Inside_sync/camera/未抽帧（复件）'

# 输出视频路径和文件名
video_name = 'output/chengshilukou_未抽帧_1.mp4'

# 图像文件夹路径 【野外】
image_folder = 'demo/mp4_yewailukou/load1_未抽帧（复件）（复件）'
# 输出视频路径和文件名
video_name = 'output/yewailukou_未抽帧_1.mp4'

# 获取图像文件列表
images = [img for img in sorted(os.listdir(image_folder)) if img.endswith(".png")]
# 获取第一张图像的宽度和高度
frame_0 = cv2.imread(os.path.join(image_folder, images[0]))
height, width, layers = frame_0.shape

fourcc = cv2.VideoWriter_fourcc('m', 'p', '4', 'v')  # 设置输出视频为mp4格式
cap_fps = 10   # 帧率，可以根据随意设置
size = (width, height)
video = cv2.VideoWriter(video_name, fourcc, cap_fps, size)
# 这里直接读取py文件所在目录下的pics目录所有图片。
for frame in images:
    img = cv2.imread(os.path.join(image_folder, frame))
    video.write(img)
video.release()