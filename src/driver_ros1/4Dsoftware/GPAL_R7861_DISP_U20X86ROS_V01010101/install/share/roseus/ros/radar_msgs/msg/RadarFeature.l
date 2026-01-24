;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RadarFeature)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RadarFeature (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RADARFEATURE")
  (make-package "RADAR_MSGS::RADARFEATURE"))

(in-package "ROS")
;;//! \htmlinclude RadarFeature.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::RadarFeature
  :super ros::object
  :slots (_header _targetNum _d _v _azimuth ))

(defmethod radar_msgs::RadarFeature
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:targetNum __targetNum) 0)
    ((:d __d) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:azimuth __azimuth) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _targetNum (round __targetNum))
   (setq _d __d)
   (setq _v __v)
   (setq _azimuth __azimuth)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:targetNum
   (&optional __targetNum)
   (if __targetNum (setq _targetNum __targetNum)) _targetNum)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _targetNum
    4
    ;; float32[] _d
    (* 4    (length _d)) 4
    ;; float32[] _v
    (* 4    (length _v)) 4
    ;; float32[] _azimuth
    (* 4    (length _azimuth)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _targetNum
       (write-long _targetNum s)
     ;; float32[] _d
     (write-long (length _d) s)
     (dotimes (i (length _d))
       (sys::poke (elt _d i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v
     (write-long (length _v) s)
     (dotimes (i (length _v))
       (sys::poke (elt _v i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _azimuth
     (write-long (length _azimuth) s)
     (dotimes (i (length _azimuth))
       (sys::poke (elt _azimuth i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _targetNum
     (setq _targetNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _azimuth
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _azimuth (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _azimuth i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get radar_msgs::RadarFeature :md5sum-) "f7ad55b5738dc6964897be14d4580716")
(setf (get radar_msgs::RadarFeature :datatype-) "radar_msgs/RadarFeature")
(setf (get radar_msgs::RadarFeature :definition-)
      "Header header           # Includes measurement timestamp and coordinate frame.
uint32 targetNum        # targets Num
float32[] d             # distance
float32[] v             # target velocity
float32[] azimuth            # target azimuth

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



(provide :radar_msgs/RadarFeature "f7ad55b5738dc6964897be14d4580716")


