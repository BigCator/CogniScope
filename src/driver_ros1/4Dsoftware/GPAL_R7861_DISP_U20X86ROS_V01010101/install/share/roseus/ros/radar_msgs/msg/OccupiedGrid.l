;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::OccupiedGrid)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'OccupiedGrid (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::OCCUPIEDGRID")
  (make-package "RADAR_MSGS::OCCUPIEDGRID"))

(in-package "ROS")
;;//! \htmlinclude OccupiedGrid.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::OccupiedGrid
  :super ros::object
  :slots (_header _radarID _frameCnt _occupiedNum _grid_x_length _grid_y_length _grid_x _grid_y _reserved_a _reserved_b _reserved_c ))

(defmethod radar_msgs::OccupiedGrid
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:occupiedNum __occupiedNum) 0)
    ((:grid_x_length __grid_x_length) 0.0)
    ((:grid_y_length __grid_y_length) 0.0)
    ((:grid_x __grid_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:grid_y __grid_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reserved_a __reserved_a) 0.0)
    ((:reserved_b __reserved_b) 0.0)
    ((:reserved_c __reserved_c) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _occupiedNum (round __occupiedNum))
   (setq _grid_x_length (float __grid_x_length))
   (setq _grid_y_length (float __grid_y_length))
   (setq _grid_x __grid_x)
   (setq _grid_y __grid_y)
   (setq _reserved_a (float __reserved_a))
   (setq _reserved_b (float __reserved_b))
   (setq _reserved_c (float __reserved_c))
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
  (:occupiedNum
   (&optional __occupiedNum)
   (if __occupiedNum (setq _occupiedNum __occupiedNum)) _occupiedNum)
  (:grid_x_length
   (&optional __grid_x_length)
   (if __grid_x_length (setq _grid_x_length __grid_x_length)) _grid_x_length)
  (:grid_y_length
   (&optional __grid_y_length)
   (if __grid_y_length (setq _grid_y_length __grid_y_length)) _grid_y_length)
  (:grid_x
   (&optional __grid_x)
   (if __grid_x (setq _grid_x __grid_x)) _grid_x)
  (:grid_y
   (&optional __grid_y)
   (if __grid_y (setq _grid_y __grid_y)) _grid_y)
  (:reserved_a
   (&optional __reserved_a)
   (if __reserved_a (setq _reserved_a __reserved_a)) _reserved_a)
  (:reserved_b
   (&optional __reserved_b)
   (if __reserved_b (setq _reserved_b __reserved_b)) _reserved_b)
  (:reserved_c
   (&optional __reserved_c)
   (if __reserved_c (setq _reserved_c __reserved_c)) _reserved_c)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; uint32 _occupiedNum
    4
    ;; float32 _grid_x_length
    4
    ;; float32 _grid_y_length
    4
    ;; float32[] _grid_x
    (* 4    (length _grid_x)) 4
    ;; float32[] _grid_y
    (* 4    (length _grid_y)) 4
    ;; float32 _reserved_a
    4
    ;; float32 _reserved_b
    4
    ;; float32 _reserved_c
    4
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
     ;; uint32 _occupiedNum
       (write-long _occupiedNum s)
     ;; float32 _grid_x_length
       (sys::poke _grid_x_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _grid_y_length
       (sys::poke _grid_y_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _grid_x
     (write-long (length _grid_x) s)
     (dotimes (i (length _grid_x))
       (sys::poke (elt _grid_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _grid_y
     (write-long (length _grid_y) s)
     (dotimes (i (length _grid_y))
       (sys::poke (elt _grid_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _reserved_a
       (sys::poke _reserved_a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved_b
       (sys::poke _reserved_b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved_c
       (sys::poke _reserved_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint32 _occupiedNum
     (setq _occupiedNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _grid_x_length
     (setq _grid_x_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _grid_y_length
     (setq _grid_y_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _grid_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _grid_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _grid_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _grid_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _grid_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _grid_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _reserved_a
     (setq _reserved_a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved_b
     (setq _reserved_b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved_c
     (setq _reserved_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::OccupiedGrid :md5sum-) "fca44ea0183b5e4ef2b30eb2023b28ec")
(setf (get radar_msgs::OccupiedGrid :datatype-) "radar_msgs/OccupiedGrid")
(setf (get radar_msgs::OccupiedGrid :definition-)
      "Header header                   # Includes measurement timestamp and coordinate frame.
uint32 radarID                  # radar ID
uint32 frameCnt                 # frame cnt in radar
uint32 occupiedNum              # number of grid
float32 grid_x_length           # length of grid along x axis
float32 grid_y_length           # length of grid along y axis
float32[] grid_x                # Position x of grid, unit: m
float32[] grid_y                # Position y of grid, unit: m
float32 reserved_a
float32 reserved_b
float32 reserved_c
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

")



(provide :radar_msgs/OccupiedGrid "fca44ea0183b5e4ef2b30eb2023b28ec")


