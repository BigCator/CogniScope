; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonSynthFreqNonLiveRep.msg.html

(cl:defclass <RlMonSynthFreqNonLiveRep> (roslisp-msg-protocol:ros-message)
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
   (profIndex0
    :reader profIndex0
    :initarg :profIndex0
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
   (maxFreqErVal0
    :reader maxFreqErVal0
    :initarg :maxFreqErVal0
    :type cl:integer
    :initform 0)
   (freqFailCnt0
    :reader freqFailCnt0
    :initarg :freqFailCnt0
    :type cl:integer
    :initform 0)
   (maxFreqFailTime0
    :reader maxFreqFailTime0
    :initarg :maxFreqFailTime0
    :type cl:integer
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:integer
    :initform 0)
   (profIndex1
    :reader profIndex1
    :initarg :profIndex1
    :type cl:fixnum
    :initform 0)
   (reserved3
    :reader reserved3
    :initarg :reserved3
    :type cl:fixnum
    :initform 0)
   (reserved4
    :reader reserved4
    :initarg :reserved4
    :type cl:fixnum
    :initform 0)
   (maxFreqErVal1
    :reader maxFreqErVal1
    :initarg :maxFreqErVal1
    :type cl:integer
    :initform 0)
   (freqFailCnt1
    :reader freqFailCnt1
    :initarg :freqFailCnt1
    :type cl:integer
    :initform 0)
   (maxFreqFailTime1
    :reader maxFreqFailTime1
    :initarg :maxFreqFailTime1
    :type cl:integer
    :initform 0)
   (reserved5
    :reader reserved5
    :initarg :reserved5
    :type cl:integer
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonSynthFreqNonLiveRep (<RlMonSynthFreqNonLiveRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonSynthFreqNonLiveRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonSynthFreqNonLiveRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonSynthFreqNonLiveRep> is deprecated: use radar_msgs-msg:RlMonSynthFreqNonLiveRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex0-val :lambda-list '(m))
(cl:defmethod profIndex0-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex0-val is deprecated.  Use radar_msgs-msg:profIndex0 instead.")
  (profIndex0 m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'maxFreqErVal0-val :lambda-list '(m))
(cl:defmethod maxFreqErVal0-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:maxFreqErVal0-val is deprecated.  Use radar_msgs-msg:maxFreqErVal0 instead.")
  (maxFreqErVal0 m))

(cl:ensure-generic-function 'freqFailCnt0-val :lambda-list '(m))
(cl:defmethod freqFailCnt0-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:freqFailCnt0-val is deprecated.  Use radar_msgs-msg:freqFailCnt0 instead.")
  (freqFailCnt0 m))

(cl:ensure-generic-function 'maxFreqFailTime0-val :lambda-list '(m))
(cl:defmethod maxFreqFailTime0-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:maxFreqFailTime0-val is deprecated.  Use radar_msgs-msg:maxFreqFailTime0 instead.")
  (maxFreqFailTime0 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved2-val is deprecated.  Use radar_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'profIndex1-val :lambda-list '(m))
(cl:defmethod profIndex1-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex1-val is deprecated.  Use radar_msgs-msg:profIndex1 instead.")
  (profIndex1 m))

(cl:ensure-generic-function 'reserved3-val :lambda-list '(m))
(cl:defmethod reserved3-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved3-val is deprecated.  Use radar_msgs-msg:reserved3 instead.")
  (reserved3 m))

(cl:ensure-generic-function 'reserved4-val :lambda-list '(m))
(cl:defmethod reserved4-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved4-val is deprecated.  Use radar_msgs-msg:reserved4 instead.")
  (reserved4 m))

(cl:ensure-generic-function 'maxFreqErVal1-val :lambda-list '(m))
(cl:defmethod maxFreqErVal1-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:maxFreqErVal1-val is deprecated.  Use radar_msgs-msg:maxFreqErVal1 instead.")
  (maxFreqErVal1 m))

(cl:ensure-generic-function 'freqFailCnt1-val :lambda-list '(m))
(cl:defmethod freqFailCnt1-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:freqFailCnt1-val is deprecated.  Use radar_msgs-msg:freqFailCnt1 instead.")
  (freqFailCnt1 m))

(cl:ensure-generic-function 'maxFreqFailTime1-val :lambda-list '(m))
(cl:defmethod maxFreqFailTime1-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:maxFreqFailTime1-val is deprecated.  Use radar_msgs-msg:maxFreqFailTime1 instead.")
  (maxFreqFailTime1 m))

(cl:ensure-generic-function 'reserved5-val :lambda-list '(m))
(cl:defmethod reserved5-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved5-val is deprecated.  Use radar_msgs-msg:reserved5 instead.")
  (reserved5 m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonSynthFreqNonLiveRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonSynthFreqNonLiveRep>) ostream)
  "Serializes a message object of type '<RlMonSynthFreqNonLiveRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'maxFreqErVal0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqFailCnt0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freqFailCnt0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'freqFailCnt0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'freqFailCnt0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxFreqFailTime0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxFreqFailTime0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'maxFreqFailTime0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'maxFreqFailTime0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved4)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'maxFreqErVal1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqFailCnt1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freqFailCnt1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'freqFailCnt1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'freqFailCnt1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxFreqFailTime1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxFreqFailTime1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'maxFreqFailTime1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'maxFreqFailTime1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonSynthFreqNonLiveRep>) istream)
  "Deserializes a message object of type '<RlMonSynthFreqNonLiveRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maxFreqErVal0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqFailCnt0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freqFailCnt0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'freqFailCnt0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'freqFailCnt0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxFreqFailTime0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxFreqFailTime0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'maxFreqFailTime0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'maxFreqFailTime0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved4)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maxFreqErVal1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freqFailCnt1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freqFailCnt1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'freqFailCnt1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'freqFailCnt1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxFreqFailTime1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'maxFreqFailTime1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'maxFreqFailTime1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'maxFreqFailTime1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonSynthFreqNonLiveRep>)))
  "Returns string type for a message object of type '<RlMonSynthFreqNonLiveRep>"
  "radar_msgs/RlMonSynthFreqNonLiveRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonSynthFreqNonLiveRep)))
  "Returns string type for a message object of type 'RlMonSynthFreqNonLiveRep"
  "radar_msgs/RlMonSynthFreqNonLiveRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonSynthFreqNonLiveRep>)))
  "Returns md5sum for a message object of type '<RlMonSynthFreqNonLiveRep>"
  "d0edbc23d8d4e3fb8b9ba98fa67b4c6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonSynthFreqNonLiveRep)))
  "Returns md5sum for a message object of type 'RlMonSynthFreqNonLiveRep"
  "d0edbc23d8d4e3fb8b9ba98fa67b4c6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonSynthFreqNonLiveRep>)))
  "Returns full string definition for message of type '<RlMonSynthFreqNonLiveRep>"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex0~%uint8 reserved0~%uint16 reserved1~%int32 maxFreqErVal0~%uint32 freqFailCnt0~%uint32 maxFreqFailTime0~%uint32 reserved2~%uint8 profIndex1~%uint8 reserved3~%uint16 reserved4~%int32 maxFreqErVal1~%uint32 freqFailCnt1~%uint32 maxFreqFailTime1~%uint32 reserved5~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonSynthFreqNonLiveRep)))
  "Returns full string definition for message of type 'RlMonSynthFreqNonLiveRep"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex0~%uint8 reserved0~%uint16 reserved1~%int32 maxFreqErVal0~%uint32 freqFailCnt0~%uint32 maxFreqFailTime0~%uint32 reserved2~%uint8 profIndex1~%uint8 reserved3~%uint16 reserved4~%int32 maxFreqErVal1~%uint32 freqFailCnt1~%uint32 maxFreqFailTime1~%uint32 reserved5~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonSynthFreqNonLiveRep>))
  (cl:+ 0
     2
     2
     1
     1
     2
     4
     4
     4
     4
     1
     1
     2
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonSynthFreqNonLiveRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonSynthFreqNonLiveRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex0 (profIndex0 msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':maxFreqErVal0 (maxFreqErVal0 msg))
    (cl:cons ':freqFailCnt0 (freqFailCnt0 msg))
    (cl:cons ':maxFreqFailTime0 (maxFreqFailTime0 msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':profIndex1 (profIndex1 msg))
    (cl:cons ':reserved3 (reserved3 msg))
    (cl:cons ':reserved4 (reserved4 msg))
    (cl:cons ':maxFreqErVal1 (maxFreqErVal1 msg))
    (cl:cons ':freqFailCnt1 (freqFailCnt1 msg))
    (cl:cons ':maxFreqFailTime1 (maxFreqFailTime1 msg))
    (cl:cons ':reserved5 (reserved5 msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
