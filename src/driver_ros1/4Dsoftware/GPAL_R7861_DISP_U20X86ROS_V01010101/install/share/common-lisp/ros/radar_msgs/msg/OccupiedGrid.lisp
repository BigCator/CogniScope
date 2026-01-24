; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude OccupiedGrid.msg.html

(cl:defclass <OccupiedGrid> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (radarID
    :reader radarID
    :initarg :radarID
    :type cl:integer
    :initform 0)
   (frameCnt
    :reader frameCnt
    :initarg :frameCnt
    :type cl:integer
    :initform 0)
   (occupiedNum
    :reader occupiedNum
    :initarg :occupiedNum
    :type cl:integer
    :initform 0)
   (grid_x_length
    :reader grid_x_length
    :initarg :grid_x_length
    :type cl:float
    :initform 0.0)
   (grid_y_length
    :reader grid_y_length
    :initarg :grid_y_length
    :type cl:float
    :initform 0.0)
   (grid_x
    :reader grid_x
    :initarg :grid_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (grid_y
    :reader grid_y
    :initarg :grid_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (reserved_a
    :reader reserved_a
    :initarg :reserved_a
    :type cl:float
    :initform 0.0)
   (reserved_b
    :reader reserved_b
    :initarg :reserved_b
    :type cl:float
    :initform 0.0)
   (reserved_c
    :reader reserved_c
    :initarg :reserved_c
    :type cl:float
    :initform 0.0))
)

(cl:defclass OccupiedGrid (<OccupiedGrid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OccupiedGrid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OccupiedGrid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<OccupiedGrid> is deprecated: use radar_msgs-msg:OccupiedGrid instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarID-val :lambda-list '(m))
(cl:defmethod radarID-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarID-val is deprecated.  Use radar_msgs-msg:radarID instead.")
  (radarID m))

(cl:ensure-generic-function 'frameCnt-val :lambda-list '(m))
(cl:defmethod frameCnt-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameCnt-val is deprecated.  Use radar_msgs-msg:frameCnt instead.")
  (frameCnt m))

(cl:ensure-generic-function 'occupiedNum-val :lambda-list '(m))
(cl:defmethod occupiedNum-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:occupiedNum-val is deprecated.  Use radar_msgs-msg:occupiedNum instead.")
  (occupiedNum m))

(cl:ensure-generic-function 'grid_x_length-val :lambda-list '(m))
(cl:defmethod grid_x_length-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:grid_x_length-val is deprecated.  Use radar_msgs-msg:grid_x_length instead.")
  (grid_x_length m))

(cl:ensure-generic-function 'grid_y_length-val :lambda-list '(m))
(cl:defmethod grid_y_length-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:grid_y_length-val is deprecated.  Use radar_msgs-msg:grid_y_length instead.")
  (grid_y_length m))

(cl:ensure-generic-function 'grid_x-val :lambda-list '(m))
(cl:defmethod grid_x-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:grid_x-val is deprecated.  Use radar_msgs-msg:grid_x instead.")
  (grid_x m))

(cl:ensure-generic-function 'grid_y-val :lambda-list '(m))
(cl:defmethod grid_y-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:grid_y-val is deprecated.  Use radar_msgs-msg:grid_y instead.")
  (grid_y m))

(cl:ensure-generic-function 'reserved_a-val :lambda-list '(m))
(cl:defmethod reserved_a-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_a-val is deprecated.  Use radar_msgs-msg:reserved_a instead.")
  (reserved_a m))

(cl:ensure-generic-function 'reserved_b-val :lambda-list '(m))
(cl:defmethod reserved_b-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_b-val is deprecated.  Use radar_msgs-msg:reserved_b instead.")
  (reserved_b m))

(cl:ensure-generic-function 'reserved_c-val :lambda-list '(m))
(cl:defmethod reserved_c-val ((m <OccupiedGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_c-val is deprecated.  Use radar_msgs-msg:reserved_c instead.")
  (reserved_c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OccupiedGrid>) ostream)
  "Serializes a message object of type '<OccupiedGrid>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'occupiedNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'occupiedNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'occupiedNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'occupiedNum)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grid_x_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grid_y_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'grid_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'grid_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'grid_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'grid_y))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved_a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved_b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OccupiedGrid>) istream)
  "Deserializes a message object of type '<OccupiedGrid>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'occupiedNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'occupiedNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'occupiedNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'occupiedNum)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_x_length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_y_length) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'grid_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'grid_x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'grid_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'grid_y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved_a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved_b) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved_c) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OccupiedGrid>)))
  "Returns string type for a message object of type '<OccupiedGrid>"
  "radar_msgs/OccupiedGrid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OccupiedGrid)))
  "Returns string type for a message object of type 'OccupiedGrid"
  "radar_msgs/OccupiedGrid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OccupiedGrid>)))
  "Returns md5sum for a message object of type '<OccupiedGrid>"
  "fca44ea0183b5e4ef2b30eb2023b28ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OccupiedGrid)))
  "Returns md5sum for a message object of type 'OccupiedGrid"
  "fca44ea0183b5e4ef2b30eb2023b28ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OccupiedGrid>)))
  "Returns full string definition for message of type '<OccupiedGrid>"
  (cl:format cl:nil "Header header                   # Includes measurement timestamp and coordinate frame.~%uint32 radarID                  # radar ID~%uint32 frameCnt                 # frame cnt in radar~%uint32 occupiedNum              # number of grid~%float32 grid_x_length           # length of grid along x axis~%float32 grid_y_length           # length of grid along y axis~%float32[] grid_x                # Position x of grid, unit: m~%float32[] grid_y                # Position y of grid, unit: m~%float32 reserved_a~%float32 reserved_b~%float32 reserved_c~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OccupiedGrid)))
  "Returns full string definition for message of type 'OccupiedGrid"
  (cl:format cl:nil "Header header                   # Includes measurement timestamp and coordinate frame.~%uint32 radarID                  # radar ID~%uint32 frameCnt                 # frame cnt in radar~%uint32 occupiedNum              # number of grid~%float32 grid_x_length           # length of grid along x axis~%float32 grid_y_length           # length of grid along y axis~%float32[] grid_x                # Position x of grid, unit: m~%float32[] grid_y                # Position y of grid, unit: m~%float32 reserved_a~%float32 reserved_b~%float32 reserved_c~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OccupiedGrid>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'grid_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'grid_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OccupiedGrid>))
  "Converts a ROS message object to a list"
  (cl:list 'OccupiedGrid
    (cl:cons ':header (header msg))
    (cl:cons ':radarID (radarID msg))
    (cl:cons ':frameCnt (frameCnt msg))
    (cl:cons ':occupiedNum (occupiedNum msg))
    (cl:cons ':grid_x_length (grid_x_length msg))
    (cl:cons ':grid_y_length (grid_y_length msg))
    (cl:cons ':grid_x (grid_x msg))
    (cl:cons ':grid_y (grid_y msg))
    (cl:cons ':reserved_a (reserved_a msg))
    (cl:cons ':reserved_b (reserved_b msg))
    (cl:cons ':reserved_c (reserved_c msg))
))
