; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlRecvdGpAdcData.msg.html

(cl:defclass <RlRecvdGpAdcData> (roslisp-msg-protocol:ros-message)
  ((sensor
    :reader sensor
    :initarg :sensor
    :type (cl:vector radar_msgs-msg:RlGpAdcData)
   :initform (cl:make-array 6 :element-type 'radar_msgs-msg:RlGpAdcData :initial-element (cl:make-instance 'radar_msgs-msg:RlGpAdcData)))
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type (cl:vector cl:integer)
   :initform (cl:make-array 7 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass RlRecvdGpAdcData (<RlRecvdGpAdcData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlRecvdGpAdcData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlRecvdGpAdcData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlRecvdGpAdcData> is deprecated: use radar_msgs-msg:RlRecvdGpAdcData instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <RlRecvdGpAdcData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensor-val is deprecated.  Use radar_msgs-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlRecvdGpAdcData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlRecvdGpAdcData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlRecvdGpAdcData>) ostream)
  "Serializes a message object of type '<RlRecvdGpAdcData>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sensor))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'reserved0))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'reserved1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlRecvdGpAdcData>) istream)
  "Deserializes a message object of type '<RlRecvdGpAdcData>"
  (cl:setf (cl:slot-value msg 'sensor) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'sensor)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlGpAdcData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reserved0) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'reserved0)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'reserved1) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'reserved1)))
    (cl:dotimes (i 7)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlRecvdGpAdcData>)))
  "Returns string type for a message object of type '<RlRecvdGpAdcData>"
  "radar_msgs/RlRecvdGpAdcData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlRecvdGpAdcData)))
  "Returns string type for a message object of type 'RlRecvdGpAdcData"
  "radar_msgs/RlRecvdGpAdcData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlRecvdGpAdcData>)))
  "Returns md5sum for a message object of type '<RlRecvdGpAdcData>"
  "c77259e6e9e4b7d6f098acf35b1c17dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlRecvdGpAdcData)))
  "Returns md5sum for a message object of type 'RlRecvdGpAdcData"
  "c77259e6e9e4b7d6f098acf35b1c17dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlRecvdGpAdcData>)))
  "Returns full string definition for message of type '<RlRecvdGpAdcData>"
  (cl:format cl:nil "RlGpAdcData[6]  sensor~%uint16[4]       reserved0~%uint32[7]       reserved1~%================================================================================~%MSG: radar_msgs/RlGpAdcData~%uint16 min~%uint16 max~%uint16 avg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlRecvdGpAdcData)))
  "Returns full string definition for message of type 'RlRecvdGpAdcData"
  (cl:format cl:nil "RlGpAdcData[6]  sensor~%uint16[4]       reserved0~%uint32[7]       reserved1~%================================================================================~%MSG: radar_msgs/RlGpAdcData~%uint16 min~%uint16 max~%uint16 avg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlRecvdGpAdcData>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'sensor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved0) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlRecvdGpAdcData>))
  "Converts a ROS message object to a list"
  (cl:list 'RlRecvdGpAdcData
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
