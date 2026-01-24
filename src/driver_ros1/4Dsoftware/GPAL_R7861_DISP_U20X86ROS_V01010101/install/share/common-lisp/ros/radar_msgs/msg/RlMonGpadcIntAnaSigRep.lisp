; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonGpadcIntAnaSigRep.msg.html

(cl:defclass <RlMonGpadcIntAnaSigRep> (roslisp-msg-protocol:ros-message)
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
   (gpadcRef1Val
    :reader gpadcRef1Val
    :initarg :gpadcRef1Val
    :type cl:fixnum
    :initform 0)
   (gpadcRef2Val
    :reader gpadcRef2Val
    :initarg :gpadcRef2Val
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonGpadcIntAnaSigRep (<RlMonGpadcIntAnaSigRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonGpadcIntAnaSigRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonGpadcIntAnaSigRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonGpadcIntAnaSigRep> is deprecated: use radar_msgs-msg:RlMonGpadcIntAnaSigRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonGpadcIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonGpadcIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'gpadcRef1Val-val :lambda-list '(m))
(cl:defmethod gpadcRef1Val-val ((m <RlMonGpadcIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:gpadcRef1Val-val is deprecated.  Use radar_msgs-msg:gpadcRef1Val instead.")
  (gpadcRef1Val m))

(cl:ensure-generic-function 'gpadcRef2Val-val :lambda-list '(m))
(cl:defmethod gpadcRef2Val-val ((m <RlMonGpadcIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:gpadcRef2Val-val is deprecated.  Use radar_msgs-msg:gpadcRef2Val instead.")
  (gpadcRef2Val m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <RlMonGpadcIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved-val is deprecated.  Use radar_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonGpadcIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonGpadcIntAnaSigRep>) ostream)
  "Serializes a message object of type '<RlMonGpadcIntAnaSigRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gpadcRef1Val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpadcRef2Val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gpadcRef2Val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonGpadcIntAnaSigRep>) istream)
  "Deserializes a message object of type '<RlMonGpadcIntAnaSigRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gpadcRef1Val) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpadcRef2Val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gpadcRef2Val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonGpadcIntAnaSigRep>)))
  "Returns string type for a message object of type '<RlMonGpadcIntAnaSigRep>"
  "radar_msgs/RlMonGpadcIntAnaSigRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonGpadcIntAnaSigRep)))
  "Returns string type for a message object of type 'RlMonGpadcIntAnaSigRep"
  "radar_msgs/RlMonGpadcIntAnaSigRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonGpadcIntAnaSigRep>)))
  "Returns md5sum for a message object of type '<RlMonGpadcIntAnaSigRep>"
  "be0d5f07b3664bc23a4e4aa613f1e08c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonGpadcIntAnaSigRep)))
  "Returns md5sum for a message object of type 'RlMonGpadcIntAnaSigRep"
  "be0d5f07b3664bc23a4e4aa613f1e08c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonGpadcIntAnaSigRep>)))
  "Returns full string definition for message of type '<RlMonGpadcIntAnaSigRep>"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%int16 gpadcRef1Val~%uint16 gpadcRef2Val~%uint32 reserved~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonGpadcIntAnaSigRep)))
  "Returns full string definition for message of type 'RlMonGpadcIntAnaSigRep"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%int16 gpadcRef1Val~%uint16 gpadcRef2Val~%uint32 reserved~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonGpadcIntAnaSigRep>))
  (cl:+ 0
     2
     2
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonGpadcIntAnaSigRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonGpadcIntAnaSigRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':gpadcRef1Val (gpadcRef1Val msg))
    (cl:cons ':gpadcRef2Val (gpadcRef2Val msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
