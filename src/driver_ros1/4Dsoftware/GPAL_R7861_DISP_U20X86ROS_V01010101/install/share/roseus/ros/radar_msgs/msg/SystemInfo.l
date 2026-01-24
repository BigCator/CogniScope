;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemInfo)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemInfo (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMINFO")
  (make-package "RADAR_MSGS::SYSTEMINFO"))

(in-package "ROS")
;;//! \htmlinclude SystemInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::SystemInfo
  :super ros::object
  :slots (_header _productCode _productVersion _compileDate _compileTime _reserve ))

(defmethod radar_msgs::SystemInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:productCode __productCode) (make-array 16 :initial-element 0 :element-type :integer))
    ((:productVersion __productVersion) (make-array 16 :initial-element 0 :element-type :integer))
    ((:compileDate __compileDate) (make-array 12 :initial-element 0 :element-type :integer))
    ((:compileTime __compileTime) (make-array 16 :initial-element 0 :element-type :integer))
    ((:reserve __reserve) (make-array 32 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _productCode __productCode)
   (setq _productVersion __productVersion)
   (setq _compileDate __compileDate)
   (setq _compileTime __compileTime)
   (setq _reserve __reserve)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:productCode
   (&optional __productCode)
   (if __productCode (setq _productCode __productCode)) _productCode)
  (:productVersion
   (&optional __productVersion)
   (if __productVersion (setq _productVersion __productVersion)) _productVersion)
  (:compileDate
   (&optional __compileDate)
   (if __compileDate (setq _compileDate __compileDate)) _compileDate)
  (:compileTime
   (&optional __compileTime)
   (if __compileTime (setq _compileTime __compileTime)) _compileTime)
  (:reserve
   (&optional __reserve)
   (if __reserve (setq _reserve __reserve)) _reserve)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; char[16] _productCode
    (* 1    16)
    ;; char[16] _productVersion
    (* 1    16)
    ;; char[12] _compileDate
    (* 1    12)
    ;; char[16] _compileTime
    (* 1    16)
    ;; char[32] _reserve
    (* 1    32)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; char[16] _productCode
     (dotimes (i 16)
       (write-byte (elt _productCode i) s)
       )
     ;; char[16] _productVersion
     (dotimes (i 16)
       (write-byte (elt _productVersion i) s)
       )
     ;; char[12] _compileDate
     (dotimes (i 12)
       (write-byte (elt _compileDate i) s)
       )
     ;; char[16] _compileTime
     (dotimes (i 16)
       (write-byte (elt _compileTime i) s)
       )
     ;; char[32] _reserve
     (dotimes (i 32)
       (write-byte (elt _reserve i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; char[16] _productCode
   (dotimes (i (length _productCode))
     (setf (elt _productCode i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[16] _productVersion
   (dotimes (i (length _productVersion))
     (setf (elt _productVersion i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[12] _compileDate
   (dotimes (i (length _compileDate))
     (setf (elt _compileDate i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[16] _compileTime
   (dotimes (i (length _compileTime))
     (setf (elt _compileTime i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[32] _reserve
   (dotimes (i (length _reserve))
     (setf (elt _reserve i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get radar_msgs::SystemInfo :md5sum-) "2bef89192e7f73b8458e893ef8d30db1")
(setf (get radar_msgs::SystemInfo :datatype-) "radar_msgs/SystemInfo")
(setf (get radar_msgs::SystemInfo :definition-)
      "Header header               # Includes measurement timestamp and coordinate frame.
char[16] productCode            # productCode
char[16] productVersion         # productVersion
char[12] compileDate            # compileDate
char[16] compileTime            # compileTime
char[32] reserve                # reserve   
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



(provide :radar_msgs/SystemInfo "2bef89192e7f73b8458e893ef8d30db1")


