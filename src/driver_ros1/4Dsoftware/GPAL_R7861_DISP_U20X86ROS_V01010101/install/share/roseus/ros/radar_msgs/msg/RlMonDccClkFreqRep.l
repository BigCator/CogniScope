;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonDccClkFreqRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonDccClkFreqRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONDCCCLKFREQREP")
  (make-package "RADAR_MSGS::RLMONDCCCLKFREQREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonDccClkFreqRep.msg.html


(defclass radar_msgs::RlMonDccClkFreqRep
  :super ros::object
  :slots (_statusFlags _errorCode _freqMeasVal _reserved _timeStamp ))

(defmethod radar_msgs::RlMonDccClkFreqRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:freqMeasVal __freqMeasVal) (make-array 8 :initial-element 0 :element-type :integer))
    ((:reserved __reserved) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _freqMeasVal __freqMeasVal)
   (setq _reserved (round __reserved))
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:freqMeasVal
   (&optional __freqMeasVal)
   (if __freqMeasVal (setq _freqMeasVal __freqMeasVal)) _freqMeasVal)
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
    ;; uint16[8] _freqMeasVal
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
     ;; uint16[8] _freqMeasVal
     (dotimes (i 8)
       (write-word (elt _freqMeasVal i) s)
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
   ;; uint16[8] _freqMeasVal
   (dotimes (i (length _freqMeasVal))
     (setf (elt _freqMeasVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonDccClkFreqRep :md5sum-) "c8d68e78d1b1bd39b7cf6ab5fdeb43e2")
(setf (get radar_msgs::RlMonDccClkFreqRep :datatype-) "radar_msgs/RlMonDccClkFreqRep")
(setf (get radar_msgs::RlMonDccClkFreqRep :definition-)
      "uint16      statusFlags
uint16      errorCode
uint16[8]   freqMeasVal
uint32      reserved
uint32      timeStamp
")



(provide :radar_msgs/RlMonDccClkFreqRep "c8d68e78d1b1bd39b7cf6ab5fdeb43e2")


