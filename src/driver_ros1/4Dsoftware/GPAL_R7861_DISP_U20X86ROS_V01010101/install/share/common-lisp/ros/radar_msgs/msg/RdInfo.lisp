; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RdInfo.msg.html

(cl:defclass <RdInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frameID
    :reader frameID
    :initarg :frameID
    :type cl:integer
    :initform 0)
   (cfarCount
    :reader cfarCount
    :initarg :cfarCount
    :type cl:integer
    :initform 0)
   (targetNum
    :reader targetNum
    :initarg :targetNum
    :type cl:integer
    :initform 0)
   (resetcnt
    :reader resetcnt
    :initarg :resetcnt
    :type cl:fixnum
    :initform 0)
   (objNum
    :reader objNum
    :initarg :objNum
    :type cl:integer
    :initform 0)
   (carSpeed
    :reader carSpeed
    :initarg :carSpeed
    :type cl:float
    :initform 0.0)
   (carYawRate
    :reader carYawRate
    :initarg :carYawRate
    :type cl:float
    :initform 0.0)
   (gearState
    :reader gearState
    :initarg :gearState
    :type cl:fixnum
    :initform 0)
   (odTimeoutCnt
    :reader odTimeoutCnt
    :initarg :odTimeoutCnt
    :type cl:fixnum
    :initform 0)
   (comProtV_I
    :reader comProtV_I
    :initarg :comProtV_I
    :type cl:fixnum
    :initform 0)
   (comProtV_II
    :reader comProtV_II
    :initarg :comProtV_II
    :type cl:fixnum
    :initform 0)
   (frameLostCnt
    :reader frameLostCnt
    :initarg :frameLostCnt
    :type cl:fixnum
    :initform 0)
   (beforeAdcErrCnt
    :reader beforeAdcErrCnt
    :initarg :beforeAdcErrCnt
    :type cl:fixnum
    :initform 0)
   (afterAdcErrCnt
    :reader afterAdcErrCnt
    :initarg :afterAdcErrCnt
    :type cl:fixnum
    :initform 0)
   (udpFrameLostCnt
    :reader udpFrameLostCnt
    :initarg :udpFrameLostCnt
    :type cl:integer
    :initform 0)
   (udpFreq
    :reader udpFreq
    :initarg :udpFreq
    :type cl:float
    :initform 0.0)
   (timeSyncStatus
    :reader timeSyncStatus
    :initarg :timeSyncStatus
    :type cl:fixnum
    :initform 0)
   (velEstimate
    :reader velEstimate
    :initarg :velEstimate
    :type cl:float
    :initform 0.0)
   (gndK
    :reader gndK
    :initarg :gndK
    :type cl:float
    :initform 0.0)
   (gndB
    :reader gndB
    :initarg :gndB
    :type cl:float
    :initform 0.0)
   (pcl_time
    :reader pcl_time
    :initarg :pcl_time
    :type cl:float
    :initform 0.0)
   (od_time
    :reader od_time
    :initarg :od_time
    :type cl:float
    :initform 0.0)
   (RdFrameLostCnt
    :reader RdFrameLostCnt
    :initarg :RdFrameLostCnt
    :type cl:integer
    :initform 0))
)

