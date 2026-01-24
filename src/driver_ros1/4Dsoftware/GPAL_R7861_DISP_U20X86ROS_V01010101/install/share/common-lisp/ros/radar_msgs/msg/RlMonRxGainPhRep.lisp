; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonRxGainPhRep.msg.html

(cl:defclass <RlMonRxGainPhRep> (roslisp-msg-protocol:ros-message)
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
   (loopbackPowerRF1
    :reader loopbackPowerRF1
    :initarg :loopbackPowerRF1
    :type cl:fixnum
    :initform 0)
   (loopbackPowerRF2
    :reader loopbackPowerRF2
    :initarg :loopbackPowerRF2
    :type cl:fixnum
    :initform 0)
   (loopbackPowerRF3
    :reader loopbackPowerRF3
    :initarg :loopbackPowerRF3
    :type cl:fixnum
    :initform 0)
   (rxGainVal
    :reader rxGainVal
    :initarg :rxGainVal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 12 :element-type 'cl:fixnum :initial-element 0))
   (rxPhaseVal
    :reader rxPhaseVal
    :initarg :rxPhaseVal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 12 :element-type 'cl:fixnum :initial-element 0))
   (rxNoisePower1
    :reader rxNoisePower1
    :initarg :rxNoisePower1
    :type cl:integer
    :initform 0)
   (rxNoisePower2
    :reader rxNoisePower2
    :initarg :rxNoisePower2
    :type cl:integer
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonRxGainPhRep (<RlMonRxGainPhRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonRxGainPhRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonRxGainPhRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonRxGainPhRep> is deprecated: use radar_msgs-msg:RlMonRxGainPhRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex-val :lambda-list '(m))
(cl:defmethod profIndex-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex-val is deprecated.  Use radar_msgs-msg:profIndex instead.")
  (profIndex m))

(cl:ensure-generic-function 'loopbackPowerRF1-val :lambda-list '(m))
(cl:defmethod loopbackPowerRF1-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:loopbackPowerRF1-val is deprecated.  Use radar_msgs-msg:loopbackPowerRF1 instead.")
  (loopbackPowerRF1 m))

(cl:ensure-generic-function 'loopbackPowerRF2-val :lambda-list '(m))
(cl:defmethod loopbackPowerRF2-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:loopbackPowerRF2-val is deprecated.  Use radar_msgs-msg:loopbackPowerRF2 instead.")
  (loopbackPowerRF2 m))

(cl:ensure-generic-function 'loopbackPowerRF3-val :lambda-list '(m))
(cl:defmethod loopbackPowerRF3-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:loopbackPowerRF3-val is deprecated.  Use radar_msgs-msg:loopbackPowerRF3 instead.")
  (loopbackPowerRF3 m))

(cl:ensure-generic-function 'rxGainVal-val :lambda-list '(m))
(cl:defmethod rxGainVal-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rxGainVal-val is deprecated.  Use radar_msgs-msg:rxGainVal instead.")
  (rxGainVal m))

(cl:ensure-generic-function 'rxPhaseVal-val :lambda-list '(m))
(cl:defmethod rxPhaseVal-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rxPhaseVal-val is deprecated.  Use radar_msgs-msg:rxPhaseVal instead.")
  (rxPhaseVal m))

(cl:ensure-generic-function 'rxNoisePower1-val :lambda-list '(m))
(cl:defmethod rxNoisePower1-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rxNoisePower1-val is deprecated.  Use radar_msgs-msg:rxNoisePower1 instead.")
  (rxNoisePower1 m))

(cl:ensure-generic-function 'rxNoisePower2-val :lambda-list '(m))
(cl:defmethod rxNoisePower2-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rxNoisePower2-val is deprecated.  Use radar_msgs-msg:rxNoisePower2 instead.")
  (rxNoisePower2 m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonRxGainPhRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonRxGainPhRep>) ostream)
  "Serializes a message object of type '<RlMonRxGainPhRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loopbackPowerRF1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loopbackPowerRF2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loopbackPowerRF3)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'rxGainVal))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'rxPhaseVal))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxNoisePower1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxNoisePower1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rxNoisePower1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rxNoisePower1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxNoisePower2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxNoisePower2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rxNoisePower2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rxNoisePower2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonRxGainPhRep>) istream)
  "Deserializes a message object of type '<RlMonRxGainPhRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loopbackPowerRF1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loopbackPowerRF2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loopbackPowerRF3)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rxGainVal) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'rxGainVal)))
    (cl:dotimes (i 12)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'rxPhaseVal) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'rxPhaseVal)))
    (cl:dotimes (i 12)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxNoisePower1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxNoisePower1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rxNoisePower1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rxNoisePower1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxNoisePower2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxNoisePower2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rxNoisePower2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rxNoisePower2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonRxGainPhRep>)))
  "Returns string type for a message object of type '<RlMonRxGainPhRep>"
  "radar_msgs/RlMonRxGainPhRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonRxGainPhRep)))
  "Returns string type for a message object of type 'RlMonRxGainPhRep"
  "radar_msgs/RlMonRxGainPhRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonRxGainPhRep>)))
  "Returns md5sum for a message object of type '<RlMonRxGainPhRep>"
  "f089091924cc998599ccbe78b8cddb04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonRxGainPhRep)))
  "Returns md5sum for a message object of type 'RlMonRxGainPhRep"
  "f089091924cc998599ccbe78b8cddb04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonRxGainPhRep>)))
  "Returns full string definition for message of type '<RlMonRxGainPhRep>"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       loopbackPowerRF1~%uint8       loopbackPowerRF2~%uint8       loopbackPowerRF3~%uint16[12]  rxGainVal~%uint16[12]  rxPhaseVal~%uint32      rxNoisePower1~%uint32      rxNoisePower2~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonRxGainPhRep)))
  "Returns full string definition for message of type 'RlMonRxGainPhRep"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       loopbackPowerRF1~%uint8       loopbackPowerRF2~%uint8       loopbackPowerRF3~%uint16[12]  rxGainVal~%uint16[12]  rxPhaseVal~%uint32      rxNoisePower1~%uint32      rxNoisePower2~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonRxGainPhRep>))
  (cl:+ 0
     2
     2
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rxGainVal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rxPhaseVal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonRxGainPhRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonRxGainPhRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex (profIndex msg))
    (cl:cons ':loopbackPowerRF1 (loopbackPowerRF1 msg))
    (cl:cons ':loopbackPowerRF2 (loopbackPowerRF2 msg))
    (cl:cons ':loopbackPowerRF3 (loopbackPowerRF3 msg))
    (cl:cons ':rxGainVal (rxGainVal msg))
    (cl:cons ':rxPhaseVal (rxPhaseVal msg))
    (cl:cons ':rxNoisePower1 (rxNoisePower1 msg))
    (cl:cons ':rxNoisePower2 (rxNoisePower2 msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
