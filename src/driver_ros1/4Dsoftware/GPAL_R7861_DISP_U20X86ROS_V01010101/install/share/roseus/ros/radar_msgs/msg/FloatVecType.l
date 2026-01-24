;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::FloatVecType)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'FloatVecType (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::FLOATVECTYPE")
  (make-package "RADAR_MSGS::FLOATVECTYPE"))

(in-package "ROS")
;;//! \htmlinclude FloatVecType.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::FloatVecType
  :super ros::object
  :slots (_header _width _height _frameID _cfarCount _cfarObj _data ))

(defmethod radar_msgs::FloatVecType
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:width __width) 0)
    ((:height __height) 0)
    ((:frameID __frameID) 0)
    ((:cfarCount __cfarCount) 0)
    ((:cfarObj __cfarObj) (make-array 0 :initial-element 0 :element-type :integer))
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _frameID (round __frameID))
   (setq _cfarCount (round __cfarCount))
   (setq _cfarObj __cfarObj)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:frameID
   (&optional __frameID)
   (if __frameID (setq _frameID __frameID)) _frameID)
  (:cfarCount
   (&optional __cfarCount)
   (if __cfarCount (setq _cfarCount __cfarCount)) _cfarCount)
  (:cfarObj
   (&optional __cfarObj)
   (if __cfarObj (setq _cfarObj __cfarObj)) _cfarObj)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; uint32 _frameID
    4
    ;; uint32 _cfarCount
    4
    ;; uint16[] _cfarObj
    (* 2    (length _cfarObj)) 4
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; uint32 _frameID
       (write-long _frameID s)
     ;; uint32 _cfarCount
       (write-long _cfarCount s)
     ;; uint16[] _cfarObj
     (write-long (length _cfarObj) s)
     (dotimes (i (length _cfarObj))
       (write-word (elt _cfarObj i) s)
       )
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frameID
     (setq _frameID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cfarCount
     (setq _cfarCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16[] _cfarObj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cfarObj (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cfarObj i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get radar_msgs::FloatVecType :md5sum-) "158c8739358cbaf79a1f129713cd7329")
(setf (get radar_msgs::FloatVecType :datatype-) "radar_msgs/FloatVecType")
(setf (get radar_msgs::FloatVecType :definition-)
      "Header header           # Includes measurement timestamp and coordinate frame.
uint32 width
uint32 height
uint32 frameID
uint32 cfarCount
uint16[] cfarObj
float32[] data           # target snr
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



(provide :radar_msgs/FloatVecType "158c8739358cbaf79a1f129713cd7329")


