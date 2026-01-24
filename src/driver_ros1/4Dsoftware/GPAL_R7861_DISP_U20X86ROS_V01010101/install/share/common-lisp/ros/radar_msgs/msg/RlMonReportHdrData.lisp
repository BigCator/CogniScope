; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonReportHdrData.msg.html

(cl:defclass <RlMonReportHdrData> (roslisp-msg-protocol:ros-message)
  ((fttiCount
    :reader fttiCount
    :initarg :fttiCount
    :type cl:integer
    :initform 0)
   (avgTemp
    :reader avgTemp
    :initarg :avgTemp
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
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonReportHdrData (<RlMonReportHdrData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonReportHdrData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonReportHdrData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonReportHdrData> is deprecated: use radar_msgs-msg:RlMonReportHdrData instead.")))

(cl:ensure-generic-function 'fttiCount-val :lambda-list '(m))
(cl:defmethod fttiCount-val ((m <RlMonReportHdrData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fttiCount-val is deprecated.  Use radar_msgs-msg:fttiCount instead.")
  (fttiCount m))

(cl:ensure-generic-function 'avgTemp-val :lambda-list '(m))
(cl:defmethod avgTemp-val ((m <RlMonReportHdrData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:avgTemp-val is deprecated.  Use radar_msgs-msg:avgTemp instead.")
  (avgTemp m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonReportHdrData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlMonReportHdrData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonReportHdrData>) ostream)
  "Serializes a message object of type '<RlMonReportHdrData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fttiCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fttiCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fttiCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fttiCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'avgTemp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'avgTemp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved1)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonReportHdrData>) istream)
  "Deserializes a message object of type '<RlMonReportHdrData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fttiCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fttiCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fttiCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fttiCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'avgTemp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'avgTemp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonReportHdrData>)))
  "Returns string type for a message object of type '<RlMonReportHdrData>"
  "radar_msgs/RlMonReportHdrData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonReportHdrData)))
  "Returns string type for a message object of type 'RlMonReportHdrData"
  "radar_msgs/RlMonReportHdrData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonReportHdrData>)))
  "Returns md5sum for a message object of type '<RlMonReportHdrData>"
  "98626e73845bccc896ca0d734491f4f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonReportHdrData)))
  "Returns md5sum for a message object of type 'RlMonReportHdrData"
  "98626e73845bccc896ca0d734491f4f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonReportHdrData>)))
  "Returns full string definition for message of type '<RlMonReportHdrData>"
  (cl:format cl:nil "uint32  fttiCount~%uint16  avgTemp~%uint16  reserved0~%uint32  reserved1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonReportHdrData)))
  "Returns full string definition for message of type 'RlMonReportHdrData"
  (cl:format cl:nil "uint32  fttiCount~%uint16  avgTemp~%uint16  reserved0~%uint32  reserved1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonReportHdrData>))
  (cl:+ 0
     4
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonReportHdrData>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonReportHdrData
    (cl:cons ':fttiCount (fttiCount msg))
    (cl:cons ':avgTemp (avgTemp msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
