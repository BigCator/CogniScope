; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlGpAdcData.msg.html

(cl:defclass <RlGpAdcData> (roslisp-msg-protocol:ros-message)
  ((min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (max
    :reader max
    :initarg :max
    :type cl:fixnum
    :initform 0)
   (avg
    :reader avg
    :initarg :avg
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RlGpAdcData (<RlGpAdcData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlGpAdcData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlGpAdcData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlGpAdcData> is deprecated: use radar_msgs-msg:RlGpAdcData instead.")))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <RlGpAdcData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:min-val is deprecated.  Use radar_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <RlGpAdcData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:max-val is deprecated.  Use radar_msgs-msg:max instead.")
  (max m))

(cl:ensure-generic-function 'avg-val :lambda-list '(m))
(cl:defmethod avg-val ((m <RlGpAdcData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:avg-val is deprecated.  Use radar_msgs-msg:avg instead.")
  (avg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlGpAdcData>) ostream)
  "Serializes a message object of type '<RlGpAdcData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'avg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'avg)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlGpAdcData>) istream)
  "Deserializes a message object of type '<RlGpAdcData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'avg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'avg)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlGpAdcData>)))
  "Returns string type for a message object of type '<RlGpAdcData>"
  "radar_msgs/RlGpAdcData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlGpAdcData)))
  "Returns string type for a message object of type 'RlGpAdcData"
  "radar_msgs/RlGpAdcData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlGpAdcData>)))
  "Returns md5sum for a message object of type '<RlGpAdcData>"
  "2d3fd228e22a7d51e758f16247dffdea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlGpAdcData)))
  "Returns md5sum for a message object of type 'RlGpAdcData"
  "2d3fd228e22a7d51e758f16247dffdea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlGpAdcData>)))
  "Returns full string definition for message of type '<RlGpAdcData>"
  (cl:format cl:nil "uint16 min~%uint16 max~%uint16 avg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlGpAdcData)))
  "Returns full string definition for message of type 'RlGpAdcData"
  (cl:format cl:nil "uint16 min~%uint16 max~%uint16 avg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlGpAdcData>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlGpAdcData>))
  "Converts a ROS message object to a list"
  (cl:list 'RlGpAdcData
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
    (cl:cons ':avg (avg msg))
))
