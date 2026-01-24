; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonTxGainPhaMisRep.msg.html

(cl:defclass <RlMonTxGainPhaMisRep> (roslisp-msg-protocol:ros-message)
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
   (noisePower00
    :reader noisePower00
    :initarg :noisePower00
    :type cl:fixnum
    :initform 0)
   (noisePower01
    :reader noisePower01
    :initarg :noisePower01
    :type cl:fixnum
    :initform 0)
   (noisePower02
    :reader noisePower02
    :initarg :noisePower02
    :type cl:fixnum
    :initform 0)
   (txGainVal
    :reader txGainVal
    :initarg :txGainVal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 9 :element-type 'cl:fixnum :initial-element 0))
   (txPhaVal
    :reader txPhaVal
    :initarg :txPhaVal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 9 :element-type 'cl:fixnum :initial-element 0))
   (noisePower10
    :reader noisePower10
    :initarg :noisePower10
    :type cl:fixnum
    :initform 0)
   (noisePower11
    :reader noisePower11
    :initarg :noisePower11
    :type cl:fixnum
    :initform 0)
   (noisePower12
    :reader noisePower12
    :initarg :noisePower12
    :type cl:fixnum
    :initform 0)
   (noisePower20
    :reader noisePower20
    :initarg :noisePower20
    :type cl:fixnum
    :initform 0)
   (noisePower21
    :reader noisePower21
    :initarg :noisePower21
    :type cl:fixnum
    :initform 0)
   (noisePower22
    :reader noisePower22
    :initarg :noisePower22
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

(cl:defclass RlMonTxGainPhaMisRep (<RlMonTxGainPhaMisRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonTxGainPhaMisRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonTxGainPhaMisRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonTxGainPhaMisRep> is deprecated: use radar_msgs-msg:RlMonTxGainPhaMisRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex-val :lambda-list '(m))
(cl:defmethod profIndex-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex-val is deprecated.  Use radar_msgs-msg:profIndex instead.")
  (profIndex m))

(cl:ensure-generic-function 'noisePower00-val :lambda-list '(m))
(cl:defmethod noisePower00-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower00-val is deprecated.  Use radar_msgs-msg:noisePower00 instead.")
  (noisePower00 m))

(cl:ensure-generic-function 'noisePower01-val :lambda-list '(m))
(cl:defmethod noisePower01-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower01-val is deprecated.  Use radar_msgs-msg:noisePower01 instead.")
  (noisePower01 m))

(cl:ensure-generic-function 'noisePower02-val :lambda-list '(m))
(cl:defmethod noisePower02-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower02-val is deprecated.  Use radar_msgs-msg:noisePower02 instead.")
  (noisePower02 m))

(cl:ensure-generic-function 'txGainVal-val :lambda-list '(m))
(cl:defmethod txGainVal-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txGainVal-val is deprecated.  Use radar_msgs-msg:txGainVal instead.")
  (txGainVal m))

(cl:ensure-generic-function 'txPhaVal-val :lambda-list '(m))
(cl:defmethod txPhaVal-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:txPhaVal-val is deprecated.  Use radar_msgs-msg:txPhaVal instead.")
  (txPhaVal m))

(cl:ensure-generic-function 'noisePower10-val :lambda-list '(m))
(cl:defmethod noisePower10-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower10-val is deprecated.  Use radar_msgs-msg:noisePower10 instead.")
  (noisePower10 m))

(cl:ensure-generic-function 'noisePower11-val :lambda-list '(m))
(cl:defmethod noisePower11-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower11-val is deprecated.  Use radar_msgs-msg:noisePower11 instead.")
  (noisePower11 m))

(cl:ensure-generic-function 'noisePower12-val :lambda-list '(m))
(cl:defmethod noisePower12-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower12-val is deprecated.  Use radar_msgs-msg:noisePower12 instead.")
  (noisePower12 m))

(cl:ensure-generic-function 'noisePower20-val :lambda-list '(m))
(cl:defmethod noisePower20-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower20-val is deprecated.  Use radar_msgs-msg:noisePower20 instead.")
  (noisePower20 m))

(cl:ensure-generic-function 'noisePower21-val :lambda-list '(m))
(cl:defmethod noisePower21-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower21-val is deprecated.  Use radar_msgs-msg:noisePower21 instead.")
  (noisePower21 m))

(cl:ensure-generic-function 'noisePower22-val :lambda-list '(m))
(cl:defmethod noisePower22-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:noisePower22-val is deprecated.  Use radar_msgs-msg:noisePower22 instead.")
  (noisePower22 m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved1-val is deprecated.  Use radar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonTxGainPhaMisRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonTxGainPhaMisRep>) ostream)
  "Serializes a message object of type '<RlMonTxGainPhaMisRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower00)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower01)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower02)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'txGainVal))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'txPhaVal))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower20)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower21)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower22)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonTxGainPhaMisRep>) istream)
  "Deserializes a message object of type '<RlMonTxGainPhaMisRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower00)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower01)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower02)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'txGainVal) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'txGainVal)))
    (cl:dotimes (i 9)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'txPhaVal) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'txPhaVal)))
    (cl:dotimes (i 9)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower20)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower21)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noisePower22)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonTxGainPhaMisRep>)))
  "Returns string type for a message object of type '<RlMonTxGainPhaMisRep>"
  "radar_msgs/RlMonTxGainPhaMisRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonTxGainPhaMisRep)))
  "Returns string type for a message object of type 'RlMonTxGainPhaMisRep"
  "radar_msgs/RlMonTxGainPhaMisRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonTxGainPhaMisRep>)))
  "Returns md5sum for a message object of type '<RlMonTxGainPhaMisRep>"
  "f27f6ab37b6066abd149c07bb608a4d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonTxGainPhaMisRep)))
  "Returns md5sum for a message object of type 'RlMonTxGainPhaMisRep"
  "f27f6ab37b6066abd149c07bb608a4d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonTxGainPhaMisRep>)))
  "Returns full string definition for message of type '<RlMonTxGainPhaMisRep>"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       noisePower00~%uint8       noisePower01~%uint8       noisePower02~%int16[9]    txGainVal~%uint16[9]   txPhaVal~%uint8       noisePower10~%uint8       noisePower11~%uint8       noisePower12~%uint8       noisePower20~%uint8       noisePower21~%uint8       noisePower22~%uint8       reserved0~%uint8       reserved1~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonTxGainPhaMisRep)))
  "Returns full string definition for message of type 'RlMonTxGainPhaMisRep"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       noisePower00~%uint8       noisePower01~%uint8       noisePower02~%int16[9]    txGainVal~%uint16[9]   txPhaVal~%uint8       noisePower10~%uint8       noisePower11~%uint8       noisePower12~%uint8       noisePower20~%uint8       noisePower21~%uint8       noisePower22~%uint8       reserved0~%uint8       reserved1~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonTxGainPhaMisRep>))
  (cl:+ 0
     2
     2
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'txGainVal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'txPhaVal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     1
     1
     1
     1
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonTxGainPhaMisRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonTxGainPhaMisRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex (profIndex msg))
    (cl:cons ':noisePower00 (noisePower00 msg))
    (cl:cons ':noisePower01 (noisePower01 msg))
    (cl:cons ':noisePower02 (noisePower02 msg))
    (cl:cons ':txGainVal (txGainVal msg))
    (cl:cons ':txPhaVal (txPhaVal msg))
    (cl:cons ':noisePower10 (noisePower10 msg))
    (cl:cons ':noisePower11 (noisePower11 msg))
    (cl:cons ':noisePower12 (noisePower12 msg))
    (cl:cons ':noisePower20 (noisePower20 msg))
    (cl:cons ':noisePower21 (noisePower21 msg))
    (cl:cons ':noisePower22 (noisePower22 msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
