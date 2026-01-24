; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude InstallInfo.msg.html

(cl:defclass <InstallInfo> (roslisp-msg-protocol:ros-message)
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
   (sensorPositionInvalidFlags
    :reader sensorPositionInvalidFlags
    :initarg :sensorPositionInvalidFlags
    :type cl:fixnum
    :initform 0)
   (sensorXPosition
    :reader sensorXPosition
    :initarg :sensorXPosition
    :type cl:float
    :initform 0.0)
   (sensorYPosition
    :reader sensorYPosition
    :initarg :sensorYPosition
    :type cl:float
    :initform 0.0)
   (sensorZPosition
    :reader sensorZPosition
    :initarg :sensorZPosition
    :type cl:float
    :initform 0.0)
   (sensorRollAngle
    :reader sensorRollAngle
    :initarg :sensorRollAngle
    :type cl:float
    :initform 0.0)
   (sensorPitchAngle
    :reader sensorPitchAngle
    :initarg :sensorPitchAngle
    :type cl:float
    :initform 0.0)
   (sensorYawAngle
    :reader sensorYawAngle
    :initarg :sensorYawAngle
    :type cl:float
    :initform 0.0)
   (azimuthCorrection
    :reader azimuthCorrection
    :initarg :azimuthCorrection
    :type cl:float
    :initform 0.0)
   (elevationCorrection
    :reader elevationCorrection
    :initarg :elevationCorrection
    :type cl:float
    :initform 0.0))
)

