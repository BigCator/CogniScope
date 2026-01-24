;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::OdArray)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'OdArray (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::ODARRAY")
  (make-package "RADAR_MSGS::ODARRAY"))

(in-package "ROS")
;;//! \htmlinclude OdArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::OdArray
  :super ros::object
  :slots (_header _radarID _frameCnt _objNum _odArray ))

(defmethod radar_msgs::OdArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:objNum __objNum) 0)
    ((:odArray __odArray) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _objNum (round __objNum))
   (setq _odArray __odArray)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radarID
   (&optional __radarID)
   (if __radarID (setq _radarID __radarID)) _radarID)
  (:frameCnt
   (&optional __frameCnt)
   (if __frameCnt (setq _frameCnt __frameCnt)) _frameCnt)
  (:objNum
   (&optional __objNum)
   (if __objNum (setq _objNum __objNum)) _objNum)
  (:odArray
   (&rest __odArray)
   (if (keywordp (car __odArray))
       (send* _odArray __odArray)
     (progn
       (if __odArray (setq _odArray (car __odArray)))
       _odArray)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; uint32 _objNum
    4
    ;; radar_msgs/Od[] _odArray
    (apply #'+ (send-all _odArray :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _radarID
       (write-long _radarID s)
     ;; uint32 _frameCnt
       (write-long _frameCnt s)
     ;; uint32 _objNum
       (write-long _objNum s)
     ;; radar_msgs/Od[] _odArray
     (write-long (length _odArray) s)
     (dolist (elem _odArray)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _radarID
     (setq _radarID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frameCnt
     (setq _frameCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _objNum
     (setq _objNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; radar_msgs/Od[] _odArray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _odArray (let (r) (dotimes (i n) (push (instance radar_msgs::Od :init) r)) r))
     (dolist (elem- _odArray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get radar_msgs::OdArray :md5sum-) "efbe1652c996ab4b9be091c4010e6a53")
(setf (get radar_msgs::OdArray :datatype-) "radar_msgs/OdArray")
(setf (get radar_msgs::OdArray :definition-)
      "Header    header               # Includes measurement timestamp and coordinate frame.
uint32    radarID              # radar ID
uint32    frameCnt             # frame cnt in radar
uint32    objNum               # object number of this frame
Od[]      odArray              # array of tracking objects

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: radar_msgs/Od
# Header    header               # Includes measurement timestamp and coordinate frame.
uint32    object_ID            # object ID
uint16    age                  # total frames from the object occurs
uint8     measurement_status   # track status (0: measured; 1: new; 2: predicted)
uint8     motion_state         # movement state ( 0: static; 1: dynamic)
uint8     existance_confidence # existance confidence
geometry_msgs/Pose              pose #central position x, y, z; roll=0, pitch=0, yaw to quaternion
geometry_msgs/Vector3           dimensions #length, width, height
geometry_msgs/Twist             velocity
geometry_msgs/Twist             acceleration
geometry_msgs/Twist             v2ground #velocity towards ground of x, y, z orientation
geometry_msgs/Pose              pose_nearest #NearestPts x, y, z
uint8     type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)
uint8     car_confidence       # car confidence
uint8     bike_confidence      # bike confidence
uint8     ped_confidence       # pedestrian confidence
uint8     truck_confidence     # truck confidence
uint8     signboard_confidence # signboard confidence
uint8     ground_confidence    # ground confidence
uint8     obstacle_confidence  # obstacle confidence
float32   EnrollPtsNum         # EnrollPtsNum
float32   NearestPtsX          # NearestPtsX           
float32   NearestPtsY          # NearestPtsY
float32   NearestPtsZ          # NearestPtsZ
float32   Reserved_D  
uint32    Reserved_E          
uint32    Reserved_F           
int32     Reserved_G           
int32     Reserved_H    
uint16    Reserved_I   
uint16    Reserved_J    
int16     Reserved_K   
int16     Reserved_L 
uint8     Reserved_M  
uint8     Reserved_N    
string    Reserved_O
string    Reserved_P

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :radar_msgs/OdArray "efbe1652c996ab4b9be091c4010e6a53")


