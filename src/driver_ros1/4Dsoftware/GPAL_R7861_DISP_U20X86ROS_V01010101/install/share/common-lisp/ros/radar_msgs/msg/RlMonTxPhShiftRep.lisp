; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonTxPhShiftRep.msg.html

(cl:defclass <RlMonTxPhShiftRep> (roslisp-msg-protocol:ros-message)
  ((statusFlags
    :reader statusFlags
    :initarg :statusFlags
    :type cl:fixnum
    :initform 0)
   (errorCode
    :reader errorCode
    :initarg :errorCode
    :type cl:fixnum
    :initform 0)
   (profIndex
    :reader profIndex
    :initarg :profIndex
    :type cl:fixnum
    :initform 0)
   (reserved0
    :reader reserved0
    :initarg :reserved0
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (phaseShifterMonVal1
    :reader phaseShifterMonVal1
    :initarg :phaseShifterMonVal1
    :type cl:fixnum
    :initform 0)
   (phaseShifterMonVal2
    :reader phaseShifterMonVal2
    :initarg :phaseShifterMonVal2
    :type cl:fixnum
    :initform 0)
   (phaseShifterMonVal3
    :reader phaseShifterMonVal3
    :initarg :phaseShifterMonVal3
    :type cl:fixnum
    :initform 0)
   (phaseShifterMonVal4
    :reader phaseShifterMonVal4
    :initarg :phaseShifterMonVal4
    :type cl:fixnum
    :initform 0)
   (txPsAmplitudeVal1
    :reader txPsAmplitudeVal1
    :initarg :txPsAmplitudeVal1
    :type cl:fixnum
    :initform 0)
   (txPsAmplitudeVal2
    :reader txPsAmplitudeVal2
    :initarg :txPsAmplitudeVal2
    :type cl:fixnum
    :initform 0)
   (txPsAmplitudeVal3
    :reader txPsAmplitudeVal3
    :initarg :txPsAmplitudeVal3
    :type cl:fixnum
    :initform 0)
   (txPsAmplitudeVal4
    :reader txPsAmplitudeVal4
    :initarg :txPsAmplitudeVal4
    :type cl:fixnum
    :initform 0)
   (txPsNoiseVal1
    :reader txPsNoiseVal1
    :initarg :txPsNoiseVal1
    :type cl:fixnum
    :initform 0)
   (txPsNoiseVal2
    :reader txPsNoiseVal2
    :initarg :txPsNoiseVal2
    :type cl:fixnum
    :initform 0)
   (txPsNoiseVal3
    :reader txPsNoiseVal3
    :initarg :txPsNoiseVal3
    :type cl:fixnum
    :initform 0)
   (txPsNoiseVal4
    :reader txPsNoiseVal4
    :initarg :txPsNoiseVal4
    :type cl:fixnum
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:integer
    :initform 0)
   (reserved3
    :reader reserved3
    :initarg :reserved3
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonTxPhShiftRep (<RlMonTxPhShiftRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonTxPhShiftRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonTxPhShiftRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonTxPhShiftRep> is deprecated: use radar_msgs-msg:RlMonTxPhShiftRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex-val :lambda-list '(m))
(cl:defmethod profIndex-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex-val is deprecated.  Use radar_msgs-msg:profIndex instead.")
  (profIndex m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'phaseShifterMonVal1-val :lambda-list '(m))
(cl:defmethod phaseShifterMonVal1-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:phaseShifterMonVal1-val is deprecated.  Use radar_msgs-msg:phaseShifterMonVal1 instead.")
  (phaseShifterMonVal1 m))

(cl:ensure-generic-function 'phaseShifterMonVal2-val :lambda-list '(m))
(cl:defmethod phaseShifterMonVal2-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:phaseShifterMonVal2-val is deprecated.  Use radar_msgs-msg:phaseShifterMonVal2 instead.")
  (phaseShifterMonVal2 m))

(cl:ensure-generic-function 'phaseShifterMonVal3-val :lambda-list '(m))
(cl:defmethod phaseShifterMonVal3-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:phaseShifterMonVal3-val is deprecated.  Use radar_msgs-msg:phaseShifterMonVal3 instead.")
  (phaseShifterMonVal3 m))

(cl:ensure-generic-function 'phaseShifterMonVal4-val :lambda-list '(m))
(cl:defmethod phaseShifterMonVal4-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:phaseShifterMonVal4-val is deprecated.  Use radar_msgs-msg:phaseShifterMonVal4 instead.")
  (phaseShifterMonVal4 m))

(cl:ensure-generic-function 'txPsAmplitudeVal1-val :lambda-list '(m))
(cl:defmethod txPsAmplitudeVal1-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsAmplitudeVal1-val is deprecated.  Use radar_msgs-msg:txPsAmplitudeVal1 instead.")
  (txPsAmplitudeVal1 m))

(cl:ensure-generic-function 'txPsAmplitudeVal2-val :lambda-list '(m))
(cl:defmethod txPsAmplitudeVal2-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsAmplitudeVal2-val is deprecated.  Use radar_msgs-msg:txPsAmplitudeVal2 instead.")
  (txPsAmplitudeVal2 m))

(cl:ensure-generic-function 'txPsAmplitudeVal3-val :lambda-list '(m))
(cl:defmethod txPsAmplitudeVal3-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsAmplitudeVal3-val is deprecated.  Use radar_msgs-msg:txPsAmplitudeVal3 instead.")
  (txPsAmplitudeVal3 m))

(cl:ensure-generic-function 'txPsAmplitudeVal4-val :lambda-list '(m))
(cl:defmethod txPsAmplitudeVal4-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsAmplitudeVal4-val is deprecated.  Use radar_msgs-msg:txPsAmplitudeVal4 instead.")
  (txPsAmplitudeVal4 m))

(cl:ensure-generic-function 'txPsNoiseVal1-val :lambda-list '(m))
(cl:defmethod txPsNoiseVal1-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsNoiseVal1-val is deprecated.  Use radar_msgs-msg:txPsNoiseVal1 instead.")
  (txPsNoiseVal1 m))

(cl:ensure-generic-function 'txPsNoiseVal2-val :lambda-list '(m))
(cl:defmethod txPsNoiseVal2-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsNoiseVal2-val is deprecated.  Use radar_msgs-msg:txPsNoiseVal2 instead.")
  (txPsNoiseVal2 m))

(cl:ensure-generic-function 'txPsNoiseVal3-val :lambda-list '(m))
(cl:defmethod txPsNoiseVal3-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsNoiseVal3-val is deprecated.  Use radar_msgs-msg:txPsNoiseVal3 instead.")
  (txPsNoiseVal3 m))

(cl:ensure-generic-function 'txPsNoiseVal4-val :lambda-list '(m))
(cl:defmethod txPsNoiseVal4-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPsNoiseVal4-val is deprecated.  Use radar_msgs-msg:txPsNoiseVal4 instead.")
  (txPsNoiseVal4 m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved2-val is deprecated.  Use radar_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'reserved3-val :lambda-list '(m))
(cl:defmethod reserved3-val ((m <RlMonTxPhShiftRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved3-val is deprecated.  Use radar_msgs-msg:reserved3 instead.")
  (reserved3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonTxPhShiftRep>) ostream)
  "Serializes a message object of type '<RlMonTxPhShiftRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal4)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'txPsAmplitudeVal1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txPsAmplitudeVal2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txPsAmplitudeVal3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txPsAmplitudeVal4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txPsNoiseVal1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txPsNoiseVal2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txPsNoiseVal3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txPsNoiseVal4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved3)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonTxPhShiftRep>) istream)
  "Deserializes a message object of type '<RlMonTxPhShiftRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phaseShifterMonVal4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'phaseShifterMonVal4)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsAmplitudeVal1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsAmplitudeVal2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsAmplitudeVal3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsAmplitudeVal4) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsNoiseVal1) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsNoiseVal2) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsNoiseVal3) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txPsNoiseVal4) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonTxPhShiftRep>)))
  "Returns string type for a message object of type '<RlMonTxPhShiftRep>"
  "radar_msgs/RlMonTxPhShiftRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonTxPhShiftRep)))
  "Returns string type for a message object of type 'RlMonTxPhShiftRep"
  "radar_msgs/RlMonTxPhShiftRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonTxPhShiftRep>)))
  "Returns md5sum for a message object of type '<RlMonTxPhShiftRep>"
  "c35e9ef88c30d781e09f2fb7d35ab829")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonTxPhShiftRep)))
  "Returns md5sum for a message object of type 'RlMonTxPhShiftRep"
  "c35e9ef88c30d781e09f2fb7d35ab829")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonTxPhShiftRep>)))
  "Returns full string definition for message of type '<RlMonTxPhShiftRep>"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint16 phaseShifterMonVal1~%uint16 phaseShifterMonVal2~%uint16 phaseShifterMonVal3~%uint16 phaseShifterMonVal4~%int16 txPsAmplitudeVal1~%int16 txPsAmplitudeVal2~%int16 txPsAmplitudeVal3~%int16 txPsAmplitudeVal4~%int8 txPsNoiseVal1~%int8 txPsNoiseVal2~%int8 txPsNoiseVal3~%int8 txPsNoiseVal4~%uint32 timeStamp~%uint32 reserved2~%uint32 reserved3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonTxPhShiftRep)))
  "Returns full string definition for message of type 'RlMonTxPhShiftRep"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint16 phaseShifterMonVal1~%uint16 phaseShifterMonVal2~%uint16 phaseShifterMonVal3~%uint16 phaseShifterMonVal4~%int16 txPsAmplitudeVal1~%int16 txPsAmplitudeVal2~%int16 txPsAmplitudeVal3~%int16 txPsAmplitudeVal4~%int8 txPsNoiseVal1~%int8 txPsNoiseVal2~%int8 txPsNoiseVal3~%int8 txPsNoiseVal4~%uint32 timeStamp~%uint32 reserved2~%uint32 reserved3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonTxPhShiftRep>))
  (cl:+ 0
     2
     2
     1
     1
     2
     2
     2
     2
     2
     2
     2
     2
     2
     1
     1
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonTxPhShiftRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonTxPhShiftRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex (profIndex msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':phaseShifterMonVal1 (phaseShifterMonVal1 msg))
    (cl:cons ':phaseShifterMonVal2 (phaseShifterMonVal2 msg))
    (cl:cons ':phaseShifterMonVal3 (phaseShifterMonVal3 msg))
    (cl:cons ':phaseShifterMonVal4 (phaseShifterMonVal4 msg))
    (cl:cons ':txPsAmplitudeVal1 (txPsAmplitudeVal1 msg))
    (cl:cons ':txPsAmplitudeVal2 (txPsAmplitudeVal2 msg))
    (cl:cons ':txPsAmplitudeVal3 (txPsAmplitudeVal3 msg))
    (cl:cons ':txPsAmplitudeVal4 (txPsAmplitudeVal4 msg))
    (cl:cons ':txPsNoiseVal1 (txPsNoiseVal1 msg))
    (cl:cons ':txPsNoiseVal2 (txPsNoiseVal2 msg))
    (cl:cons ':txPsNoiseVal3 (txPsNoiseVal3 msg))
    (cl:cons ':txPsNoiseVal4 (txPsNoiseVal4 msg))
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':reserved3 (reserved3 msg))
))
