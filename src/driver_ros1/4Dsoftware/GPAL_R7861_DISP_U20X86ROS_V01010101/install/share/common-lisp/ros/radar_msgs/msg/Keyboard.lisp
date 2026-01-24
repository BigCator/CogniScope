; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude Keyboard.msg.html

(cl:defclass <Keyboard> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform ""))
)

(cl:defclass Keyboard (<Keyboard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keyboard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keyboard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<Keyboard> is deprecated: use radar_msgs-msg:Keyboard instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Keyboard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <Keyboard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:key-val is deprecated.  Use radar_msgs-msg:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keyboard>) ostream)
  "Serializes a message object of type '<Keyboard>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keyboard>) istream)
  "Deserializes a message object of type '<Keyboard>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keyboard>)))
  "Returns string type for a message object of type '<Keyboard>"
  "radar_msgs/Keyboard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keyboard)))
  "Returns string type for a message object of type 'Keyboard"
  "radar_msgs/Keyboard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keyboard>)))
  "Returns md5sum for a message object of type '<Keyboard>"
  "3af5b3f309206fb790d169ed56f35fad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keyboard)))
  "Returns md5sum for a message object of type 'Keyboard"
  "3af5b3f309206fb790d169ed56f35fad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keyboard>)))
  "Returns full string definition for message of type '<Keyboard>"
  (cl:format cl:nil "Header    header    # Includes measurement timestamp and coordinate frame.~%string    key       # the pressed key.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keyboard)))
  "Returns full string definition for message of type 'Keyboard"
  (cl:format cl:nil "Header    header    # Includes measurement timestamp and coordinate frame.~%string    key       # the pressed key.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keyboard>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keyboard>))
  "Converts a ROS message object to a list"
  (cl:list 'Keyboard
    (cl:cons ':header (header msg))
    (cl:cons ':key (key msg))
))
