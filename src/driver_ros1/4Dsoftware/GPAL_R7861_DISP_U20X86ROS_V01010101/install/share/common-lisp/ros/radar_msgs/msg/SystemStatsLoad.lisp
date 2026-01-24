; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemStatsLoad.msg.html

(cl:defclass <SystemStatsLoad> (roslisp-msg-protocol:ros-message)
  ((loadValue
    :reader loadValue
    :initarg :loadValue
    :type cl:float
    :initform 0.0))
)

(cl:defclass SystemStatsLoad (<SystemStatsLoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStatsLoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStatsLoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemStatsLoad> is deprecated: use radar_msgs-msg:SystemStatsLoad instead.")))

(cl:ensure-generic-function 'loadValue-val :lambda-list '(m))
(cl:defmethod loadValue-val ((m <SystemStatsLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:loadValue-val is deprecated.  Use radar_msgs-msg:loadValue instead.")
  (loadValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStatsLoad>) ostream)
  "Serializes a message object of type '<SystemStatsLoad>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'loadValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStatsLoad>) istream)
  "Deserializes a message object of type '<SystemStatsLoad>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loadValue) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStatsLoad>)))
  "Returns string type for a message object of type '<SystemStatsLoad>"
  "radar_msgs/SystemStatsLoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStatsLoad)))
  "Returns string type for a message object of type 'SystemStatsLoad"
  "radar_msgs/SystemStatsLoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStatsLoad>)))
  "Returns md5sum for a message object of type '<SystemStatsLoad>"
  "fd202161f3eaed8a4375480b6f4d9bb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStatsLoad)))
  "Returns md5sum for a message object of type 'SystemStatsLoad"
  "fd202161f3eaed8a4375480b6f4d9bb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStatsLoad>)))
  "Returns full string definition for message of type '<SystemStatsLoad>"
  (cl:format cl:nil "# Header header               # Includes measurement timestamp and coordinate frame.~%# uint32      integerValue~%# uint32      fractionalValue~%float32     loadValue~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStatsLoad)))
  "Returns full string definition for message of type 'SystemStatsLoad"
  (cl:format cl:nil "# Header header               # Includes measurement timestamp and coordinate frame.~%# uint32      integerValue~%# uint32      fractionalValue~%float32     loadValue~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStatsLoad>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStatsLoad>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStatsLoad
    (cl:cons ':loadValue (loadValue msg))
))