(cl:defclass InstallInfo (<InstallInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InstallInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InstallInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<InstallInfo> is deprecated: use radar_msgs-msg:InstallInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarID-val :lambda-list '(m))
(cl:defmethod radarID-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarID-val is deprecated.  Use radar_msgs-msg:radarID instead.")
  (radarID m))

(cl:ensure-generic-function 'frameCnt-val :lambda-list '(m))
(cl:defmethod frameCnt-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameCnt-val is deprecated.  Use radar_msgs-msg:frameCnt instead.")
  (frameCnt m))

(cl:ensure-generic-function 'sensorPositionInvalidFlags-val :lambda-list '(m))
(cl:defmethod sensorPositionInvalidFlags-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensorPositionInvalidFlags-val is deprecated.  Use radar_msgs-msg:sensorPositionInvalidFlags instead.")
  (sensorPositionInvalidFlags m))

(cl:ensure-generic-function 'sensorXPosition-val :lambda-list '(m))
(cl:defmethod sensorXPosition-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensorXPosition-val is deprecated.  Use radar_msgs-msg:sensorXPosition instead.")
  (sensorXPosition m))

(cl:ensure-generic-function 'sensorYPosition-val :lambda-list '(m))
(cl:defmethod sensorYPosition-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensorYPosition-val is deprecated.  Use radar_msgs-msg:sensorYPosition instead.")
  (sensorYPosition m))

(cl:ensure-generic-function 'sensorZPosition-val :lambda-list '(m))
(cl:defmethod sensorZPosition-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensorZPosition-val is deprecated.  Use radar_msgs-msg:sensorZPosition instead.")
  (sensorZPosition m))

(cl:ensure-generic-function 'sensorRollAngle-val :lambda-list '(m))
(cl:defmethod sensorRollAngle-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensorRollAngle-val is deprecated.  Use radar_msgs-msg:sensorRollAngle instead.")
  (sensorRollAngle m))

(cl:ensure-generic-function 'sensorPitchAngle-val :lambda-list '(m))
(cl:defmethod sensorPitchAngle-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensorPitchAngle-val is deprecated.  Use radar_msgs-msg:sensorPitchAngle instead.")
  (sensorPitchAngle m))

(cl:ensure-generic-function 'sensorYawAngle-val :lambda-list '(m))
(cl:defmethod sensorYawAngle-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:sensorYawAngle-val is deprecated.  Use radar_msgs-msg:sensorYawAngle instead.")
  (sensorYawAngle m))

(cl:ensure-generic-function 'azimuthCorrection-val :lambda-list '(m))
(cl:defmethod azimuthCorrection-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:azimuthCorrection-val is deprecated.  Use radar_msgs-msg:azimuthCorrection instead.")
  (azimuthCorrection m))

(cl:ensure-generic-function 'elevationCorrection-val :lambda-list '(m))
(cl:defmethod elevationCorrection-val ((m <InstallInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:elevationCorrection-val is deprecated.  Use radar_msgs-msg:elevationCorrection instead.")
  (elevationCorrection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InstallInfo>) ostream)
  "Serializes a message object of type '<InstallInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorPositionInvalidFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensorPositionInvalidFlags)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sensorXPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sensorYPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sensorZPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sensorRollAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sensorPitchAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sensorYawAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuthCorrection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elevationCorrection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InstallInfo>) istream)
  "Deserializes a message object of type '<InstallInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensorPositionInvalidFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensorPositionInvalidFlags)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensorXPosition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensorYPosition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensorZPosition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensorRollAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensorPitchAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sensorYawAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuthCorrection) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevationCorrection) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InstallInfo>)))
  "Returns string type for a message object of type '<InstallInfo>"
  "radar_msgs/InstallInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InstallInfo)))
  "Returns string type for a message object of type 'InstallInfo"
  "radar_msgs/InstallInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InstallInfo>)))
  "Returns md5sum for a message object of type '<InstallInfo>"
  "0c93964ac0c3cc3e143adcb42d14164d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InstallInfo)))
  "Returns md5sum for a message object of type 'InstallInfo"
  "0c93964ac0c3cc3e143adcb42d14164d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InstallInfo>)))
  "Returns full string definition for message of type '<InstallInfo>"
  (cl:format cl:nil "Header  header                   # Includes measurement timestamp and coordinate frame.~%uint32  radarID                  # radar ID~%uint32  frameCnt                 # frame cnt in radar~%uint16  sensorPositionInvalidFlags~%float32 sensorXPosition             #unit: m~%float32 sensorYPosition             #unit: m~%float32 sensorZPosition             #unit: m~%float32 sensorRollAngle             #unit: degree~%float32 sensorPitchAngle            #unit: degree~%float32 sensorYawAngle              #unit: degree~%float32 azimuthCorrection           #unit: degree~%float32 elevationCorrection         #unit: degree~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InstallInfo)))
  "Returns full string definition for message of type 'InstallInfo"
  (cl:format cl:nil "Header  header                   # Includes measurement timestamp and coordinate frame.~%uint32  radarID                  # radar ID~%uint32  frameCnt                 # frame cnt in radar~%uint16  sensorPositionInvalidFlags~%float32 sensorXPosition             #unit: m~%float32 sensorYPosition             #unit: m~%float32 sensorZPosition             #unit: m~%float32 sensorRollAngle             #unit: degree~%float32 sensorPitchAngle            #unit: degree~%float32 sensorYawAngle              #unit: degree~%float32 azimuthCorrection           #unit: degree~%float32 elevationCorrection         #unit: degree~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InstallInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     2
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InstallInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'InstallInfo
    (cl:cons ':header (header msg))
    (cl:cons ':radarID (radarID msg))
    (cl:cons ':frameCnt (frameCnt msg))
    (cl:cons ':sensorPositionInvalidFlags (sensorPositionInvalidFlags msg))
    (cl:cons ':sensorXPosition (sensorXPosition msg))
    (cl:cons ':sensorYPosition (sensorYPosition msg))
    (cl:cons ':sensorZPosition (sensorZPosition msg))
    (cl:cons ':sensorRollAngle (sensorRollAngle msg))
    (cl:cons ':sensorPitchAngle (sensorPitchAngle msg))
    (cl:cons ':sensorYawAngle (sensorYawAngle msg))
    (cl:cons ':azimuthCorrection (azimuthCorrection msg))
    (cl:cons ':elevationCorrection (elevationCorrection msg))
))
