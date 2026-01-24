; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlAnalogFaultReportData.msg.html

(cl:defclass <RlAnalogFaultReportData> (roslisp-msg-protocol:ros-message)
  ((faultType
    :reader faultType
    :initarg :faultType
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (faultSig
    :reader faultSig
    :initarg :faultSig
    :type cl:integer
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:integer
    :initform 0))
)

(cl:defclass RlAnalogFaultReportData (<RlAnalogFaultReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlAnalogFaultReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlAnalogFaultReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlAnalogFaultReportData> is deprecated: use radar_msgs-msg:RlAnalogFaultReportData instead.")))

(cl:ensure-generic-function 'faultType-val :lambda-list '(m))
(cl:defmethod faultType-val ((m <RlAnalogFaultReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:faultType-val is deprecated.  Use radar_msgs-msg:faultType instead.")
  (faultType m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlAnalogFaultReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlAnalogFaultReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'faultSig-val :lambda-list '(m))
(cl:defmethod faultSig-val ((m <RlAnalogFaultReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:faultSig-val is deprecated.  Use radar_msgs-msg:faultSig instead.")
  (faultSig m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <RlAnalogFaultReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved2-val is deprecated.  Use radar_msgs-msg:reserved2 instead.")
  (reserved2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlAnalogFaultReportData>) ostream)
  "Serializes a message object of type '<RlAnalogFaultReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faultType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faultSig)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'faultSig)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'faultSig)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'faultSig)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlAnalogFaultReportData>) istream)
  "Deserializes a message object of type '<RlAnalogFaultReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faultType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'faultSig)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'faultSig)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'faultSig)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'faultSig)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlAnalogFaultReportData>)))
  "Returns string type for a message object of type '<RlAnalogFaultReportData>"
  "radar_msgs/RlAnalogFaultReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlAnalogFaultReportData)))
  "Returns string type for a message object of type 'RlAnalogFaultReportData"
  "radar_msgs/RlAnalogFaultReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlAnalogFaultReportData>)))
  "Returns md5sum for a message object of type '<RlAnalogFaultReportData>"
  "86377d145b029d12a69d2725d0e11a16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlAnalogFaultReportData)))
  "Returns md5sum for a message object of type 'RlAnalogFaultReportData"
  "86377d145b029d12a69d2725d0e11a16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlAnalogFaultReportData>)))
  "Returns full string definition for message of type '<RlAnalogFaultReportData>"
  (cl:format cl:nil "uint8   faultType~%uint8   reserved0~%uint16  reserved1~%uint32  faultSig~%uint32  reserved2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlAnalogFaultReportData)))
  "Returns full string definition for message of type 'RlAnalogFaultReportData"
  (cl:format cl:nil "uint8   faultType~%uint8   reserved0~%uint16  reserved1~%uint32  faultSig~%uint32  reserved2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlAnalogFaultReportData>))
  (cl:+ 0
     1
     1
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlAnalogFaultReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'RlAnalogFaultReportData
    (cl:cons ':faultType (faultType msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':faultSig (faultSig msg))
    (cl:cons ':reserved2 (reserved2 msg))
))
