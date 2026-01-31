import os
import cv2
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
# 发布文件夹中的图片
class ImagePublisherNode(Node):
    def __init__(self):
        super().__init__('image_publisher_node')
        self.publisher_ = self.create_publisher(Image, '/test_image', 10)
        self.timer = self.create_timer(1, self.timer_callback)
        self.image_folder = "/home/yjqin/code/zdtest_image/image5"  # Change this to your image folder path
        self.image_files = [f for f in os.listdir(self.image_folder) if os.path.isfile(os.path.join(self.image_folder, f))]
        self.image_index = 0
        self.bridge = CvBridge()

    def timer_callback(self):
        if self.image_index >= len(self.image_files):
            self.image_index = 0  # Reset index if all images have been published
        image_path = os.path.join(self.image_folder, self.image_files[self.image_index])
        try:
            image = cv2.imread(image_path)
            if image is None:
                self.get_logger().info('Failed to load image at path: %s' % image_path)
                return
            else:
                msg = self.bridge.cv2_to_imgmsg(image, "bgr8")
                self.publisher_.publish(msg)
                self.image_index += 1  # Move to the next image
        except CvBridgeError as e:
            self.get_logger().info('CvBridge Error: %s' % e)

def main(args=None):
    rclpy.init(args=args)
    image_publisher = ImagePublisherNode()
    rclpy.spin(image_publisher)
    image_publisher.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()