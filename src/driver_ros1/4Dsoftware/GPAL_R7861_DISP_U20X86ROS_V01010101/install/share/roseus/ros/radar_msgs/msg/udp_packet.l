;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::udp_packet)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'udp_packet (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::UDP_PACKET")
  (make-package "RADAR_MSGS::UDP_PACKET"))

(in-package "ROS")
;;//! \htmlinclude udp_packet.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::udp_packet
  :super ros::object
  :slots (_header _data _dataLen ))

(defmethod radar_msgs::udp_packet
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 1600 :initial-element 0 :element-type :char))
    ((:dataLen __dataLen) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   (setq _dataLen (round __dataLen))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:dataLen
   (&optional __dataLen)
   (if __dataLen (setq _dataLen __dataLen)) _dataLen)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[1600] _data
    (* 1    1600)
    ;; uint32 _dataLen
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[1600] _data
     (princ _data s)
     ;; uint32 _dataLen
       (write-long _dataLen s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[1600] _data
   (setq _data (make-array 1600 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 1600)
   ;; uint32 _dataLen
     (setq _dataLen (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::udp_packet :md5sum-) "c035d121319ead0c0dff79b6eafe90f8")
(setf (get radar_msgs::udp_packet :datatype-) "radar_msgs/udp_packet")
(setf (get radar_msgs::udp_packet :definition-)
      "Header header
uint8[1600] data
uint32 dataLen
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



(provide :radar_msgs/udp_packet "c035d121319ead0c0dff79b6eafe90f8")


