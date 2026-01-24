; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonTxBallBreakRep.msg.html

(cl:defclass <RlMonTxBallBreakRep> (roslisp-msg-protocol:ros-message)
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
   (txReflCoefVal
    :reader txReflCoefVal
    :initarg :txReflCoefVal
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
    :type cl:integer
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonTxBallBreakRep (<RlMonTxBallBreakRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonTxBallBreakRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonTxBallBreakRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonTxBallBreakRep> is deprecated: use radar_msgs-msg:RlMonTxBallBreakRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonTxBallBreakRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonTxBallBreakRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'txReflCoefVal-val :lambda-list '(m))
(cl:defmethod txReflCoefVal-val ((m <RlMonTxBallBreakRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txReflCoefVal-val is deprecated.  Use radar_msgs-msg:txReflCoefVal instead.")
  (txReflCoefVal m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonTxBallBreakRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlMonTxBallBreakRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonTxBallBreakRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonTxBallBreakRep>) ostream)
  "Serializes a message object of type '<RlMonTxBallBreakRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'txReflCoefVal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonTxBallBreakRep>) istream)
  "Deserializes a message object of type '<RlMonTxBallBreakRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txReflCoefVal) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonTxBallBreakRep>)))
  "Returns string type for a message object of type '<RlMonTxBallBreakRep>"
  "radar_msgs/RlMonTxBallBreakRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonTxBallBreakRep)))
  "Returns string type for a message object of type 'RlMonTxBallBreakRep"
  "radar_msgs/RlMonTxBallBreakRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonTxBallBreakRep>)))
  "Returns md5sum for a message object of type '<RlMonTxBallBreakRep>"
  "7fdb45f1877e63d7b9ad34c244554856")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonTxBallBreakRep)))
  "Returns md5sum for a message object of type 'RlMonTxBallBreakRep"
  "7fdb45f1877e63d7b9ad34c244554856")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonTxBallBreakRep>)))
  "Returns full string definition for message of type '<RlMonTxBallBreakRep>"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%int16 txReflCoefVal~%uint16 reserved0~%uint32 reserved1~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonTxBallBreakRep)))
  "Returns full string definition for message of type 'RlMonTxBallBreakRep"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%int16 txReflCoefVal~%uint16 reserved0~%uint32 reserved1~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonTxBallBreakRep>))
  (cl:+ 0
     2
     2
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonTxBallBreakRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonTxBallBreakRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':txReflCoefVal (txReflCoefVal msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
