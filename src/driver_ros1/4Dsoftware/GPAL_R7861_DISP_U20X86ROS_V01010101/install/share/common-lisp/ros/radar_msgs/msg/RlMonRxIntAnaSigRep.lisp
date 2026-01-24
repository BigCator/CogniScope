; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonRxIntAnaSigRep.msg.html

(cl:defclass <RlMonRxIntAnaSigRep> (roslisp-msg-protocol:ros-message)
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
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonRxIntAnaSigRep (<RlMonRxIntAnaSigRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonRxIntAnaSigRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonRxIntAnaSigRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonRxIntAnaSigRep> is deprecated: use radar_msgs-msg:RlMonRxIntAnaSigRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonRxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonRxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex-val :lambda-list '(m))
(cl:defmethod profIndex-val ((m <RlMonRxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex-val is deprecated.  Use radar_msgs-msg:profIndex instead.")
  (profIndex m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonRxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlMonRxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonRxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonRxIntAnaSigRep>) ostream)
  "Serializes a message object of type '<RlMonRxIntAnaSigRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonRxIntAnaSigRep>) istream)
  "Deserializes a message object of type '<RlMonRxIntAnaSigRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonRxIntAnaSigRep>)))
  "Returns string type for a message object of type '<RlMonRxIntAnaSigRep>"
  "radar_msgs/RlMonRxIntAnaSigRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonRxIntAnaSigRep)))
  "Returns string type for a message object of type 'RlMonRxIntAnaSigRep"
  "radar_msgs/RlMonRxIntAnaSigRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonRxIntAnaSigRep>)))
  "Returns md5sum for a message object of type '<RlMonRxIntAnaSigRep>"
  "7db53227a7c34d71ff0b3be3badc0dcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonRxIntAnaSigRep)))
  "Returns md5sum for a message object of type 'RlMonRxIntAnaSigRep"
  "7db53227a7c34d71ff0b3be3badc0dcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonRxIntAnaSigRep>)))
  "Returns full string definition for message of type '<RlMonRxIntAnaSigRep>"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonRxIntAnaSigRep)))
  "Returns full string definition for message of type 'RlMonRxIntAnaSigRep"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonRxIntAnaSigRep>))
  (cl:+ 0
     2
     2
     1
     1
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonRxIntAnaSigRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonRxIntAnaSigRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex (profIndex msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
