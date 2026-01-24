;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonPmclkloIntAnaSigRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonPmclkloIntAnaSigRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONPMCLKLOINTANASIGREP")
  (make-package "RADAR_MSGS::RLMONPMCLKLOINTANASIGREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonPmclkloIntAnaSigRep.msg.html


(defclass radar_msgs::RlMonPmclkloIntAnaSigRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _sync20GPower _reserved _timeStamp ))

(defmethod radar_msgs::RlMonPmclkloIntAnaSigRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:sync20GPower __sync20GPower) 0)
    ((:reserved __reserved) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _sync20GPower (round __sync20GPower))
   (setq _reserved (round __reserved))
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
  (:sync20GPower
   (&optional __sync20GPower)
   (if __sync20GPower (setq _sync20GPower __sync20GPower)) _sync20GPower)
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
    ;; uint8 _profIndex
    1
    ;; int8 _sync20GPower
    1
    ;; uint16 _reserved
    2
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
     ;; int8 _sync20GPower
       (write-byte _sync20GPower s)
     ;; uint16 _reserved
       (write-word _reserved s)
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
   ;; int8 _sync20GPower
     (setq _sync20GPower (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sync20GPower 127) (setq _sync20GPower (- _sync20GPower 256)))
   ;; uint16 _reserved
     (setq _reserved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonPmclkloIntAnaSigRep :md5sum-) "c312c17cf1d0d5133fcf19c9462adfaa")
(setf (get radar_msgs::RlMonPmclkloIntAnaSigRep :datatype-) "radar_msgs/RlMonPmclkloIntAnaSigRep")
(setf (get radar_msgs::RlMonPmclkloIntAnaSigRep :definition-)
      "uint16 statusFlags
uint16 errorCode
uint8 profIndex
int8 sync20GPower
uint16 reserved
uint32 timeStamp
")



(provide :radar_msgs/RlMonPmclkloIntAnaSigRep "c312c17cf1d0d5133fcf19c9462adfaa")


