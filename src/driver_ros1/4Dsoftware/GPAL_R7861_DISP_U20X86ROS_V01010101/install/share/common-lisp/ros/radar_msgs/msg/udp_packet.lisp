; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude udp_packet.msg.html

(cl:defclass <udp_packet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 1600 :element-type 'cl:fixnum :initial-element 0))
   (dataLen
    :reader dataLen
    :initarg :dataLen
    :type cl:integer
    :initform 0))
)

(cl:defclass udp_packet (<udp_packet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <udp_packet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'udp_packet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<udp_packet> is deprecated: use radar_msgs-msg:udp_packet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <udp_packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <udp_packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:data-val is deprecated.  Use radar_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'dataLen-val :lambda-list '(m))
(cl:defmethod dataLen-val ((m <udp_packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:dataLen-val is deprecated.  Use radar_msgs-msg:dataLen instead.")
  (dataLen m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <udp_packet>) ostream)
  "Serializes a message object of type '<udp_packet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dataLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dataLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dataLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dataLen)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <udp_packet>) istream)
  "Deserializes a message object of type '<udp_packet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 1600))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 1600)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dataLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dataLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dataLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dataLen)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<udp_packet>)))
  "Returns string type for a message object of type '<udp_packet>"
  "radar_msgs/udp_packet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'udp_packet)))
  "Returns string type for a message object of type 'udp_packet"
  "radar_msgs/udp_packet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<udp_packet>)))
  "Returns md5sum for a message object of type '<udp_packet>"
  "c035d121319ead0c0dff79b6eafe90f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'udp_packet)))
  "Returns md5sum for a message object of type 'udp_packet"
  "c035d121319ead0c0dff79b6eafe90f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<udp_packet>)))
  "Returns full string definition for message of type '<udp_packet>"
  (cl:format cl:nil "Header header~%uint8[1600] data~%uint32 dataLen~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'udp_packet)))
  "Returns full string definition for message of type 'udp_packet"
  (cl:format cl:nil "Header header~%uint8[1600] data~%uint32 dataLen~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <udp_packet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <udp_packet>))
  "Converts a ROS message object to a list"
  (cl:list 'udp_packet
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
    (cl:cons ':dataLen (dataLen msg))
))
