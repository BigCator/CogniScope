; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RlMonRxIfStageRep.msg.html

(cl:defclass <RlMonRxIfStageRep> (roslisp-msg-protocol:ros-message)
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
   (lpfCutOffBandEdgeDroopValRx0
    :reader lpfCutOffBandEdgeDroopValRx0
    :initarg :lpfCutOffBandEdgeDroopValRx0
    :type cl:fixnum
    :initform 0)
   (hpfCutOffFreqEr
    :reader hpfCutOffFreqEr
    :initarg :hpfCutOffFreqEr
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (lpfCutOffStopBandAtten
    :reader lpfCutOffStopBandAtten
    :initarg :lpfCutOffStopBandAtten
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (rxIfaGainErVal
    :reader rxIfaGainErVal
    :initarg :rxIfaGainErVal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (ifGainExp
    :reader ifGainExp
    :initarg :ifGainExp
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:fixnum
    :initform 0)
   (lpfCutOffBandEdgeDroopValRx
    :reader lpfCutOffBandEdgeDroopValRx
    :initarg :lpfCutOffBandEdgeDroopValRx
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0))
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RlMonRxIfStageRep (<RlMonRxIfStageRep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RlMonRxIfStageRep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RlMonRxIfStageRep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RlMonRxIfStageRep> is deprecated: use radar_msgs-msg:RlMonRxIfStageRep instead.")))

(cl:ensure-generic-function 'statusFlags-val :lambda-list '(m))
(cl:defmethod statusFlags-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:statusFlags-val is deprecated.  Use radar_msgs-msg:statusFlags instead.")
  (statusFlags m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'profIndex-val :lambda-list '(m))
(cl:defmethod profIndex-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:profIndex-val is deprecated.  Use radar_msgs-msg:profIndex instead.")
  (profIndex m))

(cl:ensure-generic-function 'reserved0-val :lambda-list '(m))
(cl:defmethod reserved0-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved0-val is deprecated.  Use radar_msgs-msg:reserved0 instead.")
  (reserved0 m))

(cl:ensure-generic-function 'lpfCutOffBandEdgeDroopValRx0-val :lambda-list '(m))
(cl:defmethod lpfCutOffBandEdgeDroopValRx0-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:lpfCutOffBandEdgeDroopValRx0-val is deprecated.  Use radar_msgs-msg:lpfCutOffBandEdgeDroopValRx0 instead.")
  (lpfCutOffBandEdgeDroopValRx0 m))

(cl:ensure-generic-function 'hpfCutOffFreqEr-val :lambda-list '(m))
(cl:defmethod hpfCutOffFreqEr-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:hpfCutOffFreqEr-val is deprecated.  Use radar_msgs-msg:hpfCutOffFreqEr instead.")
  (hpfCutOffFreqEr m))

(cl:ensure-generic-function 'lpfCutOffStopBandAtten-val :lambda-list '(m))
(cl:defmethod lpfCutOffStopBandAtten-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:lpfCutOffStopBandAtten-val is deprecated.  Use radar_msgs-msg:lpfCutOffStopBandAtten instead.")
  (lpfCutOffStopBandAtten m))

(cl:ensure-generic-function 'rxIfaGainErVal-val :lambda-list '(m))
(cl:defmethod rxIfaGainErVal-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rxIfaGainErVal-val is deprecated.  Use radar_msgs-msg:rxIfaGainErVal instead.")
  (rxIfaGainErVal m))

(cl:ensure-generic-function 'ifGainExp-val :lambda-list '(m))
(cl:defmethod ifGainExp-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ifGainExp-val is deprecated.  Use radar_msgs-msg:ifGainExp instead.")
  (ifGainExp m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved2-val is deprecated.  Use radar_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'lpfCutOffBandEdgeDroopValRx-val :lambda-list '(m))
(cl:defmethod lpfCutOffBandEdgeDroopValRx-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:lpfCutOffBandEdgeDroopValRx-val is deprecated.  Use radar_msgs-msg:lpfCutOffBandEdgeDroopValRx instead.")
  (lpfCutOffBandEdgeDroopValRx m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <RlMonRxIfStageRep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeStamp-val is deprecated.  Use radar_msgs-msg:timeStamp instead.")
  (timeStamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RlMonRxIfStageRep>) ostream)
  "Serializes a message object of type '<RlMonRxIfStageRep>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lpfCutOffBandEdgeDroopValRx0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'hpfCutOffFreqEr))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'lpfCutOffStopBandAtten))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'rxIfaGainErVal))
  (cl:let* ((signed (cl:slot-value msg 'ifGainExp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'lpfCutOffBandEdgeDroopValRx))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RlMonRxIfStageRep>) istream)
  "Deserializes a message object of type '<RlMonRxIfStageRep>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusFlags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved0)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lpfCutOffBandEdgeDroopValRx0) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'hpfCutOffFreqEr) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'hpfCutOffFreqEr)))
    (cl:dotimes (i 8)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'lpfCutOffStopBandAtten) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'lpfCutOffStopBandAtten)))
    (cl:dotimes (i 8)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'rxIfaGainErVal) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'rxIfaGainErVal)))
    (cl:dotimes (i 8)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ifGainExp) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lpfCutOffBandEdgeDroopValRx) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'lpfCutOffBandEdgeDroopValRx)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RlMonRxIfStageRep>)))
  "Returns string type for a message object of type '<RlMonRxIfStageRep>"
  "radar_msgs/RlMonRxIfStageRep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RlMonRxIfStageRep)))
  "Returns string type for a message object of type 'RlMonRxIfStageRep"
  "radar_msgs/RlMonRxIfStageRep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RlMonRxIfStageRep>)))
  "Returns md5sum for a message object of type '<RlMonRxIfStageRep>"
  "5939de1fd7d085daf586727b8763f7ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RlMonRxIfStageRep)))
  "Returns md5sum for a message object of type 'RlMonRxIfStageRep"
  "5939de1fd7d085daf586727b8763f7ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RlMonRxIfStageRep>)))
  "Returns full string definition for message of type '<RlMonRxIfStageRep>"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%int16       lpfCutOffBandEdgeDroopValRx0~%int8[8]     hpfCutOffFreqEr~%int8[8]     lpfCutOffStopBandAtten~%int8[8]     rxIfaGainErVal~%int8        ifGainExp~%uint8       reserved2~%int8[6]     lpfCutOffBandEdgeDroopValRx~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RlMonRxIfStageRep)))
  "Returns full string definition for message of type 'RlMonRxIfStageRep"
  (cl:format cl:nil "uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%int16       lpfCutOffBandEdgeDroopValRx0~%int8[8]     hpfCutOffFreqEr~%int8[8]     lpfCutOffStopBandAtten~%int8[8]     rxIfaGainErVal~%int8        ifGainExp~%uint8       reserved2~%int8[6]     lpfCutOffBandEdgeDroopValRx~%uint32      timeStamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RlMonRxIfStageRep>))
  (cl:+ 0
     2
     2
     1
     1
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'hpfCutOffFreqEr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'lpfCutOffStopBandAtten) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rxIfaGainErVal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'lpfCutOffBandEdgeDroopValRx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RlMonRxIfStageRep>))
  "Converts a ROS message object to a list"
  (cl:list 'RlMonRxIfStageRep
    (cl:cons ':statusFlags (statusFlags msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':profIndex (profIndex msg))
    (cl:cons ':reserved0 (reserved0 msg))
    (cl:cons ':lpfCutOffBandEdgeDroopValRx0 (lpfCutOffBandEdgeDroopValRx0 msg))
    (cl:cons ':hpfCutOffFreqEr (hpfCutOffFreqEr msg))
    (cl:cons ':lpfCutOffStopBandAtten (lpfCutOffStopBandAtten msg))
    (cl:cons ':rxIfaGainErVal (rxIfaGainErVal msg))
    (cl:cons ':ifGainExp (ifGainExp msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':lpfCutOffBandEdgeDroopValRx (lpfCutOffBandEdgeDroopValRx msg))
    (cl:cons ':timeStamp (timeStamp msg))
))
