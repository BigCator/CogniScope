; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonRxNoiseFigRep.msg.html

(cl:defclass <RlMonRxNoiseFigRep> (roslisp-msg-protocol:ros-message)
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
   (rxNoiseFigVal
    :reader rxNoiseFigVal
    :initarg :rxNoiseFigVal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 12 :element-type 'cl:fixnum :initial-element 0))
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:integer
    :initform 0)
   (reserved3
    :reader reserved3
    :initarg :reserved3
    :type cl:integer
    :initform 0)
   (reserved4
    :reader reserved4
    :initarg :reserved4
    :type cl:integer
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonRxNoiseFigRep (<RlMonRxNoiseFigRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonRxNoiseFigRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonRxNoiseFigRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonRxNoiseFigRep> is deprecated: use radar_msgs-msg:RlMonRxNoiseFigRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex-val :lambda-list '(m))
(cl:defmethod profIndex-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex-val is deprecated.  Use radar_msgs-msg:profIndex instead.")
  (profIndex m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'rxNoiseFigVal-val :lambda-list '(m))
(cl:defmethod rxNoiseFigVal-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rxNoiseFigVal-val is deprecated.  Use radar_msgs-msg:rxNoiseFigVal instead.")
  (rxNoiseFigVal m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved2-val is deprecated.  Use radar_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'reserved3-val :lambda-list '(m))
(cl:defmethod reserved3-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved3-val is deprecated.  Use radar_msgs-msg:reserved3 instead.")
  (reserved3 m))

(cl:ensure-generic-function 'reserved4-val :lambda-list '(m))
(cl:defmethod reserved4-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved4-val is deprecated.  Use radar_msgs-msg:reserved4 instead.")
  (reserved4 m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonRxNoiseFigRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonRxNoiseFigRep>) ostream)
  "Serializes a message object of type '<RlMonRxNoiseFigRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'rxNoiseFigVal))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonRxNoiseFigRep>) istream)
  "Deserializes a message object of type '<RlMonRxNoiseFigRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rxNoiseFigVal) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'rxNoiseFigVal)))
    (cl:dotimes (i 12)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonRxNoiseFigRep>)))
  "Returns string type for a message object of type '<RlMonRxNoiseFigRep>"
  "radar_msgs/RlMonRxNoiseFigRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonRxNoiseFigRep)))
  "Returns string type for a message object of type 'RlMonRxNoiseFigRep"
  "radar_msgs/RlMonRxNoiseFigRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonRxNoiseFigRep>)))
  "Returns md5sum for a message object of type '<RlMonRxNoiseFigRep>"
  "85200fd3b673c6fc5968b0803690c144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonRxNoiseFigRep)))
  "Returns md5sum for a message object of type 'RlMonRxNoiseFigRep"
  "85200fd3b673c6fc5968b0803690c144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonRxNoiseFigRep>)))
  "Returns full string definition for message of type '<RlMonRxNoiseFigRep>"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%uint16      reserved1~%uint16[12]  rxNoiseFigVal~%uint32      reserved2~%uint32      reserved3~%uint32      reserved4~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonRxNoiseFigRep)))
  "Returns full string definition for message of type 'RlMonRxNoiseFigRep"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%uint16      reserved1~%uint16[12]  rxNoiseFigVal~%uint32      reserved2~%uint32      reserved3~%uint32      reserved4~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonRxNoiseFigRep>))
  (cl:+ 0
     2
     2
     1
     1
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rxNoiseFigVal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonRxNoiseFigRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonRxNoiseFigRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex (profIndex msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':rxNoiseFigVal (rxNoiseFigVal msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':reserved3 (reserved3 msg))
    (cl:cons ':reserved4 (reserved4 msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
