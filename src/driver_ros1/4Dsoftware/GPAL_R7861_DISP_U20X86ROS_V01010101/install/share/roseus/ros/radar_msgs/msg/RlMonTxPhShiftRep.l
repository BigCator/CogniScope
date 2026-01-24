;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonTxPhShiftRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonTxPhShiftRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONTXPHSHIFTREP")
  (make-package "RADAR_MSGS::RLMONTXPHSHIFTREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonTxPhShiftRep.msg.html


(defclass radar_msgs::RlMonTxPhShiftRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _reserved0 _reserved1 _phaseShifterMonVal1 _phaseShifterMonVal2 _phaseShifterMonVal3 _phaseShifterMonVal4 _txPsAmplitudeVal1 _txPsAmplitudeVal2 _txPsAmplitudeVal3 _txPsAmplitudeVal4 _txPsNoiseVal1 _txPsNoiseVal2 _txPsNoiseVal3 _txPsNoiseVal4 _timeStamp _reserved2 _reserved3 ))

(defmethod radar_msgs::RlMonTxPhShiftRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:phaseShifterMonVal1 __phaseShifterMonVal1) 0)
    ((:phaseShifterMonVal2 __phaseShifterMonVal2) 0)
    ((:phaseShifterMonVal3 __phaseShifterMonVal3) 0)
    ((:phaseShifterMonVal4 __phaseShifterMonVal4) 0)
    ((:txPsAmplitudeVal1 __txPsAmplitudeVal1) 0)
    ((:txPsAmplitudeVal2 __txPsAmplitudeVal2) 0)
    ((:txPsAmplitudeVal3 __txPsAmplitudeVal3) 0)
    ((:txPsAmplitudeVal4 __txPsAmplitudeVal4) 0)
    ((:txPsNoiseVal1 __txPsNoiseVal1) 0)
    ((:txPsNoiseVal2 __txPsNoiseVal2) 0)
    ((:txPsNoiseVal3 __txPsNoiseVal3) 0)
    ((:txPsNoiseVal4 __txPsNoiseVal4) 0)
    ((:timeStamp __timeStamp) 0)
    ((:reserved2 __reserved2) 0)
    ((:reserved3 __reserved3) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   (setq _phaseShifterMonVal1 (round __phaseShifterMonVal1))
   (setq _phaseShifterMonVal2 (round __phaseShifterMonVal2))
   (setq _phaseShifterMonVal3 (round __phaseShifterMonVal3))
   (setq _phaseShifterMonVal4 (round __phaseShifterMonVal4))
   (setq _txPsAmplitudeVal1 (round __txPsAmplitudeVal1))
   (setq _txPsAmplitudeVal2 (round __txPsAmplitudeVal2))
   (setq _txPsAmplitudeVal3 (round __txPsAmplitudeVal3))
   (setq _txPsAmplitudeVal4 (round __txPsAmplitudeVal4))
   (setq _txPsNoiseVal1 (round __txPsNoiseVal1))
   (setq _txPsNoiseVal2 (round __txPsNoiseVal2))
   (setq _txPsNoiseVal3 (round __txPsNoiseVal3))
   (setq _txPsNoiseVal4 (round __txPsNoiseVal4))
   (setq _timeStamp (round __timeStamp))
   (setq _reserved2 (round __reserved2))
   (setq _reserved3 (round __reserved3))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:profIndex
   (&optional __profIndex)
   (if __profIndex (setq _profIndex __profIndex)) _profIndex)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:phaseShifterMonVal1
   (&optional __phaseShifterMonVal1)
   (if __phaseShifterMonVal1 (setq _phaseShifterMonVal1 __phaseShifterMonVal1)) _phaseShifterMonVal1)
  (:phaseShifterMonVal2
   (&optional __phaseShifterMonVal2)
   (if __phaseShifterMonVal2 (setq _phaseShifterMonVal2 __phaseShifterMonVal2)) _phaseShifterMonVal2)
  (:phaseShifterMonVal3
   (&optional __phaseShifterMonVal3)
   (if __phaseShifterMonVal3 (setq _phaseShifterMonVal3 __phaseShifterMonVal3)) _phaseShifterMonVal3)
  (:phaseShifterMonVal4
   (&optional __phaseShifterMonVal4)
   (if __phaseShifterMonVal4 (setq _phaseShifterMonVal4 __phaseShifterMonVal4)) _phaseShifterMonVal4)
  (:txPsAmplitudeVal1
   (&optional __txPsAmplitudeVal1)
   (if __txPsAmplitudeVal1 (setq _txPsAmplitudeVal1 __txPsAmplitudeVal1)) _txPsAmplitudeVal1)
  (:txPsAmplitudeVal2
   (&optional __txPsAmplitudeVal2)
   (if __txPsAmplitudeVal2 (setq _txPsAmplitudeVal2 __txPsAmplitudeVal2)) _txPsAmplitudeVal2)
  (:txPsAmplitudeVal3
   (&optional __txPsAmplitudeVal3)
   (if __txPsAmplitudeVal3 (setq _txPsAmplitudeVal3 __txPsAmplitudeVal3)) _txPsAmplitudeVal3)
  (:txPsAmplitudeVal4
   (&optional __txPsAmplitudeVal4)
   (if __txPsAmplitudeVal4 (setq _txPsAmplitudeVal4 __txPsAmplitudeVal4)) _txPsAmplitudeVal4)
  (:txPsNoiseVal1
   (&optional __txPsNoiseVal1)
   (if __txPsNoiseVal1 (setq _txPsNoiseVal1 __txPsNoiseVal1)) _txPsNoiseVal1)
  (:txPsNoiseVal2
   (&optional __txPsNoiseVal2)
   (if __txPsNoiseVal2 (setq _txPsNoiseVal2 __txPsNoiseVal2)) _txPsNoiseVal2)
  (:txPsNoiseVal3
   (&optional __txPsNoiseVal3)
   (if __txPsNoiseVal3 (setq _txPsNoiseVal3 __txPsNoiseVal3)) _txPsNoiseVal3)
  (:txPsNoiseVal4
   (&optional __txPsNoiseVal4)
   (if __txPsNoiseVal4 (setq _txPsNoiseVal4 __txPsNoiseVal4)) _txPsNoiseVal4)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:reserved3
   (&optional __reserved3)
   (if __reserved3 (setq _reserved3 __reserved3)) _reserved3)
  (:serialization-length
   ()
   (+
    ;; uint16 _statusFlags
    2
    ;; uint16 _errorCode
    2
    ;; uint8 _profIndex
    1
    ;; uint8 _reserved0
    1
    ;; uint16 _reserved1
    2
    ;; uint16 _phaseShifterMonVal1
    2
    ;; uint16 _phaseShifterMonVal2
    2
    ;; uint16 _phaseShifterMonVal3
    2
    ;; uint16 _phaseShifterMonVal4
    2
    ;; int16 _txPsAmplitudeVal1
    2
    ;; int16 _txPsAmplitudeVal2
    2
    ;; int16 _txPsAmplitudeVal3
    2
    ;; int16 _txPsAmplitudeVal4
    2
    ;; int8 _txPsNoiseVal1
    1
    ;; int8 _txPsNoiseVal2
    1
    ;; int8 _txPsNoiseVal3
    1
    ;; int8 _txPsNoiseVal4
    1
    ;; uint32 _timeStamp
    4
    ;; uint32 _reserved2
    4
    ;; uint32 _reserved3
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
     ;; uint8 _profIndex
       (write-byte _profIndex s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint16 _reserved1
       (write-word _reserved1 s)
     ;; uint16 _phaseShifterMonVal1
       (write-word _phaseShifterMonVal1 s)
     ;; uint16 _phaseShifterMonVal2
       (write-word _phaseShifterMonVal2 s)
     ;; uint16 _phaseShifterMonVal3
       (write-word _phaseShifterMonVal3 s)
     ;; uint16 _phaseShifterMonVal4
       (write-word _phaseShifterMonVal4 s)
     ;; int16 _txPsAmplitudeVal1
       (write-word _txPsAmplitudeVal1 s)
     ;; int16 _txPsAmplitudeVal2
       (write-word _txPsAmplitudeVal2 s)
     ;; int16 _txPsAmplitudeVal3
       (write-word _txPsAmplitudeVal3 s)
     ;; int16 _txPsAmplitudeVal4
       (write-word _txPsAmplitudeVal4 s)
     ;; int8 _txPsNoiseVal1
       (write-byte _txPsNoiseVal1 s)
     ;; int8 _txPsNoiseVal2
       (write-byte _txPsNoiseVal2 s)
     ;; int8 _txPsNoiseVal3
       (write-byte _txPsNoiseVal3 s)
     ;; int8 _txPsNoiseVal4
       (write-byte _txPsNoiseVal4 s)
     ;; uint32 _timeStamp
       (write-long _timeStamp s)
     ;; uint32 _reserved2
       (write-long _reserved2 s)
     ;; uint32 _reserved3
       (write-long _reserved3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _statusFlags
     (setq _statusFlags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _errorCode
     (setq _errorCode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _profIndex
     (setq _profIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _phaseShifterMonVal1
     (setq _phaseShifterMonVal1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _phaseShifterMonVal2
     (setq _phaseShifterMonVal2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _phaseShifterMonVal3
     (setq _phaseShifterMonVal3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _phaseShifterMonVal4
     (setq _phaseShifterMonVal4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _txPsAmplitudeVal1
     (setq _txPsAmplitudeVal1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _txPsAmplitudeVal2
     (setq _txPsAmplitudeVal2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _txPsAmplitudeVal3
     (setq _txPsAmplitudeVal3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _txPsAmplitudeVal4
     (setq _txPsAmplitudeVal4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _txPsNoiseVal1
     (setq _txPsNoiseVal1 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _txPsNoiseVal1 127) (setq _txPsNoiseVal1 (- _txPsNoiseVal1 256)))
   ;; int8 _txPsNoiseVal2
     (setq _txPsNoiseVal2 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _txPsNoiseVal2 127) (setq _txPsNoiseVal2 (- _txPsNoiseVal2 256)))
   ;; int8 _txPsNoiseVal3
     (setq _txPsNoiseVal3 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _txPsNoiseVal3 127) (setq _txPsNoiseVal3 (- _txPsNoiseVal3 256)))
   ;; int8 _txPsNoiseVal4
     (setq _txPsNoiseVal4 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _txPsNoiseVal4 127) (setq _txPsNoiseVal4 (- _txPsNoiseVal4 256)))
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved3
     (setq _reserved3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonTxPhShiftRep :md5sum-) "c35e9ef88c30d781e09f2fb7d35ab829")
(setf (get radar_msgs::RlMonTxPhShiftRep :datatype-) "radar_msgs/RlMonTxPhShiftRep")
(setf (get radar_msgs::RlMonTxPhShiftRep :definition-)
      "uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint16 reserved1
uint16 phaseShifterMonVal1
uint16 phaseShifterMonVal2
uint16 phaseShifterMonVal3
uint16 phaseShifterMonVal4
int16 txPsAmplitudeVal1
int16 txPsAmplitudeVal2
int16 txPsAmplitudeVal3
int16 txPsAmplitudeVal4
int8 txPsNoiseVal1
int8 txPsNoiseVal2
int8 txPsNoiseVal3
int8 txPsNoiseVal4
uint32 timeStamp
uint32 reserved2
uint32 reserved3
")



(provide :radar_msgs/RlMonTxPhShiftRep "c35e9ef88c30d781e09f2fb7d35ab829")


