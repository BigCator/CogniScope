; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlCalMonTimingErrorReportData.msg.html

(cl:defclass <RlCalMonTimingErrorReportData> (roslisp-msg-protocol:ros-message)
  ((timingFailCode
    :reader timingFailCode
    :initarg :timingFailCode
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RlCalMonTimingErrorReportData (<RlCalMonTimingErrorReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlCalMonTimingErrorReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlCalMonTimingErrorReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlCalMonTimingErrorReportData> is deprecated: use radar_msgs-msg:RlCalMonTimingErrorReportData instead.")))

(cl:ensure-generic-function 'timingFailCode-val :lambda-list '(m))
(cl:defmethod timingFailCode-val ((m <RlCalMonTimingErrorReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timingFailCode-val is deprecated.  Use radar_msgs-msg:timingFailCode instead.")
  (timingFailCode m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <RlCalMonTimingErrorReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved-val is deprecated.  Use radar_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlCalMonTimingErrorReportData>) ostream)
  "Serializes a message object of type '<RlCalMonTimingErrorReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timingFailCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timingFailCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlCalMonTimingErrorReportData>) istream)
  "Deserializes a message object of type '<RlCalMonTimingErrorReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timingFailCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timingFailCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlCalMonTimingErrorReportData>)))
  "Returns string type for a message object of type '<RlCalMonTimingErrorReportData>"
  "radar_msgs/RlCalMonTimingErrorReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlCalMonTimingErrorReportData)))
  "Returns string type for a message object of type 'RlCalMonTimingErrorReportData"
  "radar_msgs/RlCalMonTimingErrorReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlCalMonTimingErrorReportData>)))
  "Returns md5sum for a message object of type '<RlCalMonTimingErrorReportData>"
  "ba804855ea66876247a3184393cfedc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlCalMonTimingErrorReportData)))
  "Returns md5sum for a message object of type 'RlCalMonTimingErrorReportData"
  "ba804855ea66876247a3184393cfedc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlCalMonTimingErrorReportData>)))
  "Returns full string definition for message of type '<RlCalMonTimingErrorReportData>"
  (cl:format cl:nil "uint16 timingFailCode~%uint16 reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlCalMonTimingErrorReportData)))
  "Returns full string definition for message of type 'RlCalMonTimingErrorReportData"
  (cl:format cl:nil "uint16 timingFailCode~%uint16 reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlCalMonTimingErrorReportData>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlCalMonTimingErrorReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'RlCalMonTimingErrorReportData
    (cl:cons ':timingFailCode (timingFailCode msg))
    (cl:cons ':reserved (reserved msg))
))
