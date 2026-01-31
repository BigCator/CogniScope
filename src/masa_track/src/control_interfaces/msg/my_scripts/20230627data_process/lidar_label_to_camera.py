import numpy as np
import json
import os
import cv2
from shapely.geometry import MultiPoint, box


def draw_3D_bbox(img, corners, color):
    '''根据前左下、前左上、前右下、前右上、后左下...的八个角点绘制3D bbox
    '''
    cv2.line(img, corners[0], corners[1], color, 2) 
    cv2.line(img, corners[1], corners[3], color, 2)
    cv2.line(img, corners[2], corners[3], color, 2) 
    cv2.line(img, corners[2], corners[0], color, 2)

    cv2.line(img, corners[4], corners[5], color, 2)
    cv2.line(img, corners[5], corners[7], color, 2) 
    cv2.line(img, corners[6], corners[7], color, 2)
    cv2.line(img, corners[6], corners[4], color, 2)

    cv2.line(img, corners[0], corners[4], color, 2)
    cv2.line(img, corners[1], corners[5], color, 2)
    cv2.line(img, corners[2], corners[6], color, 2)
    cv2.line(img, corners[3], corners[7], color, 2)


def draw_2D_bbox(img, corners, color):
    '''根据左上、右上、左下、右下的四个角点绘制2D bbox
    '''
    cv2.line(img, corners[0], corners[1], color, 2) 
    cv2.line(img, corners[1], corners[3], color, 2)
    cv2.line(img, corners[2], corners[3], color, 2) 
    cv2.line(img, corners[2], corners[0], color, 2)


def post_process_coords(corner_coords, imsize):
    '''将3D bbox转化为2D bbox \n
    输入：左上、右上、左下、右下的四个角点 \n
         2D图像的尺寸 \n
    输出：(min_x, min_y, max_x, max_y)
    '''
    polygon_from_2d_box = MultiPoint(corner_coords).convex_hull  # 多边形
    img_canvas = box(0, 0, imsize[0], imsize[1])  # 图像的画布 box（minx,miny,maxx,maxy）左上右下

    if polygon_from_2d_box.intersects(img_canvas):  # 如果相交
        img_intersection = polygon_from_2d_box.intersection(img_canvas)
        intersection_coords = np.array([coord for coord in img_intersection.exterior.coords])

        min_x = int(min(intersection_coords[:, 0]))
        min_y = int(min(intersection_coords[:, 1]))
        max_x = int(max(intersection_coords[:, 0]))
        max_y = int(max(intersection_coords[:, 1]))

        return (min_x, min_y, max_x, max_y)
    else:
        return None
    

def radar2carmera(radar_frame, extrinsic, intrinsic, img_size):
    '''将点云上3Dbbox的标注 根据相机内外参转化为 图像上2Dbbox \n
        输入：点云帧、相机外参、相机内参、图像宽高 \n
        输出：包含2D bbox (min_x, min_y, max_x, max_y) 的点云帧
    '''
    # img = cv2.imread('0.png') 
    # img_2d = cv2.imread('0.png') 

    # radar_frame_with_2DBox = radar_frame
    for obj in radar_frame:
        type = obj['obj_type']
        center = obj['psr']['position']
        scale = obj['psr']['scale']
        front_left_down = np.array([center['x'] - scale['x']/2, 
                                    center['y'] - scale['y']/2, 
                                    center['z'] - scale['z']/2])
        front_left_up = np.array([center['x'] - scale['x']/2, 
                                    center['y'] - scale['y']/2, 
                                    center['z'] + scale['z']/2])
        front_right_down = np.array([center['x'] - scale['x']/2, 
                                    center['y'] + scale['y']/2, 
                                    center['z'] - scale['z']/2])
        front_right_up = np.array([center['x'] - scale['x']/2, 
                                    center['y'] + scale['y']/2, 
                                    center['z'] + scale['z']/2])
        behind_left_down = np.array([center['x'] + scale['x']/2, 
                                    center['y'] - scale['y']/2, 
                                    center['z'] - scale['z']/2])
        behind_left_up = np.array([center['x'] + scale['x']/2, 
                                    center['y'] - scale['y']/2, 
                                    center['z'] + scale['z']/2])
        behind_right_down = np.array([center['x'] + scale['x']/2, 
                                    center['y'] + scale['y']/2, 
                                    center['z'] - scale['z']/2])
        behind_right_up = np.array([center['x'] + scale['x']/2, 
                                    center['y'] + scale['y']/2, 
                                    center['z'] + scale['z']/2])
        corner_points = [front_left_down, front_left_up, front_right_down, front_right_up, 
                         behind_left_down, behind_left_up, behind_right_down, behind_right_up]
        cam_points = []
        for point in corner_points:
            point = np.append(point, 1) #4,1
            extrinsic = extrinsic[:3, :] # 3,4
            result_0 = np.dot(extrinsic, point) #3,1
            result_1 = np.dot(intrinsic, result_0)
            result_2 = result_1 / result_1[-1]
            cam_points.append(result_2[:2].astype(np.int32))
    
        # color_list = [(255,0,0), (0,255,0), (0,0,255), (128,128,0), (0,128,128), (128,128,128), (55,55,128)]
        # i = 0
        # breakpoint()
        # 绘制3D bbox
        # draw_3D_bbox(img, cam_points, color_list[i]) 
        # cv2.imwrite('1.png',img)

        # 3D bbox转化为2D bbox
        bbox_2d = post_process_coords(cam_points, img_size)
        obj['2d_bbox'] = bbox_2d
        # 绘制2D bbox
        # corners_2d = [(bbox_2d[0], bbox_2d[1]), (bbox_2d[2], bbox_2d[1]),
        #          (bbox_2d[0], bbox_2d[3]), (bbox_2d[2], bbox_2d[3])]
        # draw_2D_bbox(img_2d, corners_2d, color_list[i]) 
        # cv2.imwrite('2.png',img_2d)

    return radar_frame

