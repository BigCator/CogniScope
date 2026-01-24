; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlDigPeriodicReportData.msg.html

(cl:defclass <RlDigPeriodicReportData> (roslisp-msg-protocol:ros-message)
  ((digMonPeriodicStatus
    :reader digMonPeriodicStatus
    :initarg :digMonPeriodicStatus
    :type cl:integer
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlDigPeriodicReportData (<RlDigPeriodicReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlDigPeriodicReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlDigPeriodicReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlDigPeriodicReportData> is deprecated: use radar_msgs-msg:RlDigPeriodicReportData instead.")))

(cl:ensure-generic-function 'digMonPeriodicStatus-val :lambda-list '(m))
(cl:defmethod digMonPeriodicStatus-val ((m <RlDigPeriodicReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:digMonPeriodicStatus-val is deprecated.  Use radar_msgs-msg:digMonPeriodicStatus instead.")
  (digMonPeriodicStatus m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlDigPeriodicReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlDigPeriodicReportData>) ostream)
  "Serializes a message object of type '<RlDigPeriodicReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digMonPeriodicStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digMonPeriodicStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digMonPeriodicStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digMonPeriodicStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlDigPeriodicReportData>) istream)
  "Deserializes a message object of type '<RlDigPeriodicReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digMonPeriodicStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digMonPeriodicStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digMonPeriodicStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digMonPeriodicStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlDigPeriodicReportData>)))
  "Returns string type for a message object of type '<RlDigPeriodicReportData>"
  "radar_msgs/RlDigPeriodicReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlDigPeriodicReportData)))
  "Returns string type for a message object of type 'RlDigPeriodicReportData"
  "radar_msgs/RlDigPeriodicReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlDigPeriodicReportData>)))
  "Returns md5sum for a message object of type '<RlDigPeriodicReportData>"
  "262409da3005a90bd0e6dbfcde33642a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlDigPeriodicReportData)))
  "Returns md5sum for a message object of type 'RlDigPeriodicReportData"
  "262409da3005a90bd0e6dbfcde33642a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlDigPeriodicReportData>)))
  "Returns full string definition for message of type '<RlDigPeriodicReportData>"
  (cl:format cl:nil "uint32 digMonPeriodicStatus~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlDigPeriodicReportData)))
  "Returns full string definition for message of type 'RlDigPeriodicReportData"
  (cl:format cl:nil "uint32 digMonPeriodicStatus~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlDigPeriodicReportData>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlDigPeriodicReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'RlDigPeriodicReportData
    (cl:cons ':digMonPeriodicStatus (digMonPeriodicStatus msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
