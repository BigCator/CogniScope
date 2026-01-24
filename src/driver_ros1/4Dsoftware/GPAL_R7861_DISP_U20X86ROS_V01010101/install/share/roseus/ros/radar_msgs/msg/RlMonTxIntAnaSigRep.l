;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonTxIntAnaSigRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonTxIntAnaSigRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONTXINTANASIGREP")
  (make-package "RADAR_MSGS::RLMONTXINTANASIGREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonTxIntAnaSigRep.msg.html


(defclass radar_msgs::RlMonTxIntAnaSigRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _reserved0 _phShiftDacIdeltaMin _phShiftDacQdeltaMin _timeStamp ))

(defmethod radar_msgs::RlMonTxIntAnaSigRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:reserved0 __reserved0) 0)
    ((:phShiftDacIdeltaMin __phShiftDacIdeltaMin) 0)
    ((:phShiftDacQdeltaMin __phShiftDacQdeltaMin) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _reserved0 (round __reserved0))
   (setq _phShiftDacIdeltaMin (round __phShiftDacIdeltaMin))
   (setq _phShiftDacQdeltaMin (round __phShiftDacQdeltaMin))
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
  (:phShiftDacIdeltaMin
   (&optional __phShiftDacIdeltaMin)
   (if __phShiftDacIdeltaMin (setq _phShiftDacIdeltaMin __phShiftDacIdeltaMin)) _phShiftDacIdeltaMin)
  (:phShiftDacQdeltaMin
   (&optional __phShiftDacQdeltaMin)
   (if __phShiftDacQdeltaMin (setq _phShiftDacQdeltaMin __phShiftDacQdeltaMin)) _phShiftDacQdeltaMin)
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
    ;; uint8 _phShiftDacIdeltaMin
    1
    ;; uint8 _phShiftDacQdeltaMin
    1
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
     ;; uint8 _phShiftDacIdeltaMin
       (write-byte _phShiftDacIdeltaMin s)
     ;; uint8 _phShiftDacQdeltaMin
       (write-byte _phShiftDacQdeltaMin s)
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
   ;; uint8 _phShiftDacIdeltaMin
     (setq _phShiftDacIdeltaMin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _phShiftDacQdeltaMin
     (setq _phShiftDacQdeltaMin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonTxIntAnaSigRep :md5sum-) "9475d3a28bdcb35b92a3be2cb7462b1d")
(setf (get radar_msgs::RlMonTxIntAnaSigRep :datatype-) "radar_msgs/RlMonTxIntAnaSigRep")
(setf (get radar_msgs::RlMonTxIntAnaSigRep :definition-)
      "uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint8 phShiftDacIdeltaMin
uint8 phShiftDacQdeltaMin
uint32 timeStamp
")



(provide :radar_msgs/RlMonTxIntAnaSigRep "9475d3a28bdcb35b92a3be2cb7462b1d")


