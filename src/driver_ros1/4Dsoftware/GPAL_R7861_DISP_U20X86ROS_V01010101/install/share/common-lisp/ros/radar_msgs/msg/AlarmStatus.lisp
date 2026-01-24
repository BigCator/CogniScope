; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude AlarmStatus.msg.html

(cl:defclass <AlarmStatus> (roslisp-msg-protocol:ros-message)
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
   (alarmNum
    :reader alarmNum
    :initarg :alarmNum
    :type cl:integer
    :initform 0)
   (alarmCode01
    :reader alarmCode01
    :initarg :alarmCode01
    :type cl:fixnum
    :initform 0)
   (alarmCode02
    :reader alarmCode02
    :initarg :alarmCode02
    :type cl:fixnum
    :initform 0)
   (alarmCode03
    :reader alarmCode03
    :initarg :alarmCode03
    :type cl:fixnum
    :initform 0)
   (alarmCode04
    :reader alarmCode04
    :initarg :alarmCode04
    :type cl:fixnum
    :initform 0)
   (alarmCode05
    :reader alarmCode05
    :initarg :alarmCode05
    :type cl:fixnum
    :initform 0)
   (alarmCode06
    :reader alarmCode06
    :initarg :alarmCode06
    :type cl:fixnum
    :initform 0)
   (alarmCode07
    :reader alarmCode07
    :initarg :alarmCode07
    :type cl:fixnum
    :initform 0)
   (alarmCode08
    :reader alarmCode08
    :initarg :alarmCode08
    :type cl:fixnum
    :initform 0)
   (alarmCode09
    :reader alarmCode09
    :initarg :alarmCode09
    :type cl:fixnum
    :initform 0)
   (alarmCode10
    :reader alarmCode10
    :initarg :alarmCode10
    :type cl:fixnum
    :initform 0)
   (alarmCode11
    :reader alarmCode11
    :initarg :alarmCode11
    :type cl:fixnum
    :initform 0)
   (alarmCode12
    :reader alarmCode12
    :initarg :alarmCode12
    :type cl:fixnum
    :initform 0)
   (alarmCode13
    :reader alarmCode13
    :initarg :alarmCode13
    :type cl:fixnum
    :initform 0)
   (alarmCode14
    :reader alarmCode14
    :initarg :alarmCode14
    :type cl:fixnum
    :initform 0)
   (alarmCode15
    :reader alarmCode15
    :initarg :alarmCode15
    :type cl:fixnum
    :initform 0)
   (alarmCode16
    :reader alarmCode16
    :initarg :alarmCode16
    :type cl:fixnum
    :initform 0)
   (alarmCode17
    :reader alarmCode17
    :initarg :alarmCode17
    :type cl:fixnum
    :initform 0)
   (alarmCode18
    :reader alarmCode18
    :initarg :alarmCode18
    :type cl:fixnum
    :initform 0)
   (alarmCode19
    :reader alarmCode19
    :initarg :alarmCode19
    :type cl:fixnum
    :initform 0)
   (alarmCode20
    :reader alarmCode20
    :initarg :alarmCode20
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AlarmStatus (<AlarmStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AlarmStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AlarmStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<AlarmStatus> is deprecated: use radar_msgs-msg:AlarmStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarID-val :lambda-list '(m))
(cl:defmethod radarID-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarID-val is deprecated.  Use radar_msgs-msg:radarID instead.")
  (radarID m))

(cl:ensure-generic-function 'frameCnt-val :lambda-list '(m))
(cl:defmethod frameCnt-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameCnt-val is deprecated.  Use radar_msgs-msg:frameCnt instead.")
  (frameCnt m))

(cl:ensure-generic-function 'alarmNum-val :lambda-list '(m))
(cl:defmethod alarmNum-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmNum-val is deprecated.  Use radar_msgs-msg:alarmNum instead.")
  (alarmNum m))

(cl:ensure-generic-function 'alarmCode01-val :lambda-list '(m))
(cl:defmethod alarmCode01-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode01-val is deprecated.  Use radar_msgs-msg:alarmCode01 instead.")
  (alarmCode01 m))

(cl:ensure-generic-function 'alarmCode02-val :lambda-list '(m))
(cl:defmethod alarmCode02-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode02-val is deprecated.  Use radar_msgs-msg:alarmCode02 instead.")
  (alarmCode02 m))

(cl:ensure-generic-function 'alarmCode03-val :lambda-list '(m))
(cl:defmethod alarmCode03-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode03-val is deprecated.  Use radar_msgs-msg:alarmCode03 instead.")
  (alarmCode03 m))

(cl:ensure-generic-function 'alarmCode04-val :lambda-list '(m))
(cl:defmethod alarmCode04-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode04-val is deprecated.  Use radar_msgs-msg:alarmCode04 instead.")
  (alarmCode04 m))

(cl:ensure-generic-function 'alarmCode05-val :lambda-list '(m))
(cl:defmethod alarmCode05-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode05-val is deprecated.  Use radar_msgs-msg:alarmCode05 instead.")
  (alarmCode05 m))

(cl:ensure-generic-function 'alarmCode06-val :lambda-list '(m))
(cl:defmethod alarmCode06-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode06-val is deprecated.  Use radar_msgs-msg:alarmCode06 instead.")
  (alarmCode06 m))

(cl:ensure-generic-function 'alarmCode07-val :lambda-list '(m))
(cl:defmethod alarmCode07-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode07-val is deprecated.  Use radar_msgs-msg:alarmCode07 instead.")
  (alarmCode07 m))

(cl:ensure-generic-function 'alarmCode08-val :lambda-list '(m))
(cl:defmethod alarmCode08-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode08-val is deprecated.  Use radar_msgs-msg:alarmCode08 instead.")
  (alarmCode08 m))

(cl:ensure-generic-function 'alarmCode09-val :lambda-list '(m))
(cl:defmethod alarmCode09-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode09-val is deprecated.  Use radar_msgs-msg:alarmCode09 instead.")
  (alarmCode09 m))

(cl:ensure-generic-function 'alarmCode10-val :lambda-list '(m))
(cl:defmethod alarmCode10-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode10-val is deprecated.  Use radar_msgs-msg:alarmCode10 instead.")
  (alarmCode10 m))

(cl:ensure-generic-function 'alarmCode11-val :lambda-list '(m))
(cl:defmethod alarmCode11-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode11-val is deprecated.  Use radar_msgs-msg:alarmCode11 instead.")
  (alarmCode11 m))

(cl:ensure-generic-function 'alarmCode12-val :lambda-list '(m))
(cl:defmethod alarmCode12-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode12-val is deprecated.  Use radar_msgs-msg:alarmCode12 instead.")
  (alarmCode12 m))

(cl:ensure-generic-function 'alarmCode13-val :lambda-list '(m))
(cl:defmethod alarmCode13-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode13-val is deprecated.  Use radar_msgs-msg:alarmCode13 instead.")
  (alarmCode13 m))

(cl:ensure-generic-function 'alarmCode14-val :lambda-list '(m))
(cl:defmethod alarmCode14-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode14-val is deprecated.  Use radar_msgs-msg:alarmCode14 instead.")
  (alarmCode14 m))

(cl:ensure-generic-function 'alarmCode15-val :lambda-list '(m))
(cl:defmethod alarmCode15-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode15-val is deprecated.  Use radar_msgs-msg:alarmCode15 instead.")
  (alarmCode15 m))

(cl:ensure-generic-function 'alarmCode16-val :lambda-list '(m))
(cl:defmethod alarmCode16-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode16-val is deprecated.  Use radar_msgs-msg:alarmCode16 instead.")
  (alarmCode16 m))

(cl:ensure-generic-function 'alarmCode17-val :lambda-list '(m))
(cl:defmethod alarmCode17-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode17-val is deprecated.  Use radar_msgs-msg:alarmCode17 instead.")
  (alarmCode17 m))

(cl:ensure-generic-function 'alarmCode18-val :lambda-list '(m))
(cl:defmethod alarmCode18-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode18-val is deprecated.  Use radar_msgs-msg:alarmCode18 instead.")
  (alarmCode18 m))

(cl:ensure-generic-function 'alarmCode19-val :lambda-list '(m))
(cl:defmethod alarmCode19-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode19-val is deprecated.  Use radar_msgs-msg:alarmCode19 instead.")
  (alarmCode19 m))

(cl:ensure-generic-function 'alarmCode20-val :lambda-list '(m))
(cl:defmethod alarmCode20-val ((m <AlarmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:alarmCode20-val is deprecated.  Use radar_msgs-msg:alarmCode20 instead.")
  (alarmCode20 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AlarmStatus>) ostream)
  "Serializes a message object of type '<AlarmStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'alarmNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'alarmNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode01)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode01)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode02)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode02)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode03)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode03)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode04)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode04)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode05)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode05)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode06)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode06)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode07)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode07)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode08)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode08)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode09)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode09)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode16)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode17)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode17)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode18)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode18)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode19)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode19)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode20)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode20)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AlarmStatus>) istream)
  "Deserializes a message object of type '<AlarmStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'alarmNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'alarmNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode01)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode01)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode02)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode02)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode03)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode03)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode04)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode04)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode05)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode05)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode06)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode06)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode07)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode07)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode08)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode08)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode09)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode09)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode16)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode17)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode17)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode18)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode18)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode19)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode19)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alarmCode20)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'alarmCode20)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AlarmStatus>)))
  "Returns string type for a message object of type '<AlarmStatus>"
  "radar_msgs/AlarmStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlarmStatus)))
  "Returns string type for a message object of type 'AlarmStatus"
  "radar_msgs/AlarmStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AlarmStatus>)))
  "Returns md5sum for a message object of type '<AlarmStatus>"
  "7c014f54c8b482dfb210caece3475030")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AlarmStatus)))
  "Returns md5sum for a message object of type 'AlarmStatus"
  "7c014f54c8b482dfb210caece3475030")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AlarmStatus>)))
  "Returns full string definition for message of type '<AlarmStatus>"
  (cl:format cl:nil "Header header                   # Includes measurement timestamp and coordinate frame.~%uint32 radarID                  # radar ID~%uint32 frameCnt                 # frame cnt in radar~%uint32 alarmNum                 # number of alarm~%uint16 alarmCode01~%uint16 alarmCode02~%uint16 alarmCode03~%uint16 alarmCode04~%uint16 alarmCode05~%uint16 alarmCode06~%uint16 alarmCode07~%uint16 alarmCode08~%uint16 alarmCode09~%uint16 alarmCode10~%uint16 alarmCode11~%uint16 alarmCode12~%uint16 alarmCode13~%uint16 alarmCode14~%uint16 alarmCode15~%uint16 alarmCode16~%uint16 alarmCode17~%uint16 alarmCode18~%uint16 alarmCode19~%uint16 alarmCode20~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AlarmStatus)))
  "Returns full string definition for message of type 'AlarmStatus"
  (cl:format cl:nil "Header header                   # Includes measurement timestamp and coordinate frame.~%uint32 radarID                  # radar ID~%uint32 frameCnt                 # frame cnt in radar~%uint32 alarmNum                 # number of alarm~%uint16 alarmCode01~%uint16 alarmCode02~%uint16 alarmCode03~%uint16 alarmCode04~%uint16 alarmCode05~%uint16 alarmCode06~%uint16 alarmCode07~%uint16 alarmCode08~%uint16 alarmCode09~%uint16 alarmCode10~%uint16 alarmCode11~%uint16 alarmCode12~%uint16 alarmCode13~%uint16 alarmCode14~%uint16 alarmCode15~%uint16 alarmCode16~%uint16 alarmCode17~%uint16 alarmCode18~%uint16 alarmCode19~%uint16 alarmCode20~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AlarmStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AlarmStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AlarmStatus
    (cl:cons ':header (header msg))
    (cl:cons ':radarID (radarID msg))
    (cl:cons ':frameCnt (frameCnt msg))
    (cl:cons ':alarmNum (alarmNum msg))
    (cl:cons ':alarmCode01 (alarmCode01 msg))
    (cl:cons ':alarmCode02 (alarmCode02 msg))
    (cl:cons ':alarmCode03 (alarmCode03 msg))
    (cl:cons ':alarmCode04 (alarmCode04 msg))
    (cl:cons ':alarmCode05 (alarmCode05 msg))
    (cl:cons ':alarmCode06 (alarmCode06 msg))
    (cl:cons ':alarmCode07 (alarmCode07 msg))
    (cl:cons ':alarmCode08 (alarmCode08 msg))
    (cl:cons ':alarmCode09 (alarmCode09 msg))
    (cl:cons ':alarmCode10 (alarmCode10 msg))
    (cl:cons ':alarmCode11 (alarmCode11 msg))
    (cl:cons ':alarmCode12 (alarmCode12 msg))
    (cl:cons ':alarmCode13 (alarmCode13 msg))
    (cl:cons ':alarmCode14 (alarmCode14 msg))
    (cl:cons ':alarmCode15 (alarmCode15 msg))
    (cl:cons ':alarmCode16 (alarmCode16 msg))
    (cl:cons ':alarmCode17 (alarmCode17 msg))
    (cl:cons ':alarmCode18 (alarmCode18 msg))
    (cl:cons ':alarmCode19 (alarmCode19 msg))
    (cl:cons ':alarmCode20 (alarmCode20 msg))
))
