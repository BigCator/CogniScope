;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonTxBallBreakRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonTxBallBreakRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONTXBALLBREAKREP")
  (make-package "RADAR_MSGS::RLMONTXBALLBREAKREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonTxBallBreakRep.msg.html


(defclass radar_msgs::RlMonTxBallBreakRep
  :super ros::object
  :slots (_statusFlags _errorCode _txReflCoefVal _reserved0 _reserved1 _timeStamp ))

(defmethod radar_msgs::RlMonTxBallBreakRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:txReflCoefVal __txReflCoefVal) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _txReflCoefVal (round __txReflCoefVal))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:txReflCoefVal
   (&optional __txReflCoefVal)
   (if __txReflCoefVal (setq _txReflCoefVal __txReflCoefVal)) _txReflCoefVal)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
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
    ;; int16 _txReflCoefVal
    2
    ;; uint16 _reserved0
    2
    ;; uint32 _reserved1
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
     ;; int16 _txReflCoefVal
       (write-word _txReflCoefVal s)
     ;; uint16 _reserved0
       (write-word _reserved0 s)
     ;; uint32 _reserved1
       (write-long _reserved1 s)
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
   ;; int16 _txReflCoefVal
     (setq _txReflCoefVal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonTxBallBreakRep :md5sum-) "7fdb45f1877e63d7b9ad34c244554856")
(setf (get radar_msgs::RlMonTxBallBreakRep :datatype-) "radar_msgs/RlMonTxBallBreakRep")
(setf (get radar_msgs::RlMonTxBallBreakRep :definition-)
      "uint16 statusFlags
uint16 errorCode
int16 txReflCoefVal
uint16 reserved0
uint32 reserved1
uint32 timeStamp
")



(provide :radar_msgs/RlMonTxBallBreakRep "7fdb45f1877e63d7b9ad34c244554856")


