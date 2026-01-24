;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonSynthFreqNonLiveRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonSynthFreqNonLiveRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONSYNTHFREQNONLIVEREP")
  (make-package "RADAR_MSGS::RLMONSYNTHFREQNONLIVEREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonSynthFreqNonLiveRep.msg.html


(defclass radar_msgs::RlMonSynthFreqNonLiveRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex0 _reserved0 _reserved1 _maxFreqErVal0 _freqFailCnt0 _maxFreqFailTime0 _reserved2 _profIndex1 _reserved3 _reserved4 _maxFreqErVal1 _freqFailCnt1 _maxFreqFailTime1 _reserved5 _timeStamp ))

(defmethod radar_msgs::RlMonSynthFreqNonLiveRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex0 __profIndex0) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:maxFreqErVal0 __maxFreqErVal0) 0)
    ((:freqFailCnt0 __freqFailCnt0) 0)
    ((:maxFreqFailTime0 __maxFreqFailTime0) 0)
    ((:reserved2 __reserved2) 0)
    ((:profIndex1 __profIndex1) 0)
    ((:reserved3 __reserved3) 0)
    ((:reserved4 __reserved4) 0)
    ((:maxFreqErVal1 __maxFreqErVal1) 0)
    ((:freqFailCnt1 __freqFailCnt1) 0)
    ((:maxFreqFailTime1 __maxFreqFailTime1) 0)
    ((:reserved5 __reserved5) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex0 (round __profIndex0))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   (setq _maxFreqErVal0 (round __maxFreqErVal0))
   (setq _freqFailCnt0 (round __freqFailCnt0))
   (setq _maxFreqFailTime0 (round __maxFreqFailTime0))
   (setq _reserved2 (round __reserved2))
   (setq _profIndex1 (round __profIndex1))
   (setq _reserved3 (round __reserved3))
   (setq _reserved4 (round __reserved4))
   (setq _maxFreqErVal1 (round __maxFreqErVal1))
   (setq _freqFailCnt1 (round __freqFailCnt1))
   (setq _maxFreqFailTime1 (round __maxFreqFailTime1))
   (setq _reserved5 (round __reserved5))
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:profIndex0
   (&optional __profIndex0)
   (if __profIndex0 (setq _profIndex0 __profIndex0)) _profIndex0)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:maxFreqErVal0
   (&optional __maxFreqErVal0)
   (if __maxFreqErVal0 (setq _maxFreqErVal0 __maxFreqErVal0)) _maxFreqErVal0)
  (:freqFailCnt0
   (&optional __freqFailCnt0)
   (if __freqFailCnt0 (setq _freqFailCnt0 __freqFailCnt0)) _freqFailCnt0)
  (:maxFreqFailTime0
   (&optional __maxFreqFailTime0)
   (if __maxFreqFailTime0 (setq _maxFreqFailTime0 __maxFreqFailTime0)) _maxFreqFailTime0)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:profIndex1
   (&optional __profIndex1)
   (if __profIndex1 (setq _profIndex1 __profIndex1)) _profIndex1)
  (:reserved3
   (&optional __reserved3)
   (if __reserved3 (setq _reserved3 __reserved3)) _reserved3)
  (:reserved4
   (&optional __reserved4)
   (if __reserved4 (setq _reserved4 __reserved4)) _reserved4)
  (:maxFreqErVal1
   (&optional __maxFreqErVal1)
   (if __maxFreqErVal1 (setq _maxFreqErVal1 __maxFreqErVal1)) _maxFreqErVal1)
  (:freqFailCnt1
   (&optional __freqFailCnt1)
   (if __freqFailCnt1 (setq _freqFailCnt1 __freqFailCnt1)) _freqFailCnt1)
  (:maxFreqFailTime1
   (&optional __maxFreqFailTime1)
   (if __maxFreqFailTime1 (setq _maxFreqFailTime1 __maxFreqFailTime1)) _maxFreqFailTime1)
  (:reserved5
   (&optional __reserved5)
   (if __reserved5 (setq _reserved5 __reserved5)) _reserved5)
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
    ;; uint8 _profIndex0
    1
    ;; uint8 _reserved0
    1
    ;; uint16 _reserved1
    2
    ;; int32 _maxFreqErVal0
    4
    ;; uint32 _freqFailCnt0
    4
    ;; uint32 _maxFreqFailTime0
    4
    ;; uint32 _reserved2
    4
    ;; uint8 _profIndex1
    1
    ;; uint8 _reserved3
    1
    ;; uint16 _reserved4
    2
    ;; int32 _maxFreqErVal1
    4
    ;; uint32 _freqFailCnt1
    4
    ;; uint32 _maxFreqFailTime1
    4
    ;; uint32 _reserved5
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
     ;; uint8 _profIndex0
       (write-byte _profIndex0 s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint16 _reserved1
       (write-word _reserved1 s)
     ;; int32 _maxFreqErVal0
       (write-long _maxFreqErVal0 s)
     ;; uint32 _freqFailCnt0
       (write-long _freqFailCnt0 s)
     ;; uint32 _maxFreqFailTime0
       (write-long _maxFreqFailTime0 s)
     ;; uint32 _reserved2
       (write-long _reserved2 s)
     ;; uint8 _profIndex1
       (write-byte _profIndex1 s)
     ;; uint8 _reserved3
       (write-byte _reserved3 s)
     ;; uint16 _reserved4
       (write-word _reserved4 s)
     ;; int32 _maxFreqErVal1
       (write-long _maxFreqErVal1 s)
     ;; uint32 _freqFailCnt1
       (write-long _freqFailCnt1 s)
     ;; uint32 _maxFreqFailTime1
       (write-long _maxFreqFailTime1 s)
     ;; uint32 _reserved5
       (write-long _reserved5 s)
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
   ;; uint8 _profIndex0
     (setq _profIndex0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _maxFreqErVal0
     (setq _maxFreqErVal0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _freqFailCnt0
     (setq _freqFailCnt0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _maxFreqFailTime0
     (setq _maxFreqFailTime0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _profIndex1
     (setq _profIndex1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved3
     (setq _reserved3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _reserved4
     (setq _reserved4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _maxFreqErVal1
     (setq _maxFreqErVal1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _freqFailCnt1
     (setq _freqFailCnt1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _maxFreqFailTime1
     (setq _maxFreqFailTime1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved5
     (setq _reserved5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonSynthFreqNonLiveRep :md5sum-) "d0edbc23d8d4e3fb8b9ba98fa67b4c6d")
(setf (get radar_msgs::RlMonSynthFreqNonLiveRep :datatype-) "radar_msgs/RlMonSynthFreqNonLiveRep")
(setf (get radar_msgs::RlMonSynthFreqNonLiveRep :definition-)
      "uint16 statusFlags
uint16 errorCode
uint8 profIndex0
uint8 reserved0
uint16 reserved1
int32 maxFreqErVal0
uint32 freqFailCnt0
uint32 maxFreqFailTime0
uint32 reserved2
uint8 profIndex1
uint8 reserved3
uint16 reserved4
int32 maxFreqErVal1
uint32 freqFailCnt1
uint32 maxFreqFailTime1
uint32 reserved5
uint32 timeStamp
")



(provide :radar_msgs/RlMonSynthFreqNonLiveRep "d0edbc23d8d4e3fb8b9ba98fa67b4c6d")


