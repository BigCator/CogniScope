; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemStatsheapArr.msg.html

(cl:defclass <SystemStatsheapArr> (roslisp-msg-protocol:ros-message)
  ((heap
    :reader heap
    :initarg :heap
    :type (cl:vector radar_msgs-msg:SystemStatsheap)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:SystemStatsheap :initial-element (cl:make-instance 'radar_msgs-msg:SystemStatsheap))))
)

(cl:defclass SystemStatsheapArr (<SystemStatsheapArr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStatsheapArr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStatsheapArr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemStatsheapArr> is deprecated: use radar_msgs-msg:SystemStatsheapArr instead.")))

(cl:ensure-generic-function 'heap-val :lambda-list '(m))
(cl:defmethod heap-val ((m <SystemStatsheapArr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:heap-val is deprecated.  Use radar_msgs-msg:heap instead.")
  (heap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStatsheapArr>) ostream)
  "Serializes a message object of type '<SystemStatsheapArr>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'heap))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStatsheapArr>) istream)
  "Deserializes a message object of type '<SystemStatsheapArr>"
  (cl:setf (cl:slot-value msg 'heap) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'heap)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:SystemStatsheap))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStatsheapArr>)))
  "Returns string type for a message object of type '<SystemStatsheapArr>"
  "radar_msgs/SystemStatsheapArr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStatsheapArr)))
  "Returns string type for a message object of type 'SystemStatsheapArr"
  "radar_msgs/SystemStatsheapArr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStatsheapArr>)))
  "Returns md5sum for a message object of type '<SystemStatsheapArr>"
  "96720ee170c50ff6e79e38467eec2737")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStatsheapArr)))
  "Returns md5sum for a message object of type 'SystemStatsheapArr"
  "96720ee170c50ff6e79e38467eec2737")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStatsheapArr>)))
  "Returns full string definition for message of type '<SystemStatsheapArr>"
  (cl:format cl:nil "# Header header           # Includes measurement timestamp and coordinate frame.~%SystemStatsheap[2]     heap~%================================================================================~%MSG: radar_msgs/SystemStatsheap~%# Header header               # Includes measurement timestamp and coordinate frame.~%uint32       heapSize~%uint32       freeSize~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStatsheapArr)))
  "Returns full string definition for message of type 'SystemStatsheapArr"
  (cl:format cl:nil "# Header header           # Includes measurement timestamp and coordinate frame.~%SystemStatsheap[2]     heap~%================================================================================~%MSG: radar_msgs/SystemStatsheap~%# Header header               # Includes measurement timestamp and coordinate frame.~%uint32       heapSize~%uint32       freeSize~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStatsheapArr>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'heap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStatsheapArr>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStatsheapArr
    (cl:cons ':heap (heap msg))
))
