; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude OdArray.msg.html

(cl:defclass <OdArray> (roslisp-msg-protocol:ros-message)
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
   (objNum
    :reader objNum
    :initarg :objNum
    :type cl:integer
    :initform 0)
   (odArray
    :reader odArray
    :initarg :odArray
    :type (cl:vector radar_msgs-msg:Od)
   :initform (cl:make-array 0 :element-type 'radar_msgs-msg:Od :initial-element (cl:make-instance 'radar_msgs-msg:Od))))
)

(cl:defclass OdArray (<OdArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<OdArray> is deprecated: use radar_msgs-msg:OdArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OdArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarID-val :lambda-list '(m))
(cl:defmethod radarID-val ((m <OdArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarID-val is deprecated.  Use radar_msgs-msg:radarID instead.")
  (radarID m))

(cl:ensure-generic-function 'frameCnt-val :lambda-list '(m))
(cl:defmethod frameCnt-val ((m <OdArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameCnt-val is deprecated.  Use radar_msgs-msg:frameCnt instead.")
  (frameCnt m))

(cl:ensure-generic-function 'objNum-val :lambda-list '(m))
(cl:defmethod objNum-val ((m <OdArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:objNum-val is deprecated.  Use radar_msgs-msg:objNum instead.")
  (objNum m))

(cl:ensure-generic-function 'odArray-val :lambda-list '(m))
(cl:defmethod odArray-val ((m <OdArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:odArray-val is deprecated.  Use radar_msgs-msg:odArray instead.")
  (odArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdArray>) ostream)
  "Serializes a message object of type '<OdArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'objNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'objNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'objNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'objNum)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'odArray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'odArray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdArray>) istream)
  "Deserializes a message object of type '<OdArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'odArray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'odArray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:Od))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdArray>)))
  "Returns string type for a message object of type '<OdArray>"
  "radar_msgs/OdArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdArray)))
  "Returns string type for a message object of type 'OdArray"
  "radar_msgs/OdArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdArray>)))
  "Returns md5sum for a message object of type '<OdArray>"
  "efbe1652c996ab4b9be091c4010e6a53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdArray)))
  "Returns md5sum for a message object of type 'OdArray"
  "efbe1652c996ab4b9be091c4010e6a53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdArray>)))
  "Returns full string definition for message of type '<OdArray>"
  (cl:format cl:nil "Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    radarID              # radar ID~%uint32    frameCnt             # frame cnt in radar~%uint32    objNum               # object number of this frame~%Od[]      odArray              # array of tracking objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/Od~%# Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    object_ID            # object ID~%uint16    age                  # total frames from the object occurs~%uint8     measurement_status   # track status (0: measured; 1: new; 2: predicted)~%uint8     motion_state         # movement state ( 0: static; 1: dynamic)~%uint8     existance_confidence # existance confidence~%geometry_msgs/Pose              pose #central position x, y, z; roll=0, pitch=0, yaw to quaternion~%geometry_msgs/Vector3           dimensions #length, width, height~%geometry_msgs/Twist             velocity~%geometry_msgs/Twist             acceleration~%geometry_msgs/Twist             v2ground #velocity towards ground of x, y, z orientation~%geometry_msgs/Pose              pose_nearest #NearestPts x, y, z~%uint8     type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)~%uint8     car_confidence       # car confidence~%uint8     bike_confidence      # bike confidence~%uint8     ped_confidence       # pedestrian confidence~%uint8     truck_confidence     # truck confidence~%uint8     signboard_confidence # signboard confidence~%uint8     ground_confidence    # ground confidence~%uint8     obstacle_confidence  # obstacle confidence~%float32   EnrollPtsNum         # EnrollPtsNum~%float32   NearestPtsX          # NearestPtsX           ~%float32   NearestPtsY          # NearestPtsY~%float32   NearestPtsZ          # NearestPtsZ~%float32   Reserved_D  ~%uint32    Reserved_E          ~%uint32    Reserved_F           ~%int32     Reserved_G           ~%int32     Reserved_H    ~%uint16    Reserved_I   ~%uint16    Reserved_J    ~%int16     Reserved_K   ~%int16     Reserved_L ~%uint8     Reserved_M  ~%uint8     Reserved_N    ~%string    Reserved_O~%string    Reserved_P~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdArray)))
  "Returns full string definition for message of type 'OdArray"
  (cl:format cl:nil "Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    radarID              # radar ID~%uint32    frameCnt             # frame cnt in radar~%uint32    objNum               # object number of this frame~%Od[]      odArray              # array of tracking objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/Od~%# Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    object_ID            # object ID~%uint16    age                  # total frames from the object occurs~%uint8     measurement_status   # track status (0: measured; 1: new; 2: predicted)~%uint8     motion_state         # movement state ( 0: static; 1: dynamic)~%uint8     existance_confidence # existance confidence~%geometry_msgs/Pose              pose #central position x, y, z; roll=0, pitch=0, yaw to quaternion~%geometry_msgs/Vector3           dimensions #length, width, height~%geometry_msgs/Twist             velocity~%geometry_msgs/Twist             acceleration~%geometry_msgs/Twist             v2ground #velocity towards ground of x, y, z orientation~%geometry_msgs/Pose              pose_nearest #NearestPts x, y, z~%uint8     type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)~%uint8     car_confidence       # car confidence~%uint8     bike_confidence      # bike confidence~%uint8     ped_confidence       # pedestrian confidence~%uint8     truck_confidence     # truck confidence~%uint8     signboard_confidence # signboard confidence~%uint8     ground_confidence    # ground confidence~%uint8     obstacle_confidence  # obstacle confidence~%float32   EnrollPtsNum         # EnrollPtsNum~%float32   NearestPtsX          # NearestPtsX           ~%float32   NearestPtsY          # NearestPtsY~%float32   NearestPtsZ          # NearestPtsZ~%float32   Reserved_D  ~%uint32    Reserved_E          ~%uint32    Reserved_F           ~%int32     Reserved_G           ~%int32     Reserved_H    ~%uint16    Reserved_I   ~%uint16    Reserved_J    ~%int16     Reserved_K   ~%int16     Reserved_L ~%uint8     Reserved_M  ~%uint8     Reserved_N    ~%string    Reserved_O~%string    Reserved_P~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'odArray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdArray>))
  "Converts a ROS message object to a list"
  (cl:list 'OdArray
    (cl:cons ':header (header msg))
    (cl:cons ':radarID (radarID msg))
    (cl:cons ':frameCnt (frameCnt msg))
    (cl:cons ':objNum (objNum msg))
    (cl:cons ':odArray (odArray msg))
))