def write_to_kitti_label(raw_label, raw_path):
    '''将自采数据的标注转化为kitti格式
    '''
    new_path = raw_path.replace('label', 'label_kitti').replace('json', 'txt')
    folder_path = os.path.dirname(new_path)
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)
    with open(new_path, 'w', encoding='utf-8') as f:
        for obj in raw_label:
            if obj['2d_bbox'] is None:
                continue
            type = str(obj['obj_type']) + ' '
            turncated = str(0.00) + ' '
            occluded = str(0) + ' '
            alpha = str(obj['psr']['rotation']['z']) + ' '
            x1 = str(obj['2d_bbox'][0]) + ' '
            y1 = str(obj['2d_bbox'][1]) + ' '
            x2 = str(obj['2d_bbox'][2]) + ' '
            y2 = str(obj['2d_bbox'][3]) + ' '
            h = str(obj['psr']['scale']['z']) + ' '
            w = str(obj['psr']['scale']['y']) + ' '
            l = str(obj['psr']['scale']['x']) + ' '
            x = str(obj['psr']['position']['x']) + ' '
            y = str(obj['psr']['position']['y']) + ' '
            z = str(max(obj['psr']['position']['z'] - obj['psr']['scale']['z']/2, 0)) + ' '
            R_y = str(obj['psr']['rotation']['y']) + ' '

            f.write(type + turncated +  occluded + alpha + 
                    x1 + y1 + x2 + y2 + h + w + l + x + y + z + R_y + '\n')


def main():

    folder_path = 'Sequence03-06_sync/label'
    img_size = (1280, 720)
    extrinsic = np.array([
        [0.00210908, -0.999996, -0.00196812, -0.000236174],
        [0.00671368,  0.00198211, -0.999975, -0.039997],
        [0.999976, 0.00209588, 0.00671772, 0.000806126],
        [0, 0, 0, 1]])

    intrinsic = np.array([
        [6.4367089874925102e+02, 0.0, 6.3134981290491908e+02],
        [0.0, 6.4354259444006982e+02, 3.6731040913213513e+02],
        [0.0, 0.0, 1.0]
    ])

    filepath_list = []
    for filename in os.listdir(folder_path):
        if filename.endswith('.json'):
            filepath = os.path.join(folder_path, filename)
            filepath_list.append(filepath)

    empty_frames = []
    for path in filepath_list:
        with open(path, 'r') as f:
            radar_frame = json.load(f)
            if len(radar_frame) == 0:
                empty_frames.append(path)
            if len(radar_frame) > 0:
                radar_frame_with2D = radar2carmera(radar_frame, extrinsic, intrinsic, img_size)
                write_to_kitti_label(radar_frame_with2D, path)

    for frame_label in empty_frames:
        cam_dir= os.path.dirname(frame_label).replace('label', 'camera/front')
        frame_name = os.path.basename(frame_label).replace('json', 'png')
        empty_frame_dir = cam_dir.replace('camera', 'camera_no_label_frames')
        if not os.path.exists(empty_frame_dir):
            os.makedirs(empty_frame_dir)
        frame = os.path.join(cam_dir, frame_name)
        move_to_frame = os.path.join(empty_frame_dir, frame_name)
        os.rename(frame, move_to_frame)
        


if __name__ == '__main__':
    main()