(cl:defclass RdInfo (<RdInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RdInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RdInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RdInfo> is deprecated: use radar_msgs-msg:RdInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frameID-val :lambda-list '(m))
(cl:defmethod frameID-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameID-val is deprecated.  Use radar_msgs-msg:frameID instead.")
  (frameID m))

(cl:ensure-generic-function 'cfarCount-val :lambda-list '(m))
(cl:defmethod cfarCount-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:cfarCount-val is deprecated.  Use radar_msgs-msg:cfarCount instead.")
  (cfarCount m))

(cl:ensure-generic-function 'targetNum-val :lambda-list '(m))
(cl:defmethod targetNum-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:targetNum-val is deprecated.  Use radar_msgs-msg:targetNum instead.")
  (targetNum m))

(cl:ensure-generic-function 'resetcnt-val :lambda-list '(m))
(cl:defmethod resetcnt-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:resetcnt-val is deprecated.  Use radar_msgs-msg:resetcnt instead.")
  (resetcnt m))

(cl:ensure-generic-function 'objNum-val :lambda-list '(m))
(cl:defmethod objNum-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:objNum-val is deprecated.  Use radar_msgs-msg:objNum instead.")
  (objNum m))

(cl:ensure-generic-function 'carSpeed-val :lambda-list '(m))
(cl:defmethod carSpeed-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:carSpeed-val is deprecated.  Use radar_msgs-msg:carSpeed instead.")
  (carSpeed m))

(cl:ensure-generic-function 'carYawRate-val :lambda-list '(m))
(cl:defmethod carYawRate-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:carYawRate-val is deprecated.  Use radar_msgs-msg:carYawRate instead.")
  (carYawRate m))

(cl:ensure-generic-function 'gearState-val :lambda-list '(m))
(cl:defmethod gearState-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:gearState-val is deprecated.  Use radar_msgs-msg:gearState instead.")
  (gearState m))

(cl:ensure-generic-function 'odTimeoutCnt-val :lambda-list '(m))
(cl:defmethod odTimeoutCnt-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:odTimeoutCnt-val is deprecated.  Use radar_msgs-msg:odTimeoutCnt instead.")
  (odTimeoutCnt m))

(cl:ensure-generic-function 'comProtV_I-val :lambda-list '(m))
(cl:defmethod comProtV_I-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:comProtV_I-val is deprecated.  Use radar_msgs-msg:comProtV_I instead.")
  (comProtV_I m))

(cl:ensure-generic-function 'comProtV_II-val :lambda-list '(m))
(cl:defmethod comProtV_II-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:comProtV_II-val is deprecated.  Use radar_msgs-msg:comProtV_II instead.")
  (comProtV_II m))

(cl:ensure-generic-function 'frameLostCnt-val :lambda-list '(m))
(cl:defmethod frameLostCnt-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameLostCnt-val is deprecated.  Use radar_msgs-msg:frameLostCnt instead.")
  (frameLostCnt m))

(cl:ensure-generic-function 'beforeAdcErrCnt-val :lambda-list '(m))
(cl:defmethod beforeAdcErrCnt-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:beforeAdcErrCnt-val is deprecated.  Use radar_msgs-msg:beforeAdcErrCnt instead.")
  (beforeAdcErrCnt m))

(cl:ensure-generic-function 'afterAdcErrCnt-val :lambda-list '(m))
(cl:defmethod afterAdcErrCnt-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:afterAdcErrCnt-val is deprecated.  Use radar_msgs-msg:afterAdcErrCnt instead.")
  (afterAdcErrCnt m))

(cl:ensure-generic-function 'udpFrameLostCnt-val :lambda-list '(m))
(cl:defmethod udpFrameLostCnt-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpFrameLostCnt-val is deprecated.  Use radar_msgs-msg:udpFrameLostCnt instead.")
  (udpFrameLostCnt m))

(cl:ensure-generic-function 'udpFreq-val :lambda-list '(m))
(cl:defmethod udpFreq-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpFreq-val is deprecated.  Use radar_msgs-msg:udpFreq instead.")
  (udpFreq m))

(cl:ensure-generic-function 'timeSyncStatus-val :lambda-list '(m))
(cl:defmethod timeSyncStatus-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeSyncStatus-val is deprecated.  Use radar_msgs-msg:timeSyncStatus instead.")
  (timeSyncStatus m))

(cl:ensure-generic-function 'velEstimate-val :lambda-list '(m))
(cl:defmethod velEstimate-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:velEstimate-val is deprecated.  Use radar_msgs-msg:velEstimate instead.")
  (velEstimate m))

(cl:ensure-generic-function 'gndK-val :lambda-list '(m))
(cl:defmethod gndK-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:gndK-val is deprecated.  Use radar_msgs-msg:gndK instead.")
  (gndK m))

(cl:ensure-generic-function 'gndB-val :lambda-list '(m))
(cl:defmethod gndB-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:gndB-val is deprecated.  Use radar_msgs-msg:gndB instead.")
  (gndB m))

(cl:ensure-generic-function 'pcl_time-val :lambda-list '(m))
(cl:defmethod pcl_time-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:pcl_time-val is deprecated.  Use radar_msgs-msg:pcl_time instead.")
  (pcl_time m))

(cl:ensure-generic-function 'od_time-val :lambda-list '(m))
(cl:defmethod od_time-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:od_time-val is deprecated.  Use radar_msgs-msg:od_time instead.")
  (od_time m))

(cl:ensure-generic-function 'RdFrameLostCnt-val :lambda-list '(m))
(cl:defmethod RdFrameLostCnt-val ((m <RdInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:RdFrameLostCnt-val is deprecated.  Use radar_msgs-msg:RdFrameLostCnt instead.")
  (RdFrameLostCnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RdInfo>) ostream)
  "Serializes a message object of type '<RdInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cfarCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cfarCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cfarCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cfarCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'targetNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'targetNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'targetNum)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'resetcnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'objNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'objNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'objNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'objNum)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carYawRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gearState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gearState)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'odTimeoutCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comProtV_I)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'comProtV_I)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comProtV_II)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'comProtV_II)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beforeAdcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'beforeAdcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'afterAdcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'afterAdcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpFrameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpFrameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'udpFrameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'udpFrameLostCnt)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'udpFreq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeSyncStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeSyncStatus)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velEstimate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gndK))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gndB))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pcl_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'od_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RdFrameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RdFrameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RdFrameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RdFrameLostCnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RdInfo>) istream)
  "Deserializes a message object of type '<RdInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cfarCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cfarCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cfarCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cfarCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'targetNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'targetNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'targetNum)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'resetcnt) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'objNum)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carYawRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gearState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gearState)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odTimeoutCnt) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comProtV_I)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'comProtV_I)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comProtV_II)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'comProtV_II)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beforeAdcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'beforeAdcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'afterAdcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'afterAdcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpFrameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpFrameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'udpFrameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'udpFrameLostCnt)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'udpFreq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeSyncStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeSyncStatus)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velEstimate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gndK) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gndB) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pcl_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'od_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RdFrameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RdFrameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RdFrameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RdFrameLostCnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RdInfo>)))
  "Returns string type for a message object of type '<RdInfo>"
  "radar_msgs/RdInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RdInfo)))
  "Returns string type for a message object of type 'RdInfo"
  "radar_msgs/RdInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RdInfo>)))
  "Returns md5sum for a message object of type '<RdInfo>"
  "990a952bd164911e0965074cc0babe8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RdInfo)))
  "Returns md5sum for a message object of type 'RdInfo"
  "990a952bd164911e0965074cc0babe8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RdInfo>)))
  "Returns full string definition for message of type '<RdInfo>"
  (cl:format cl:nil "Header  header              # Includes measurement timestamp and coordinate frame.~%uint32  frameID~%uint32  cfarCount           # cfar count~%uint32  targetNum           # targets Num~%int16   resetcnt            # reset count~%uint32  objNum              # object number of this frame~%float32 carSpeed            # ego car speed~%float32 carYawRate          # ego car yaw rate~%uint16  gearState           # ego car gear state~%int16   odTimeoutCnt~%uint16  comProtV_I~%uint16  comProtV_II~%uint16  frameLostCnt        # frame lost count checked by ROS sw~%uint16  beforeAdcErrCnt~%uint16  afterAdcErrCnt~%uint32  udpFrameLostCnt     # counter of lost frames~%float32 udpFreq             # frames frequency in Hz~%uint16  timeSyncStatus      # status of time synchronization~%float32 velEstimate         # estimated car speed, m/s~%float32 gndK~%float32 gndB~%float32 pcl_time            # duration of od process (ms)~%float32 od_time             # duration of od process (ms)~%uint32  RdFrameLostCnt      # frame lost count in radar~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RdInfo)))
  "Returns full string definition for message of type 'RdInfo"
  (cl:format cl:nil "Header  header              # Includes measurement timestamp and coordinate frame.~%uint32  frameID~%uint32  cfarCount           # cfar count~%uint32  targetNum           # targets Num~%int16   resetcnt            # reset count~%uint32  objNum              # object number of this frame~%float32 carSpeed            # ego car speed~%float32 carYawRate          # ego car yaw rate~%uint16  gearState           # ego car gear state~%int16   odTimeoutCnt~%uint16  comProtV_I~%uint16  comProtV_II~%uint16  frameLostCnt        # frame lost count checked by ROS sw~%uint16  beforeAdcErrCnt~%uint16  afterAdcErrCnt~%uint32  udpFrameLostCnt     # counter of lost frames~%float32 udpFreq             # frames frequency in Hz~%uint16  timeSyncStatus      # status of time synchronization~%float32 velEstimate         # estimated car speed, m/s~%float32 gndK~%float32 gndB~%float32 pcl_time            # duration of od process (ms)~%float32 od_time             # duration of od process (ms)~%uint32  RdFrameLostCnt      # frame lost count in radar~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RdInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     2
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
     4
     4
     2
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RdInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RdInfo
    (cl:cons ':header (header msg))
    (cl:cons ':frameID (frameID msg))
    (cl:cons ':cfarCount (cfarCount msg))
    (cl:cons ':targetNum (targetNum msg))
    (cl:cons ':resetcnt (resetcnt msg))
    (cl:cons ':objNum (objNum msg))
    (cl:cons ':carSpeed (carSpeed msg))
    (cl:cons ':carYawRate (carYawRate msg))
    (cl:cons ':gearState (gearState msg))
    (cl:cons ':odTimeoutCnt (odTimeoutCnt msg))
    (cl:cons ':comProtV_I (comProtV_I msg))
    (cl:cons ':comProtV_II (comProtV_II msg))
    (cl:cons ':frameLostCnt (frameLostCnt msg))
    (cl:cons ':beforeAdcErrCnt (beforeAdcErrCnt msg))
    (cl:cons ':afterAdcErrCnt (afterAdcErrCnt msg))
    (cl:cons ':udpFrameLostCnt (udpFrameLostCnt msg))
    (cl:cons ':udpFreq (udpFreq msg))
    (cl:cons ':timeSyncStatus (timeSyncStatus msg))
    (cl:cons ':velEstimate (velEstimate msg))
    (cl:cons ':gndK (gndK msg))
    (cl:cons ':gndB (gndB msg))
    (cl:cons ':pcl_time (pcl_time msg))
    (cl:cons ':od_time (od_time msg))
    (cl:cons ':RdFrameLostCnt (RdFrameLostCnt msg))
))
