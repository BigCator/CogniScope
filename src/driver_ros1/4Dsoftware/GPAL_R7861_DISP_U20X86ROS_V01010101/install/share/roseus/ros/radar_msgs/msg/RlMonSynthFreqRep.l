;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonSynthFreqRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonSynthFreqRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONSYNTHFREQREP")
  (make-package "RADAR_MSGS::RLMONSYNTHFREQREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonSynthFreqRep.msg.html


(defclass radar_msgs::RlMonSynthFreqRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _reserved0 _reserved1 _maxFreqErVal _freqFailCnt _reserved2 _reserved3 _timeStamp ))

(defmethod radar_msgs::RlMonSynthFreqRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:maxFreqErVal __maxFreqErVal) 0)
    ((:freqFailCnt __freqFailCnt) 0)
    ((:reserved2 __reserved2) 0)
    ((:reserved3 __reserved3) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   (setq _maxFreqErVal (round __maxFreqErVal))
   (setq _freqFailCnt (round __freqFailCnt))
   (setq _reserved2 (round __reserved2))
   (setq _reserved3 (round __reserved3))
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
  (:maxFreqErVal
   (&optional __maxFreqErVal)
   (if __maxFreqErVal (setq _maxFreqErVal __maxFreqErVal)) _maxFreqErVal)
  (:freqFailCnt
   (&optional __freqFailCnt)
   (if __freqFailCnt (setq _freqFailCnt __freqFailCnt)) _freqFailCnt)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:reserved3
   (&optional __reserved3)
   (if __reserved3 (setq _reserved3 __reserved3)) _reserved3)
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
    ;; int32 _maxFreqErVal
    4
    ;; uint32 _freqFailCnt
    4
    ;; uint32 _reserved2
    4
    ;; uint32 _reserved3
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
     ;; int32 _maxFreqErVal
       (write-long _maxFreqErVal s)
     ;; uint32 _freqFailCnt
       (write-long _freqFailCnt s)
     ;; uint32 _reserved2
       (write-long _reserved2 s)
     ;; uint32 _reserved3
       (write-long _reserved3 s)
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
   ;; int32 _maxFreqErVal
     (setq _maxFreqErVal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _freqFailCnt
     (setq _freqFailCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved3
     (setq _reserved3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonSynthFreqRep :md5sum-) "beaba851e1822aee0650a3be6cc60286")
(setf (get radar_msgs::RlMonSynthFreqRep :datatype-) "radar_msgs/RlMonSynthFreqRep")
(setf (get radar_msgs::RlMonSynthFreqRep :definition-)
      "uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint16 reserved1
int32 maxFreqErVal
uint32 freqFailCnt
uint32 reserved2
uint32 reserved3
uint32 timeStamp
")



(provide :radar_msgs/RlMonSynthFreqRep "beaba851e1822aee0650a3be6cc60286")


