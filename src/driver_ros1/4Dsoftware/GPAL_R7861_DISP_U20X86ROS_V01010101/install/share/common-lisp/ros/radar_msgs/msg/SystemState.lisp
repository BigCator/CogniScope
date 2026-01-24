; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemState.msg.html

(cl:defclass <SystemState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temp
    :reader temp
    :initarg :temp
    :type (cl:vector radar_msgs-msg:SystemStateTemp)
   :initform (cl:make-array 5 :element-type 'radar_msgs-msg:SystemStateTemp :initial-element (cl:make-instance 'radar_msgs-msg:SystemStateTemp)))
   (voltage
    :reader voltage
    :initarg :voltage
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (freq
    :reader freq
    :initarg :freq
    :type (cl:vector cl:integer)
   :initform (cl:make-array 10 :element-type 'cl:integer :initial-element 0))
   (load
    :reader load
    :initarg :load
    :type (cl:vector radar_msgs-msg:SystemStatsLoad)
   :initform (cl:make-array 10 :element-type 'radar_msgs-msg:SystemStatsLoad :initial-element (cl:make-instance 'radar_msgs-msg:SystemStatsLoad)))
   (primaryHeap
    :reader primaryHeap
    :initarg :primaryHeap
    :type (cl:vector radar_msgs-msg:SystemStatsheap)
   :initform (cl:make-array 4 :element-type 'radar_msgs-msg:SystemStatsheap :initial-element (cl:make-instance 'radar_msgs-msg:SystemStatsheap)))
   (heapArr
    :reader heapArr
    :initarg :heapArr
    :type (cl:vector radar_msgs-msg:SystemStatsheapArr)
   :initform (cl:make-array 9 :element-type 'radar_msgs-msg:SystemStatsheapArr :initial-element (cl:make-instance 'radar_msgs-msg:SystemStatsheapArr)))
   (ptpData
    :reader ptpData
    :initarg :ptpData
    :type radar_msgs-msg:SystemStatePtpData
    :initform (cl:make-instance 'radar_msgs-msg:SystemStatePtpData)))
)

(cl:defclass SystemState (<SystemState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemState> is deprecated: use radar_msgs-msg:SystemState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:temp-val is deprecated.  Use radar_msgs-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:voltage-val is deprecated.  Use radar_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:freq-val is deprecated.  Use radar_msgs-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'load-val :lambda-list '(m))
(cl:defmethod load-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:load-val is deprecated.  Use radar_msgs-msg:load instead.")
  (load m))

(cl:ensure-generic-function 'primaryHeap-val :lambda-list '(m))
(cl:defmethod primaryHeap-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:primaryHeap-val is deprecated.  Use radar_msgs-msg:primaryHeap instead.")
  (primaryHeap m))

(cl:ensure-generic-function 'heapArr-val :lambda-list '(m))
(cl:defmethod heapArr-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:heapArr-val is deprecated.  Use radar_msgs-msg:heapArr instead.")
  (heapArr m))

(cl:ensure-generic-function 'ptpData-val :lambda-list '(m))
(cl:defmethod ptpData-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ptpData-val is deprecated.  Use radar_msgs-msg:ptpData instead.")
  (ptpData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemState>) ostream)
  "Serializes a message object of type '<SystemState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'temp))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'voltage))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'freq))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'load))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'primaryHeap))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'heapArr))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ptpData) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemState>) istream)
  "Deserializes a message object of type '<SystemState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'temp) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'temp)))
    (cl:dotimes (i 5)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:SystemStateTemp))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'voltage) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'voltage)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'freq) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'freq)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'load) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'load)))
    (cl:dotimes (i 10)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:SystemStatsLoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'primaryHeap) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'primaryHeap)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:SystemStatsheap))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'heapArr) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'heapArr)))
    (cl:dotimes (i 9)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:SystemStatsheapArr))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ptpData) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemState>)))
  "Returns string type for a message object of type '<SystemState>"
  "radar_msgs/SystemState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemState)))
  "Returns string type for a message object of type 'SystemState"
  "radar_msgs/SystemState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemState>)))
  "Returns md5sum for a message object of type '<SystemState>"
  "a5978883698c7e6acd84df055f3a66fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemState)))
  "Returns md5sum for a message object of type 'SystemState"
  "a5978883698c7e6acd84df055f3a66fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemState>)))
  "Returns full string definition for message of type '<SystemState>"
  (cl:format cl:nil "Header                      header  # Includes measurement timestamp and coordinate frame.~%SystemStateTemp[5]          temp~%float32[5]                  voltage~%uint32[10]                  freq~%SystemStatsLoad[10]         load~%SystemStatsheap[4]          primaryHeap~%SystemStatsheapArr[9]       heapArr~%SystemStatePtpData          ptpData~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/SystemStateTemp~%# Header header               # Includes measurement timestamp and coordinate frame.~%float32       minTemp~%float32       maxTemp~%================================================================================~%MSG: radar_msgs/SystemStatsLoad~%# Header header               # Includes measurement timestamp and coordinate frame.~%# uint32      integerValue~%# uint32      fractionalValue~%float32     loadValue~%================================================================================~%MSG: radar_msgs/SystemStatsheap~%# Header header               # Includes measurement timestamp and coordinate frame.~%uint32       heapSize~%uint32       freeSize~%================================================================================~%MSG: radar_msgs/SystemStatsheapArr~%# Header header           # Includes measurement timestamp and coordinate frame.~%SystemStatsheap[2]     heap~%================================================================================~%MSG: radar_msgs/SystemStatePtpData~%uint32      reserved~%uint32      ptp_counter_flg~%uint32      pulse_count~%uint32      ptp_sec_counter~%uint32      ptp_nsec~%uint64      ptp_follow_sec~%uint64      ptp_sec_counter_all~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemState)))
  "Returns full string definition for message of type 'SystemState"
  (cl:format cl:nil "Header                      header  # Includes measurement timestamp and coordinate frame.~%SystemStateTemp[5]          temp~%float32[5]                  voltage~%uint32[10]                  freq~%SystemStatsLoad[10]         load~%SystemStatsheap[4]          primaryHeap~%SystemStatsheapArr[9]       heapArr~%SystemStatePtpData          ptpData~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/SystemStateTemp~%# Header header               # Includes measurement timestamp and coordinate frame.~%float32       minTemp~%float32       maxTemp~%================================================================================~%MSG: radar_msgs/SystemStatsLoad~%# Header header               # Includes measurement timestamp and coordinate frame.~%# uint32      integerValue~%# uint32      fractionalValue~%float32     loadValue~%================================================================================~%MSG: radar_msgs/SystemStatsheap~%# Header header               # Includes measurement timestamp and coordinate frame.~%uint32       heapSize~%uint32       freeSize~%================================================================================~%MSG: radar_msgs/SystemStatsheapArr~%# Header header           # Includes measurement timestamp and coordinate frame.~%SystemStatsheap[2]     heap~%================================================================================~%MSG: radar_msgs/SystemStatePtpData~%uint32      reserved~%uint32      ptp_counter_flg~%uint32      pulse_count~%uint32      ptp_sec_counter~%uint32      ptp_nsec~%uint64      ptp_follow_sec~%uint64      ptp_sec_counter_all~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'temp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'freq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'load) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'primaryHeap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'heapArr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ptpData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemState>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemState
    (cl:cons ':header (header msg))
    (cl:cons ':temp (temp msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':freq (freq msg))
    (cl:cons ':load (load msg))
    (cl:cons ':primaryHeap (primaryHeap msg))
    (cl:cons ':heapArr (heapArr msg))
    (cl:cons ':ptpData (ptpData msg))
))
