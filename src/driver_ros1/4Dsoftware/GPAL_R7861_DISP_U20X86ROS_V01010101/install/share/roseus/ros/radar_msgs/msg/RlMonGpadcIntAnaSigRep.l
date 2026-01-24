;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonGpadcIntAnaSigRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonGpadcIntAnaSigRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONGPADCINTANASIGREP")
  (make-package "RADAR_MSGS::RLMONGPADCINTANASIGREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonGpadcIntAnaSigRep.msg.html


(defclass radar_msgs::RlMonGpadcIntAnaSigRep
  :super ros::object
  :slots (_statusFlags _errorCode _gpadcRef1Val _gpadcRef2Val _reserved _timeStamp ))

(defmethod radar_msgs::RlMonGpadcIntAnaSigRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:gpadcRef1Val __gpadcRef1Val) 0)
    ((:gpadcRef2Val __gpadcRef2Val) 0)
    ((:reserved __reserved) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _gpadcRef1Val (round __gpadcRef1Val))
   (setq _gpadcRef2Val (round __gpadcRef2Val))
   (setq _reserved (round __reserved))
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:gpadcRef1Val
   (&optional __gpadcRef1Val)
   (if __gpadcRef1Val (setq _gpadcRef1Val __gpadcRef1Val)) _gpadcRef1Val)
  (:gpadcRef2Val
   (&optional __gpadcRef2Val)
   (if __gpadcRef2Val (setq _gpadcRef2Val __gpadcRef2Val)) _gpadcRef2Val)
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
    ;; int16 _gpadcRef1Val
    2
    ;; uint16 _gpadcRef2Val
    2
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
     ;; int16 _gpadcRef1Val
       (write-word _gpadcRef1Val s)
     ;; uint16 _gpadcRef2Val
       (write-word _gpadcRef2Val s)
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
   ;; int16 _gpadcRef1Val
     (setq _gpadcRef1Val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _gpadcRef2Val
     (setq _gpadcRef2Val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonGpadcIntAnaSigRep :md5sum-) "be0d5f07b3664bc23a4e4aa613f1e08c")
(setf (get radar_msgs::RlMonGpadcIntAnaSigRep :datatype-) "radar_msgs/RlMonGpadcIntAnaSigRep")
(setf (get radar_msgs::RlMonGpadcIntAnaSigRep :definition-)
      "uint16 statusFlags
uint16 errorCode
int16 gpadcRef1Val
uint16 gpadcRef2Val
uint32 reserved
uint32 timeStamp
")



(provide :radar_msgs/RlMonGpadcIntAnaSigRep "be0d5f07b3664bc23a4e4aa613f1e08c")


