;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonRxGainPhRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonRxGainPhRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONRXGAINPHREP")
  (make-package "RADAR_MSGS::RLMONRXGAINPHREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonRxGainPhRep.msg.html


(defclass radar_msgs::RlMonRxGainPhRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _loopbackPowerRF1 _loopbackPowerRF2 _loopbackPowerRF3 _rxGainVal _rxPhaseVal _rxNoisePower1 _rxNoisePower2 _timeStamp ))

(defmethod radar_msgs::RlMonRxGainPhRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:loopbackPowerRF1 __loopbackPowerRF1) 0)
    ((:loopbackPowerRF2 __loopbackPowerRF2) 0)
    ((:loopbackPowerRF3 __loopbackPowerRF3) 0)
    ((:rxGainVal __rxGainVal) (make-array 12 :initial-element 0 :element-type :integer))
    ((:rxPhaseVal __rxPhaseVal) (make-array 12 :initial-element 0 :element-type :integer))
    ((:rxNoisePower1 __rxNoisePower1) 0)
    ((:rxNoisePower2 __rxNoisePower2) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _loopbackPowerRF1 (round __loopbackPowerRF1))
   (setq _loopbackPowerRF2 (round __loopbackPowerRF2))
   (setq _loopbackPowerRF3 (round __loopbackPowerRF3))
   (setq _rxGainVal __rxGainVal)
   (setq _rxPhaseVal __rxPhaseVal)
   (setq _rxNoisePower1 (round __rxNoisePower1))
   (setq _rxNoisePower2 (round __rxNoisePower2))
   (setq _timeStamp (round __timeStamp))
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
  (:loopbackPowerRF1
   (&optional __loopbackPowerRF1)
   (if __loopbackPowerRF1 (setq _loopbackPowerRF1 __loopbackPowerRF1)) _loopbackPowerRF1)
  (:loopbackPowerRF2
   (&optional __loopbackPowerRF2)
   (if __loopbackPowerRF2 (setq _loopbackPowerRF2 __loopbackPowerRF2)) _loopbackPowerRF2)
  (:loopbackPowerRF3
   (&optional __loopbackPowerRF3)
   (if __loopbackPowerRF3 (setq _loopbackPowerRF3 __loopbackPowerRF3)) _loopbackPowerRF3)
  (:rxGainVal
   (&optional __rxGainVal)
   (if __rxGainVal (setq _rxGainVal __rxGainVal)) _rxGainVal)
  (:rxPhaseVal
   (&optional __rxPhaseVal)
   (if __rxPhaseVal (setq _rxPhaseVal __rxPhaseVal)) _rxPhaseVal)
  (:rxNoisePower1
   (&optional __rxNoisePower1)
   (if __rxNoisePower1 (setq _rxNoisePower1 __rxNoisePower1)) _rxNoisePower1)
  (:rxNoisePower2
   (&optional __rxNoisePower2)
   (if __rxNoisePower2 (setq _rxNoisePower2 __rxNoisePower2)) _rxNoisePower2)
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
    ;; uint8 _profIndex
    1
    ;; uint8 _loopbackPowerRF1
    1
    ;; uint8 _loopbackPowerRF2
    1
    ;; uint8 _loopbackPowerRF3
    1
    ;; uint16[12] _rxGainVal
    (* 2    12)
    ;; uint16[12] _rxPhaseVal
    (* 2    12)
    ;; uint32 _rxNoisePower1
    4
    ;; uint32 _rxNoisePower2
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
     ;; uint8 _profIndex
       (write-byte _profIndex s)
     ;; uint8 _loopbackPowerRF1
       (write-byte _loopbackPowerRF1 s)
     ;; uint8 _loopbackPowerRF2
       (write-byte _loopbackPowerRF2 s)
     ;; uint8 _loopbackPowerRF3
       (write-byte _loopbackPowerRF3 s)
     ;; uint16[12] _rxGainVal
     (dotimes (i 12)
       (write-word (elt _rxGainVal i) s)
       )
     ;; uint16[12] _rxPhaseVal
     (dotimes (i 12)
       (write-word (elt _rxPhaseVal i) s)
       )
     ;; uint32 _rxNoisePower1
       (write-long _rxNoisePower1 s)
     ;; uint32 _rxNoisePower2
       (write-long _rxNoisePower2 s)
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
   ;; uint8 _profIndex
     (setq _profIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _loopbackPowerRF1
     (setq _loopbackPowerRF1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _loopbackPowerRF2
     (setq _loopbackPowerRF2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _loopbackPowerRF3
     (setq _loopbackPowerRF3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16[12] _rxGainVal
   (dotimes (i (length _rxGainVal))
     (setf (elt _rxGainVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint16[12] _rxPhaseVal
   (dotimes (i (length _rxPhaseVal))
     (setf (elt _rxPhaseVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint32 _rxNoisePower1
     (setq _rxNoisePower1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _rxNoisePower2
     (setq _rxNoisePower2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonRxGainPhRep :md5sum-) "f089091924cc998599ccbe78b8cddb04")
(setf (get radar_msgs::RlMonRxGainPhRep :datatype-) "radar_msgs/RlMonRxGainPhRep")
(setf (get radar_msgs::RlMonRxGainPhRep :definition-)
      "uint16      statusFlags
uint16      errorCode
uint8       profIndex
uint8       loopbackPowerRF1
uint8       loopbackPowerRF2
uint8       loopbackPowerRF3
uint16[12]  rxGainVal
uint16[12]  rxPhaseVal
uint32      rxNoisePower1
uint32      rxNoisePower2
uint32      timeStamp
")



(provide :radar_msgs/RlMonRxGainPhRep "f089091924cc998599ccbe78b8cddb04")


