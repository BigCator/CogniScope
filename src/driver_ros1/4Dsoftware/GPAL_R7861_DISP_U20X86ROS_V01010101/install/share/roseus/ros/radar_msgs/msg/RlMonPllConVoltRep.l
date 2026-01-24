;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonPllConVoltRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonPllConVoltRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONPLLCONVOLTREP")
  (make-package "RADAR_MSGS::RLMONPLLCONVOLTREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonPllConVoltRep.msg.html


(defclass radar_msgs::RlMonPllConVoltRep
  :super ros::object
  :slots (_statusFlags _errorCode _pllContVoltVal _reserved _timeStamp ))

(defmethod radar_msgs::RlMonPllConVoltRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:pllContVoltVal __pllContVoltVal) (make-array 8 :initial-element 0 :element-type :integer))
    ((:reserved __reserved) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _pllContVoltVal __pllContVoltVal)
   (setq _reserved (round __reserved))
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:pllContVoltVal
   (&optional __pllContVoltVal)
   (if __pllContVoltVal (setq _pllContVoltVal __pllContVoltVal)) _pllContVoltVal)
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
    ;; int16[8] _pllContVoltVal
    (* 2    8)
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
     ;; int16[8] _pllContVoltVal
     (dotimes (i 8)
       (write-word (elt _pllContVoltVal i) s)
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
   ;; int16[8] _pllContVoltVal
   (dotimes (i (length _pllContVoltVal))
     (setf (elt _pllContVoltVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonPllConVoltRep :md5sum-) "bec4aa001519a1f3a0bc45f947d062f9")
(setf (get radar_msgs::RlMonPllConVoltRep :datatype-) "radar_msgs/RlMonPllConVoltRep")
(setf (get radar_msgs::RlMonPllConVoltRep :definition-)
      "uint16      statusFlags
uint16      errorCode
int16[8]    pllContVoltVal
uint32      reserved
uint32      timeStamp
")



(provide :radar_msgs/RlMonPllConVoltRep "bec4aa001519a1f3a0bc45f947d062f9")


