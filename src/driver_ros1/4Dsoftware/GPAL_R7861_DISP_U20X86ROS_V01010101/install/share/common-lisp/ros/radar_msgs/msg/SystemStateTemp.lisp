; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemStateTemp.msg.html

(cl:defclass <SystemStateTemp> (roslisp-msg-protocol:ros-message)
  ((minTemp
    :reader minTemp
    :initarg :minTemp
    :type cl:float
    :initform 0.0)
   (maxTemp
    :reader maxTemp
    :initarg :maxTemp
    :type cl:float
    :initform 0.0))
)

(cl:defclass SystemStateTemp (<SystemStateTemp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStateTemp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStateTemp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemStateTemp> is deprecated: use radar_msgs-msg:SystemStateTemp instead.")))

(cl:ensure-generic-function 'minTemp-val :lambda-list '(m))
(cl:defmethod minTemp-val ((m <SystemStateTemp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:minTemp-val is deprecated.  Use radar_msgs-msg:minTemp instead.")
  (minTemp m))

(cl:ensure-generic-function 'maxTemp-val :lambda-list '(m))
(cl:defmethod maxTemp-val ((m <SystemStateTemp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:maxTemp-val is deprecated.  Use radar_msgs-msg:maxTemp instead.")
  (maxTemp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStateTemp>) ostream)
  "Serializes a message object of type '<SystemStateTemp>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minTemp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxTemp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStateTemp>) istream)
  "Deserializes a message object of type '<SystemStateTemp>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minTemp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxTemp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStateTemp>)))
  "Returns string type for a message object of type '<SystemStateTemp>"
  "radar_msgs/SystemStateTemp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStateTemp)))
  "Returns string type for a message object of type 'SystemStateTemp"
  "radar_msgs/SystemStateTemp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStateTemp>)))
  "Returns md5sum for a message object of type '<SystemStateTemp>"
  "84095672e2b3817830f10d33f98fc691")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStateTemp)))
  "Returns md5sum for a message object of type 'SystemStateTemp"
  "84095672e2b3817830f10d33f98fc691")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStateTemp>)))
  "Returns full string definition for message of type '<SystemStateTemp>"
  (cl:format cl:nil "# Header header               # Includes measurement timestamp and coordinate frame.~%float32       minTemp~%float32       maxTemp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStateTemp)))
  "Returns full string definition for message of type 'SystemStateTemp"
  (cl:format cl:nil "# Header header               # Includes measurement timestamp and coordinate frame.~%float32       minTemp~%float32       maxTemp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStateTemp>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStateTemp>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStateTemp
    (cl:cons ':minTemp (minTemp msg))
    (cl:cons ':maxTemp (maxTemp msg))
))
