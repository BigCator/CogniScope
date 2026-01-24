;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonExtAnaSigRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonExtAnaSigRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONEXTANASIGREP")
  (make-package "RADAR_MSGS::RLMONEXTANASIGREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonExtAnaSigRep.msg.html


(defclass radar_msgs::RlMonExtAnaSigRep
  :super ros::object
  :slots (_statusFlags _errorCode _extAnaSigVal _reserved _timeStamp ))

(defmethod radar_msgs::RlMonExtAnaSigRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:extAnaSigVal __extAnaSigVal) (make-array 6 :initial-element 0 :element-type :integer))
    ((:reserved __reserved) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _extAnaSigVal __extAnaSigVal)
   (setq _reserved (round __reserved))
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:extAnaSigVal
   (&optional __extAnaSigVal)
   (if __extAnaSigVal (setq _extAnaSigVal __extAnaSigVal)) _extAnaSigVal)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _statusFlags
    2
    ;; uint16 _errorCode
    2
    ;; int16[6] _extAnaSigVal
    (* 2    6)
    ;; uint32 _reserved
    4
    ;; uint32 _timeStamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _statusFlags
       (write-word _statusFlags s)
     ;; uint16 _errorCode
       (write-word _errorCode s)
     ;; int16[6] _extAnaSigVal
     (dotimes (i 6)
       (write-word (elt _extAnaSigVal i) s)
       )
     ;; uint32 _reserved
       (write-long _reserved s)
     ;; uint32 _timeStamp
       (write-long _timeStamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _statusFlags
     (setq _statusFlags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _errorCode
     (setq _errorCode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[6] _extAnaSigVal
   (dotimes (i (length _extAnaSigVal))
     (setf (elt _extAnaSigVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonExtAnaSigRep :md5sum-) "f5d5811b237096c7532d2d6043261f58")
(setf (get radar_msgs::RlMonExtAnaSigRep :datatype-) "radar_msgs/RlMonExtAnaSigRep")
(setf (get radar_msgs::RlMonExtAnaSigRep :definition-)
      "uint16      statusFlags
uint16      errorCode
int16[6]    extAnaSigVal
uint32      reserved
uint32      timeStamp
")



(provide :radar_msgs/RlMonExtAnaSigRep "f5d5811b237096c7532d2d6043261f58")


