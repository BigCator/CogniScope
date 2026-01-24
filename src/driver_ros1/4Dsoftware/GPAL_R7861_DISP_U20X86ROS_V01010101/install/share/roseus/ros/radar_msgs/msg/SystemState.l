;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemState)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemState (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMSTATE")
  (make-package "RADAR_MSGS::SYSTEMSTATE"))

(in-package "ROS")
;;//! \htmlinclude SystemState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::SystemState
  :super ros::object
  :slots (_header _temp _voltage _freq _load _primaryHeap _heapArr _ptpData ))

(defmethod radar_msgs::SystemState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temp __temp) (let (r) (dotimes (i 5) (push (instance radar_msgs::SystemStateTemp :init) r)) r))
    ((:voltage __voltage) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:freq __freq) (make-array 10 :initial-element 0 :element-type :integer))
    ((:load __load) (let (r) (dotimes (i 10) (push (instance radar_msgs::SystemStatsLoad :init) r)) r))
    ((:primaryHeap __primaryHeap) (let (r) (dotimes (i 4) (push (instance radar_msgs::SystemStatsheap :init) r)) r))
    ((:heapArr __heapArr) (let (r) (dotimes (i 9) (push (instance radar_msgs::SystemStatsheapArr :init) r)) r))
    ((:ptpData __ptpData) (instance radar_msgs::SystemStatePtpData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _temp __temp)
   (setq _voltage __voltage)
   (setq _freq __freq)
   (setq _load __load)
   (setq _primaryHeap __primaryHeap)
   (setq _heapArr __heapArr)
   (setq _ptpData __ptpData)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temp
   (&rest __temp)
   (if (keywordp (car __temp))
       (send* _temp __temp)
     (progn
       (if __temp (setq _temp (car __temp)))
       _temp)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:load
   (&rest __load)
   (if (keywordp (car __load))
       (send* _load __load)
     (progn
       (if __load (setq _load (car __load)))
       _load)))
  (:primaryHeap
   (&rest __primaryHeap)
   (if (keywordp (car __primaryHeap))
       (send* _primaryHeap __primaryHeap)
     (progn
       (if __primaryHeap (setq _primaryHeap (car __primaryHeap)))
       _primaryHeap)))
  (:heapArr
   (&rest __heapArr)
   (if (keywordp (car __heapArr))
       (send* _heapArr __heapArr)
     (progn
       (if __heapArr (setq _heapArr (car __heapArr)))
       _heapArr)))
  (:ptpData
   (&rest __ptpData)
   (if (keywordp (car __ptpData))
       (send* _ptpData __ptpData)
     (progn
       (if __ptpData (setq _ptpData (car __ptpData)))
       _ptpData)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; radar_msgs/SystemStateTemp[5] _temp
    (apply #'+ (send-all _temp :serialization-length))
    ;; float32[5] _voltage
    (* 4    5)
    ;; uint32[10] _freq
    (* 4    10)
    ;; radar_msgs/SystemStatsLoad[10] _load
    (apply #'+ (send-all _load :serialization-length))
    ;; radar_msgs/SystemStatsheap[4] _primaryHeap
    (apply #'+ (send-all _primaryHeap :serialization-length))
    ;; radar_msgs/SystemStatsheapArr[9] _heapArr
    (apply #'+ (send-all _heapArr :serialization-length))
    ;; radar_msgs/SystemStatePtpData _ptpData
    (send _ptpData :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; radar_msgs/SystemStateTemp[5] _temp
     (dolist (elem _temp)
       (send elem :serialize s)
       )
     ;; float32[5] _voltage
     (dotimes (i 5)
       (sys::poke (elt _voltage i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32[10] _freq
     (dotimes (i 10)
       (write-long (elt _freq i) s)
       )
     ;; radar_msgs/SystemStatsLoad[10] _load
     (dolist (elem _load)
       (send elem :serialize s)
       )
     ;; radar_msgs/SystemStatsheap[4] _primaryHeap
     (dolist (elem _primaryHeap)
       (send elem :serialize s)
       )
     ;; radar_msgs/SystemStatsheapArr[9] _heapArr
     (dolist (elem _heapArr)
       (send elem :serialize s)
       )
     ;; radar_msgs/SystemStatePtpData _ptpData
       (send _ptpData :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; radar_msgs/SystemStateTemp[5] _temp
   (dotimes (i 5)
     (send (elt _temp i) :deserialize buf ptr-) (incf ptr- (send (elt _temp i) :serialization-length))
     )
   ;; float32[5] _voltage
   (dotimes (i (length _voltage))
     (setf (elt _voltage i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint32[10] _freq
   (dotimes (i (length _freq))
     (setf (elt _freq i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; radar_msgs/SystemStatsLoad[10] _load
   (dotimes (i 10)
     (send (elt _load i) :deserialize buf ptr-) (incf ptr- (send (elt _load i) :serialization-length))
     )
   ;; radar_msgs/SystemStatsheap[4] _primaryHeap
   (dotimes (i 4)
     (send (elt _primaryHeap i) :deserialize buf ptr-) (incf ptr- (send (elt _primaryHeap i) :serialization-length))
     )
   ;; radar_msgs/SystemStatsheapArr[9] _heapArr
   (dotimes (i 9)
     (send (elt _heapArr i) :deserialize buf ptr-) (incf ptr- (send (elt _heapArr i) :serialization-length))
     )
   ;; radar_msgs/SystemStatePtpData _ptpData
     (send _ptpData :deserialize buf ptr-) (incf ptr- (send _ptpData :serialization-length))
   ;;
   self)
  )

(setf (get radar_msgs::SystemState :md5sum-) "a5978883698c7e6acd84df055f3a66fc")
(setf (get radar_msgs::SystemState :datatype-) "radar_msgs/SystemState")
(setf (get radar_msgs::SystemState :definition-)
      "Header                      header  # Includes measurement timestamp and coordinate frame.
SystemStateTemp[5]          temp
float32[5]                  voltage
uint32[10]                  freq
SystemStatsLoad[10]         load
SystemStatsheap[4]          primaryHeap
SystemStatsheapArr[9]       heapArr
SystemStatePtpData          ptpData
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
MSG: radar_msgs/SystemStateTemp
# Header header               # Includes measurement timestamp and coordinate frame.
float32       minTemp
float32       maxTemp
================================================================================
MSG: radar_msgs/SystemStatsLoad
# Header header               # Includes measurement timestamp and coordinate frame.
# uint32      integerValue
# uint32      fractionalValue
float32     loadValue
================================================================================
MSG: radar_msgs/SystemStatsheap
# Header header               # Includes measurement timestamp and coordinate frame.
uint32       heapSize
uint32       freeSize
================================================================================
MSG: radar_msgs/SystemStatsheapArr
# Header header           # Includes measurement timestamp and coordinate frame.
SystemStatsheap[2]     heap
================================================================================
MSG: radar_msgs/SystemStatePtpData
uint32      reserved
uint32      ptp_counter_flg
uint32      pulse_count
uint32      ptp_sec_counter
uint32      ptp_nsec
uint64      ptp_follow_sec
uint64      ptp_sec_counter_all
")



(provide :radar_msgs/SystemState "a5978883698c7e6acd84df055f3a66fc")


