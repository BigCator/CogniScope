; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemInfo.msg.html

(cl:defclass <SystemInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (productCode
    :reader productCode
    :initarg :productCode
    :type (cl:vector cl:integer)
   :initform (cl:make-array 16 :element-type 'cl:integer :initial-element 0))
   (productVersion
    :reader productVersion
    :initarg :productVersion
    :type (cl:vector cl:integer)
   :initform (cl:make-array 16 :element-type 'cl:integer :initial-element 0))
   (compileDate
    :reader compileDate
    :initarg :compileDate
    :type (cl:vector cl:integer)
   :initform (cl:make-array 12 :element-type 'cl:integer :initial-element 0))
   (compileTime
    :reader compileTime
    :initarg :compileTime
    :type (cl:vector cl:integer)
   :initform (cl:make-array 16 :element-type 'cl:integer :initial-element 0))
   (reserve
    :reader reserve
    :initarg :reserve
    :type (cl:vector cl:integer)
   :initform (cl:make-array 32 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SystemInfo (<SystemInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemInfo> is deprecated: use radar_msgs-msg:SystemInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'productCode-val :lambda-list '(m))
(cl:defmethod productCode-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:productCode-val is deprecated.  Use radar_msgs-msg:productCode instead.")
  (productCode m))

(cl:ensure-generic-function 'productVersion-val :lambda-list '(m))
(cl:defmethod productVersion-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:productVersion-val is deprecated.  Use radar_msgs-msg:productVersion instead.")
  (productVersion m))

(cl:ensure-generic-function 'compileDate-val :lambda-list '(m))
(cl:defmethod compileDate-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:compileDate-val is deprecated.  Use radar_msgs-msg:compileDate instead.")
  (compileDate m))

(cl:ensure-generic-function 'compileTime-val :lambda-list '(m))
(cl:defmethod compileTime-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:compileTime-val is deprecated.  Use radar_msgs-msg:compileTime instead.")
  (compileTime m))

(cl:ensure-generic-function 'reserve-val :lambda-list '(m))
(cl:defmethod reserve-val ((m <SystemInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserve-val is deprecated.  Use radar_msgs-msg:reserve instead.")
  (reserve m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemInfo>) ostream)
  "Serializes a message object of type '<SystemInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'productCode))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'productVersion))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'compileDate))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'compileTime))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserve))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemInfo>) istream)
  "Deserializes a message object of type '<SystemInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'productCode) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'productCode)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'productVersion) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'productVersion)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'compileDate) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'compileDate)))
    (cl:dotimes (i 12)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'compileTime) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'compileTime)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'reserve) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'reserve)))
    (cl:dotimes (i 32)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemInfo>)))
  "Returns string type for a message object of type '<SystemInfo>"
  "radar_msgs/SystemInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemInfo)))
  "Returns string type for a message object of type 'SystemInfo"
  "radar_msgs/SystemInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemInfo>)))
  "Returns md5sum for a message object of type '<SystemInfo>"
  "2bef89192e7f73b8458e893ef8d30db1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemInfo)))
  "Returns md5sum for a message object of type 'SystemInfo"
  "2bef89192e7f73b8458e893ef8d30db1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemInfo>)))
  "Returns full string definition for message of type '<SystemInfo>"
  (cl:format cl:nil "Header header               # Includes measurement timestamp and coordinate frame.~%char[16] productCode            # productCode~%char[16] productVersion         # productVersion~%char[12] compileDate            # compileDate~%char[16] compileTime            # compileTime~%char[32] reserve                # reserve   ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemInfo)))
  "Returns full string definition for message of type 'SystemInfo"
  (cl:format cl:nil "Header header               # Includes measurement timestamp and coordinate frame.~%char[16] productCode            # productCode~%char[16] productVersion         # productVersion~%char[12] compileDate            # compileDate~%char[16] compileTime            # compileTime~%char[32] reserve                # reserve   ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'productCode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'productVersion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'compileDate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'compileTime) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserve) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemInfo
    (cl:cons ':header (header msg))
    (cl:cons ':productCode (productCode msg))
    (cl:cons ':productVersion (productVersion msg))
    (cl:cons ':compileDate (compileDate msg))
    (cl:cons ':compileTime (compileTime msg))
    (cl:cons ':reserve (reserve msg))
))
