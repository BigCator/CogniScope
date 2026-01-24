; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemStatsheap.msg.html

(cl:defclass <SystemStatsheap> (roslisp-msg-protocol:ros-message)
  ((heapSize
    :reader heapSize
    :initarg :heapSize
    :type cl:integer
    :initform 0)
   (freeSize
    :reader freeSize
    :initarg :freeSize
    :type cl:integer
    :initform 0))
)

(cl:defclass SystemStatsheap (<SystemStatsheap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStatsheap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStatsheap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemStatsheap> is deprecated: use radar_msgs-msg:SystemStatsheap instead.")))

(cl:ensure-generic-function 'heapSize-val :lambda-list '(m))
(cl:defmethod heapSize-val ((m <SystemStatsheap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:heapSize-val is deprecated.  Use radar_msgs-msg:heapSize instead.")
  (heapSize m))

(cl:ensure-generic-function 'freeSize-val :lambda-list '(m))
(cl:defmethod freeSize-val ((m <SystemStatsheap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:freeSize-val is deprecated.  Use radar_msgs-msg:freeSize instead.")
  (freeSize m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStatsheap>) ostream)
  "Serializes a message object of type '<SystemStatsheap>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heapSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heapSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'heapSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'heapSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freeSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freeSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'freeSize)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'freeSize)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStatsheap>) istream)
  "Deserializes a message object of type '<SystemStatsheap>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heapSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'heapSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'heapSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'heapSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freeSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freeSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'freeSize)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'freeSize)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStatsheap>)))
  "Returns string type for a message object of type '<SystemStatsheap>"
  "radar_msgs/SystemStatsheap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStatsheap)))
  "Returns string type for a message object of type 'SystemStatsheap"
  "radar_msgs/SystemStatsheap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStatsheap>)))
  "Returns md5sum for a message object of type '<SystemStatsheap>"
  "03640949b9fee0e6971efd5dfb6ef3a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStatsheap)))
  "Returns md5sum for a message object of type 'SystemStatsheap"
  "03640949b9fee0e6971efd5dfb6ef3a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStatsheap>)))
  "Returns full string definition for message of type '<SystemStatsheap>"
  (cl:format cl:nil "# Header header               # Includes measurement timestamp and coordinate frame.~%uint32       heapSize~%uint32       freeSize~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStatsheap)))
  "Returns full string definition for message of type 'SystemStatsheap"
  (cl:format cl:nil "# Header header               # Includes measurement timestamp and coordinate frame.~%uint32       heapSize~%uint32       freeSize~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStatsheap>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStatsheap>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStatsheap
    (cl:cons ':heapSize (heapSize msg))
    (cl:cons ':freeSize (freeSize msg))
))
