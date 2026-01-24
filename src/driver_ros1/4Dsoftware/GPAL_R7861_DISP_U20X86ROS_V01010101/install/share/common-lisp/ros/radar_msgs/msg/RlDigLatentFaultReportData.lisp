; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlDigLatentFaultReportData.msg.html

(cl:defclass <RlDigLatentFaultReportData> (roslisp-msg-protocol:ros-message)
  ((digMonLatentFault
    :reader digMonLatentFault
    :initarg :digMonLatentFault
    :type cl:integer
    :initform 0))
)

(cl:defclass RlDigLatentFaultReportData (<RlDigLatentFaultReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlDigLatentFaultReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlDigLatentFaultReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlDigLatentFaultReportData> is deprecated: use radar_msgs-msg:RlDigLatentFaultReportData instead.")))

(cl:ensure-generic-function 'digMonLatentFault-val :lambda-list '(m))
(cl:defmethod digMonLatentFault-val ((m <RlDigLatentFaultReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:digMonLatentFault-val is deprecated.  Use radar_msgs-msg:digMonLatentFault instead.")
  (digMonLatentFault m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlDigLatentFaultReportData>) ostream)
  "Serializes a message object of type '<RlDigLatentFaultReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digMonLatentFault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digMonLatentFault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digMonLatentFault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digMonLatentFault)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlDigLatentFaultReportData>) istream)
  "Deserializes a message object of type '<RlDigLatentFaultReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digMonLatentFault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digMonLatentFault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digMonLatentFault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digMonLatentFault)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlDigLatentFaultReportData>)))
  "Returns string type for a message object of type '<RlDigLatentFaultReportData>"
  "radar_msgs/RlDigLatentFaultReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlDigLatentFaultReportData)))
  "Returns string type for a message object of type 'RlDigLatentFaultReportData"
  "radar_msgs/RlDigLatentFaultReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlDigLatentFaultReportData>)))
  "Returns md5sum for a message object of type '<RlDigLatentFaultReportData>"
  "1d9a5ff36b3bc2ccb74cffbea92268ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlDigLatentFaultReportData)))
  "Returns md5sum for a message object of type 'RlDigLatentFaultReportData"
  "1d9a5ff36b3bc2ccb74cffbea92268ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlDigLatentFaultReportData>)))
  "Returns full string definition for message of type '<RlDigLatentFaultReportData>"
  (cl:format cl:nil "uint32  digMonLatentFault~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlDigLatentFaultReportData)))
  "Returns full string definition for message of type 'RlDigLatentFaultReportData"
  (cl:format cl:nil "uint32  digMonLatentFault~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlDigLatentFaultReportData>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlDigLatentFaultReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'RlDigLatentFaultReportData
    (cl:cons ':digMonLatentFault (digMonLatentFault msg))
))
