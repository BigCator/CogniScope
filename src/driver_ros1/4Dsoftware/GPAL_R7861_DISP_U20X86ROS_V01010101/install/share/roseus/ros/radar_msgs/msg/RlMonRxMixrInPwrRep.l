;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonRxMixrInPwrRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonRxMixrInPwrRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONRXMIXRINPWRREP")
  (make-package "RADAR_MSGS::RLMONRXMIXRINPWRREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonRxMixrInPwrRep.msg.html


(defclass radar_msgs::RlMonRxMixrInPwrRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _reserved0 _reserved1 _rxMixInVolt _reserved2 _timeStamp ))

(defmethod radar_msgs::RlMonRxMixrInPwrRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:rxMixInVolt __rxMixInVolt) 0)
    ((:reserved2 __reserved2) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   (setq _rxMixInVolt (round __rxMixInVolt))
   (setq _reserved2 (round __reserved2))
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
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:rxMixInVolt
   (&optional __rxMixInVolt)
   (if __rxMixInVolt (setq _rxMixInVolt __rxMixInVolt)) _rxMixInVolt)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
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
    ;; uint8 _reserved0
    1
    ;; uint16 _reserved1
    2
    ;; uint32 _rxMixInVolt
    4
    ;; uint32 _reserved2
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
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint16 _reserved1
       (write-word _reserved1 s)
     ;; uint32 _rxMixInVolt
       (write-long _rxMixInVolt s)
     ;; uint32 _reserved2
       (write-long _reserved2 s)
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
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _rxMixInVolt
     (setq _rxMixInVolt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonRxMixrInPwrRep :md5sum-) "c8e2926468ee6d32bc55c0a04fd5f7b5")
(setf (get radar_msgs::RlMonRxMixrInPwrRep :datatype-) "radar_msgs/RlMonRxMixrInPwrRep")
(setf (get radar_msgs::RlMonRxMixrInPwrRep :definition-)
      "uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint16 reserved1
uint32 rxMixInVolt
uint32 reserved2
uint32 timeStamp
")



(provide :radar_msgs/RlMonRxMixrInPwrRep "c8e2926468ee6d32bc55c0a04fd5f7b5")


