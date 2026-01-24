;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::TrackingObjArray)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'TrackingObjArray (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::TRACKINGOBJARRAY")
  (make-package "RADAR_MSGS::TRACKINGOBJARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrackingObjArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::TrackingObjArray
  :super ros::object
  :slots (_header _objNum _tracking_obj ))

(defmethod radar_msgs::TrackingObjArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objNum __objNum) 0)
    ((:tracking_obj __tracking_obj) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _objNum (round __objNum))
   (setq _tracking_obj __tracking_obj)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objNum
   (&optional __objNum)
   (if __objNum (setq _objNum __objNum)) _objNum)
  (:tracking_obj
   (&rest __tracking_obj)
   (if (keywordp (car __tracking_obj))
       (send* _tracking_obj __tracking_obj)
     (progn
       (if __tracking_obj (setq _tracking_obj (car __tracking_obj)))
       _tracking_obj)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _objNum
    4
    ;; radar_msgs/TrackingObj[] _tracking_obj
    (apply #'+ (send-all _tracking_obj :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _objNum
       (write-long _objNum s)
     ;; radar_msgs/TrackingObj[] _tracking_obj
     (write-long (length _tracking_obj) s)
     (dolist (elem _tracking_obj)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _objNum
     (setq _objNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; radar_msgs/TrackingObj[] _tracking_obj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracking_obj (let (r) (dotimes (i n) (push (instance radar_msgs::TrackingObj :init) r)) r))
     (dolist (elem- _tracking_obj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get radar_msgs::TrackingObjArray :md5sum-) "b34bff7537df64fb479e0b5fde04d870")
(setf (get radar_msgs::TrackingObjArray :datatype-) "radar_msgs/TrackingObjArray")
(setf (get radar_msgs::TrackingObjArray :definition-)
      "Header          header               # Includes measurement timestamp and coordinate frame.
int32           objNum               # quantity of objects
TrackingObj[]   tracking_obj         # array of tracking objects

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
MSG: radar_msgs/TrackingObj
Header    header               # Includes measurement timestamp and coordinate frame.
uint32    radarID              # radar ID
uint32    frameCnt             # frame cnt in radar
uint32    objNum               # object number of this frame
uint32[]  object_ID            # object ID
uint16[]  age                  # total frames from the object occurs
uint8[]   measurement_status   # track status (0: measured; 1: new; 2: predicted)
uint8[]   motion_state         # movement state ( 0: static; 1: dynamic)
uint8[]   existance_confidence # existance confidence
float32[] position_x           # x value of central point
float32[] position_y           # y value of central point
float32[] position_z           # z value of central point
float32[] velocity_x           # relative velocity of x orientation
float32[] velocity_y           # relative velocity of y orientation
float32[] velocity_z           # relative velocity of z orientation
float32[] acceleration_x       # relative acceleration of x orientation
float32[] acceleration_y       # relative acceleration of y orientation
float32[] acceleration_z       # relative acceleration of z orientation
float32[] v2ground_x           # velocity towards ground of x orientation
float32[] v2ground_y           # velocity towards ground of y orientation
float32[] v2ground_z           # velocity towards ground of z orientation
float32[] orientation          # yaw, unit: degree
uint8[]   type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)
uint8[]  car_confidence       # car confidence
uint8[]   bike_confidence      # bike confidence
uint8[]   ped_confidence       # pedestrian confidence
uint8[]   truck_confidence     # truck confidence
uint8[]   signboard_confidence # signboard confidence
uint8[]   ground_confidence    # ground confidence
uint8[]   obstacle_confidence  # obstacle confidence
float32[] length               # length
float32[] width                # width
float32[] height               # height
float32[] od_process_time      # EnrollPtsNum
float32[] Reserved_B           # NearestPtsX
float32[] Reserved_C           # NearestPtsY
float32[] Reserved_D           # NearestPtsZ

")



(provide :radar_msgs/TrackingObjArray "b34bff7537df64fb479e0b5fde04d870")


