; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonTxIntAnaSigRep.msg.html

(cl:defclass <RlMonTxIntAnaSigRep> (roslisp-msg-protocol:ros-message)
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
   (phShiftDacIdeltaMin
    :reader phShiftDacIdeltaMin
    :initarg :phShiftDacIdeltaMin
    :type cl:fixnum
    :initform 0)
   (phShiftDacQdeltaMin
    :reader phShiftDacQdeltaMin
    :initarg :phShiftDacQdeltaMin
    :type cl:fixnum
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonTxIntAnaSigRep (<RlMonTxIntAnaSigRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonTxIntAnaSigRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonTxIntAnaSigRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonTxIntAnaSigRep> is deprecated: use radar_msgs-msg:RlMonTxIntAnaSigRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonTxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonTxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex-val :lambda-list '(m))
(cl:defmethod profIndex-val ((m <RlMonTxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex-val is deprecated.  Use radar_msgs-msg:profIndex instead.")
  (profIndex m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonTxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'phShiftDacIdeltaMin-val :lambda-list '(m))
(cl:defmethod phShiftDacIdeltaMin-val ((m <RlMonTxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:phShiftDacIdeltaMin-val is deprecated.  Use radar_msgs-msg:phShiftDacIdeltaMin instead.")
  (phShiftDacIdeltaMin m))

(cl:ensure-generic-function 'phShiftDacQdeltaMin-val :lambda-list '(m))
(cl:defmethod phShiftDacQdeltaMin-val ((m <RlMonTxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:phShiftDacQdeltaMin-val is deprecated.  Use radar_msgs-msg:phShiftDacQdeltaMin instead.")
  (phShiftDacQdeltaMin m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonTxIntAnaSigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonTxIntAnaSigRep>) ostream)
  "Serializes a message object of type '<RlMonTxIntAnaSigRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phShiftDacIdeltaMin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phShiftDacQdeltaMin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonTxIntAnaSigRep>) istream)
  "Deserializes a message object of type '<RlMonTxIntAnaSigRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phShiftDacIdeltaMin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phShiftDacQdeltaMin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonTxIntAnaSigRep>)))
  "Returns string type for a message object of type '<RlMonTxIntAnaSigRep>"
  "radar_msgs/RlMonTxIntAnaSigRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonTxIntAnaSigRep)))
  "Returns string type for a message object of type 'RlMonTxIntAnaSigRep"
  "radar_msgs/RlMonTxIntAnaSigRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonTxIntAnaSigRep>)))
  "Returns md5sum for a message object of type '<RlMonTxIntAnaSigRep>"
  "9475d3a28bdcb35b92a3be2cb7462b1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonTxIntAnaSigRep)))
  "Returns md5sum for a message object of type 'RlMonTxIntAnaSigRep"
  "9475d3a28bdcb35b92a3be2cb7462b1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonTxIntAnaSigRep>)))
  "Returns full string definition for message of type '<RlMonTxIntAnaSigRep>"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint8 phShiftDacIdeltaMin~%uint8 phShiftDacQdeltaMin~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonTxIntAnaSigRep)))
  "Returns full string definition for message of type 'RlMonTxIntAnaSigRep"
  (cl:format cl:nil "uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint8 phShiftDacIdeltaMin~%uint8 phShiftDacQdeltaMin~%uint32 timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonTxIntAnaSigRep>))
  (cl:+ 0
     2
     2
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonTxIntAnaSigRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonTxIntAnaSigRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex (profIndex msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':phShiftDacIdeltaMin (phShiftDacIdeltaMin msg))
    (cl:cons ':phShiftDacQdeltaMin (phShiftDacQdeltaMin msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
