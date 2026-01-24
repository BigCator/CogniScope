; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemStatePtpData.msg.html

(cl:defclass <SystemStatePtpData> (roslisp-msg-protocol:ros-message)
  ((reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0)
   (ptp_counter_flg
    :reader ptp_counter_flg
    :initarg :ptp_counter_flg
    :type cl:integer
    :initform 0)
   (pulse_count
    :reader pulse_count
    :initarg :pulse_count
    :type cl:integer
    :initform 0)
   (ptp_sec_counter
    :reader ptp_sec_counter
    :initarg :ptp_sec_counter
    :type cl:integer
    :initform 0)
   (ptp_nsec
    :reader ptp_nsec
    :initarg :ptp_nsec
    :type cl:integer
    :initform 0)
   (ptp_follow_sec
    :reader ptp_follow_sec
    :initarg :ptp_follow_sec
    :type cl:integer
    :initform 0)
   (ptp_sec_counter_all
    :reader ptp_sec_counter_all
    :initarg :ptp_sec_counter_all
    :type cl:integer
    :initform 0))
)

(cl:defclass SystemStatePtpData (<SystemStatePtpData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStatePtpData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStatePtpData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemStatePtpData> is deprecated: use radar_msgs-msg:SystemStatePtpData instead.")))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <SystemStatePtpData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved-val is deprecated.  Use radar_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'ptp_counter_flg-val :lambda-list '(m))
(cl:defmethod ptp_counter_flg-val ((m <SystemStatePtpData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ptp_counter_flg-val is deprecated.  Use radar_msgs-msg:ptp_counter_flg instead.")
  (ptp_counter_flg m))

(cl:ensure-generic-function 'pulse_count-val :lambda-list '(m))
(cl:defmethod pulse_count-val ((m <SystemStatePtpData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:pulse_count-val is deprecated.  Use radar_msgs-msg:pulse_count instead.")
  (pulse_count m))

(cl:ensure-generic-function 'ptp_sec_counter-val :lambda-list '(m))
(cl:defmethod ptp_sec_counter-val ((m <SystemStatePtpData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ptp_sec_counter-val is deprecated.  Use radar_msgs-msg:ptp_sec_counter instead.")
  (ptp_sec_counter m))

(cl:ensure-generic-function 'ptp_nsec-val :lambda-list '(m))
(cl:defmethod ptp_nsec-val ((m <SystemStatePtpData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ptp_nsec-val is deprecated.  Use radar_msgs-msg:ptp_nsec instead.")
  (ptp_nsec m))

(cl:ensure-generic-function 'ptp_follow_sec-val :lambda-list '(m))
(cl:defmethod ptp_follow_sec-val ((m <SystemStatePtpData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ptp_follow_sec-val is deprecated.  Use radar_msgs-msg:ptp_follow_sec instead.")
  (ptp_follow_sec m))

(cl:ensure-generic-function 'ptp_sec_counter_all-val :lambda-list '(m))
(cl:defmethod ptp_sec_counter_all-val ((m <SystemStatePtpData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ptp_sec_counter_all-val is deprecated.  Use radar_msgs-msg:ptp_sec_counter_all instead.")
  (ptp_sec_counter_all m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStatePtpData>) ostream)
  "Serializes a message object of type '<SystemStatePtpData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_counter_flg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_counter_flg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_counter_flg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_counter_flg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pulse_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pulse_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pulse_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pulse_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_sec_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_sec_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_sec_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_sec_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ptp_follow_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ptp_sec_counter_all)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStatePtpData>) istream)
  "Deserializes a message object of type '<SystemStatePtpData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_counter_flg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_counter_flg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_counter_flg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_counter_flg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pulse_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pulse_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pulse_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pulse_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_sec_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_sec_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_sec_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_sec_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ptp_follow_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ptp_sec_counter_all)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStatePtpData>)))
  "Returns string type for a message object of type '<SystemStatePtpData>"
  "radar_msgs/SystemStatePtpData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStatePtpData)))
  "Returns string type for a message object of type 'SystemStatePtpData"
  "radar_msgs/SystemStatePtpData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStatePtpData>)))
  "Returns md5sum for a message object of type '<SystemStatePtpData>"
  "3a790bc086e65d9a32b7fb446144e5ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStatePtpData)))
  "Returns md5sum for a message object of type 'SystemStatePtpData"
  "3a790bc086e65d9a32b7fb446144e5ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStatePtpData>)))
  "Returns full string definition for message of type '<SystemStatePtpData>"
  (cl:format cl:nil "uint32      reserved~%uint32      ptp_counter_flg~%uint32      pulse_count~%uint32      ptp_sec_counter~%uint32      ptp_nsec~%uint64      ptp_follow_sec~%uint64      ptp_sec_counter_all~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStatePtpData)))
  "Returns full string definition for message of type 'SystemStatePtpData"
  (cl:format cl:nil "uint32      reserved~%uint32      ptp_counter_flg~%uint32      pulse_count~%uint32      ptp_sec_counter~%uint32      ptp_nsec~%uint64      ptp_follow_sec~%uint64      ptp_sec_counter_all~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStatePtpData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStatePtpData>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStatePtpData
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':ptp_counter_flg (ptp_counter_flg msg))
    (cl:cons ':pulse_count (pulse_count msg))
    (cl:cons ':ptp_sec_counter (ptp_sec_counter msg))
    (cl:cons ':ptp_nsec (ptp_nsec msg))
    (cl:cons ':ptp_follow_sec (ptp_follow_sec msg))
    (cl:cons ':ptp_sec_counter_all (ptp_sec_counter_all msg))
))
