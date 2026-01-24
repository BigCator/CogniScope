import numpy as np
from vision_msgs.msg import Detection3DArray, Detection3D, ObjectHypothesisWithPose
from geometry_msgs.msg import Point, Quaternion
from visualization_msgs.msg import Marker, MarkerArray


def convert_to_detection3darray(pred_dicts, stamp=None, frame_id="map"):
    msg = Detection3DArray()
    if stamp is not None:
        msg.header.stamp = stamp
    msg.header.frame_id = frame_id

    for pred in pred_dicts:
        boxes = pred['pred_boxes'].cpu().numpy()
        scores = pred['pred_scores'].cpu().numpy()
        labels = pred['pred_labels'].cpu().numpy()

        for i in range(len(boxes)):
            det = Detection3D()
            det.header = msg.header

            hypothesis = ObjectHypothesisWithPose()
            hypothesis.hypothesis.class_id = str(int(labels[i]))
            hypothesis.hypothesis.score = float(scores[i])

            box = boxes[i]
            det.bbox.center.position = Point(
                x=float(box[0]), y=float(box[1]), z=float(box[2])
            )
            det.bbox.size.x = float(box[3])
            det.bbox.size.y = float(box[4])
            det.bbox.size.z = float(box[5])

            q = Quaternion()
            q.z = np.sin(box[6] / 2.0)
            q.w = np.cos(box[6] / 2.0)
            det.bbox.center.orientation = q

            det.results.append(hypothesis)
            msg.detections.append(det)

    return msg

from geometry_msgs.msg import Point

def convert_to_markerarray(detection_msg):
    markers = MarkerArray()
    marker_id = 0

    for det in detection_msg.detections:
        cls = det.results[0].hypothesis.class_id
        score = det.results[0].hypothesis.score

        # -------------------------
        # 统一红色 + 亮度随 score 变化
        # -------------------------
        base_r, base_g, base_b = (1.0, 0.0, 0.0)  # 红色
        brightness = 0.3 + 0.7 * score            # score 越高越亮

        r = min(base_r * brightness, 1.0)
        g = min(base_g * brightness, 1.0)
        b = min(base_b * brightness, 1.0)

        cx = det.bbox.center.position.x
        cy = det.bbox.center.position.y
        cz = det.bbox.center.position.z

        sx = det.bbox.size.x / 2.0
        sy = det.bbox.size.y / 2.0
        sz = det.bbox.size.z / 2.0

        # -------------------------
        # 1. 线框 Marker（LINE_LIST）
        # -------------------------
        line_marker = Marker()
        line_marker.header = detection_msg.header
        line_marker.ns = "fusion_wireframe"
        line_marker.id = marker_id
        marker_id += 1

        line_marker.type = Marker.LINE_LIST
        line_marker.action = Marker.ADD

        line_marker.scale.x = 0.1  # 线宽

        line_marker.color.r = r
        line_marker.color.g = g
        line_marker.color.b = b
        line_marker.color.a = 1.0

        # 立方体 8 个顶点
        corners = [
            (cx - sx, cy - sy, cz - sz),
            (cx + sx, cy - sy, cz - sz),
            (cx + sx, cy + sy, cz - sz),
            (cx - sx, cy + sy, cz - sz),
            (cx - sx, cy - sy, cz + sz),
            (cx + sx, cy - sy, cz + sz),
            (cx + sx, cy + sy, cz + sz),
            (cx - sx, cy + sy, cz + sz),
        ]

        # 立方体 12 条边
        edges = [
            (0,1), (1,2), (2,3), (3,0),
            (4,5), (5,6), (6,7), (7,4),
            (0,4), (1,5), (2,6), (3,7)
        ]

        for i, j in edges:
            p1 = Point(x=corners[i][0], y=corners[i][1], z=corners[i][2])
            p2 = Point(x=corners[j][0], y=corners[j][1], z=corners[j][2])
            line_marker.points.append(p1)
            line_marker.points.append(p2)

        markers.markers.append(line_marker)

        # -------------------------
        # 2. 类别 + 置信度文字
        # -------------------------
        text_marker = Marker()
        text_marker.header = detection_msg.header
        text_marker.ns = "fusion_labels"
        text_marker.id = marker_id
        marker_id += 1

        text_marker.type = Marker.TEXT_VIEW_FACING
        text_marker.action = Marker.ADD

        text_marker.pose.position.x = cx
        text_marker.pose.position.y = cy
        text_marker.pose.position.z = cz + sz * 1.2

        text_marker.scale.z = 1.0

        # 文字颜色比线框更亮一点
        text_marker.color.r = min(r + 0.2, 1.0)
        text_marker.color.g = 0.0
        text_marker.color.b = 0.0
        text_marker.color.a = 1.0

        text_marker.text = f"{cls} ({score:.2f})"

        markers.markers.append(text_marker)

    return markers

