; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude TrackingObjArray.msg.html

(cl:defclass <TrackingObjArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objNum
    :reader objNum
    :initarg :objNum
    :type cl:integer
    :initform 0)
   (tracking_obj
    :reader tracking_obj
    :initarg :tracking_obj
    :type (cl:vector radar_msgs-msg:TrackingObj)
   :initform (cl:make-array 0 :element-type 'radar_msgs-msg:TrackingObj :initial-element (cl:make-instance 'radar_msgs-msg:TrackingObj))))
)

(cl:defclass TrackingObjArray (<TrackingObjArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingObjArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingObjArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<TrackingObjArray> is deprecated: use radar_msgs-msg:TrackingObjArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackingObjArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objNum-val :lambda-list '(m))
(cl:defmethod objNum-val ((m <TrackingObjArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:objNum-val is deprecated.  Use radar_msgs-msg:objNum instead.")
  (objNum m))

(cl:ensure-generic-function 'tracking_obj-val :lambda-list '(m))
(cl:defmethod tracking_obj-val ((m <TrackingObjArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:tracking_obj-val is deprecated.  Use radar_msgs-msg:tracking_obj instead.")
  (tracking_obj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingObjArray>) ostream)
  "Serializes a message object of type '<TrackingObjArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'objNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracking_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tracking_obj))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingObjArray>) istream)
  "Deserializes a message object of type '<TrackingObjArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objNum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracking_obj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracking_obj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:TrackingObj))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingObjArray>)))
  "Returns string type for a message object of type '<TrackingObjArray>"
  "radar_msgs/TrackingObjArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingObjArray)))
  "Returns string type for a message object of type 'TrackingObjArray"
  "radar_msgs/TrackingObjArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingObjArray>)))
  "Returns md5sum for a message object of type '<TrackingObjArray>"
  "b34bff7537df64fb479e0b5fde04d870")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingObjArray)))
  "Returns md5sum for a message object of type 'TrackingObjArray"
  "b34bff7537df64fb479e0b5fde04d870")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingObjArray>)))
  "Returns full string definition for message of type '<TrackingObjArray>"
  (cl:format cl:nil "Header          header               # Includes measurement timestamp and coordinate frame.~%int32           objNum               # quantity of objects~%TrackingObj[]   tracking_obj         # array of tracking objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/TrackingObj~%Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    radarID              # radar ID~%uint32    frameCnt             # frame cnt in radar~%uint32    objNum               # object number of this frame~%uint32[]  object_ID            # object ID~%uint16[]  age                  # total frames from the object occurs~%uint8[]   measurement_status   # track status (0: measured; 1: new; 2: predicted)~%uint8[]   motion_state         # movement state ( 0: static; 1: dynamic)~%uint8[]   existance_confidence # existance confidence~%float32[] position_x           # x value of central point~%float32[] position_y           # y value of central point~%float32[] position_z           # z value of central point~%float32[] velocity_x           # relative velocity of x orientation~%float32[] velocity_y           # relative velocity of y orientation~%float32[] velocity_z           # relative velocity of z orientation~%float32[] acceleration_x       # relative acceleration of x orientation~%float32[] acceleration_y       # relative acceleration of y orientation~%float32[] acceleration_z       # relative acceleration of z orientation~%float32[] v2ground_x           # velocity towards ground of x orientation~%float32[] v2ground_y           # velocity towards ground of y orientation~%float32[] v2ground_z           # velocity towards ground of z orientation~%float32[] orientation          # yaw, unit: degree~%uint8[]   type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)~%uint8[]  car_confidence       # car confidence~%uint8[]   bike_confidence      # bike confidence~%uint8[]   ped_confidence       # pedestrian confidence~%uint8[]   truck_confidence     # truck confidence~%uint8[]   signboard_confidence # signboard confidence~%uint8[]   ground_confidence    # ground confidence~%uint8[]   obstacle_confidence  # obstacle confidence~%float32[] length               # length~%float32[] width                # width~%float32[] height               # height~%float32[] od_process_time      # EnrollPtsNum~%float32[] Reserved_B           # NearestPtsX~%float32[] Reserved_C           # NearestPtsY~%float32[] Reserved_D           # NearestPtsZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingObjArray)))
  "Returns full string definition for message of type 'TrackingObjArray"
  (cl:format cl:nil "Header          header               # Includes measurement timestamp and coordinate frame.~%int32           objNum               # quantity of objects~%TrackingObj[]   tracking_obj         # array of tracking objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/TrackingObj~%Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    radarID              # radar ID~%uint32    frameCnt             # frame cnt in radar~%uint32    objNum               # object number of this frame~%uint32[]  object_ID            # object ID~%uint16[]  age                  # total frames from the object occurs~%uint8[]   measurement_status   # track status (0: measured; 1: new; 2: predicted)~%uint8[]   motion_state         # movement state ( 0: static; 1: dynamic)~%uint8[]   existance_confidence # existance confidence~%float32[] position_x           # x value of central point~%float32[] position_y           # y value of central point~%float32[] position_z           # z value of central point~%float32[] velocity_x           # relative velocity of x orientation~%float32[] velocity_y           # relative velocity of y orientation~%float32[] velocity_z           # relative velocity of z orientation~%float32[] acceleration_x       # relative acceleration of x orientation~%float32[] acceleration_y       # relative acceleration of y orientation~%float32[] acceleration_z       # relative acceleration of z orientation~%float32[] v2ground_x           # velocity towards ground of x orientation~%float32[] v2ground_y           # velocity towards ground of y orientation~%float32[] v2ground_z           # velocity towards ground of z orientation~%float32[] orientation          # yaw, unit: degree~%uint8[]   type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)~%uint8[]  car_confidence       # car confidence~%uint8[]   bike_confidence      # bike confidence~%uint8[]   ped_confidence       # pedestrian confidence~%uint8[]   truck_confidence     # truck confidence~%uint8[]   signboard_confidence # signboard confidence~%uint8[]   ground_confidence    # ground confidence~%uint8[]   obstacle_confidence  # obstacle confidence~%float32[] length               # length~%float32[] width                # width~%float32[] height               # height~%float32[] od_process_time      # EnrollPtsNum~%float32[] Reserved_B           # NearestPtsX~%float32[] Reserved_C           # NearestPtsY~%float32[] Reserved_D           # NearestPtsZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingObjArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracking_obj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingObjArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingObjArray
    (cl:cons ':header (header msg))
    (cl:cons ':objNum (objNum msg))
    (cl:cons ':tracking_obj (tracking_obj msg))
))
