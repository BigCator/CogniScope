;; Auto-generated. Do not edit!


(when (boundp 'gps_messages::gps_location)
  (if (not (find-package "GPS_MESSAGES"))
    (make-package "GPS_MESSAGES"))
  (shadow 'gps_location (find-package "GPS_MESSAGES")))
(unless (find-package "GPS_MESSAGES::GPS_LOCATION")
  (make-package "GPS_MESSAGES::GPS_LOCATION"))

(in-package "ROS")
;;//! \htmlinclude gps_location.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_messages::gps_location
  :super ros::object
  :slots (_header _lat _lon _alt _base_len _speed _heading _pitch _sat_cnt _loc_status ))

(defmethod gps_messages::gps_location
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:base_len __base_len) 0.0)
    ((:speed __speed) 0.0)
    ((:heading __heading) 0.0)
    ((:pitch __pitch) 0.0)
    ((:sat_cnt __sat_cnt) 0)
    ((:loc_status __loc_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _base_len (float __base_len))
   (setq _speed (float __speed))
   (setq _heading (float __heading))
   (setq _pitch (float __pitch))
   (setq _sat_cnt (round __sat_cnt))
   (setq _loc_status (round __loc_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:base_len
   (&optional __base_len)
   (if __base_len (setq _base_len __base_len)) _base_len)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:sat_cnt
   (&optional __sat_cnt)
   (if __sat_cnt (setq _sat_cnt __sat_cnt)) _sat_cnt)
  (:loc_status
   (&optional __loc_status)
   (if __loc_status (setq _loc_status __loc_status)) _loc_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float32 _alt
    4
    ;; float32 _base_len
    4
    ;; float32 _speed
    4
    ;; float32 _heading
    4
    ;; float32 _pitch
    4
    ;; int16 _sat_cnt
    2
    ;; int16 _loc_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _base_len
       (sys::poke _base_len (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _sat_cnt
       (write-word _sat_cnt s)
     ;; int16 _loc_status
       (write-word _loc_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _alt
     (setq _alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _base_len
     (setq _base_len (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _sat_cnt
     (setq _sat_cnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _loc_status
     (setq _loc_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get gps_messages::gps_location :md5sum-) "c1e913780530db1f5bf096ef8a11204a")
(setf (get gps_messages::gps_location :datatype-) "gps_messages/gps_location")
(setf (get gps_messages::gps_location :definition-)
      "std_msgs/Header header	#消息头	
float64 lat	#纬度	北纬，单位：度
float64 lon	#经度	东经，单位：度
float32 alt #高度   单位：m
float32 base_len #基线长度  单位：m
float32 speed	#速度	单位：km/h
float32 heading	#方向角	单位：度  真北坐标系
float32 pitch	#俯仰角	单位：度
int16 sat_cnt	#卫星数	
int16 loc_status	#定位状态: GPS状态， 0初始化， 1单点定位， 2码差分， 3无效PPS， 4固定解，
                      # 5浮点解， 6正在估算 7，人工输入固定值， 8模拟模式， 9WAAS差分

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



(provide :gps_messages/gps_location "c1e913780530db1f5bf096ef8a11204a")


