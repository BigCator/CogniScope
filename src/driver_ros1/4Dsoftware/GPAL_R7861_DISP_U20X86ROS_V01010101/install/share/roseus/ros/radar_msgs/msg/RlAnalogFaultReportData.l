;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlAnalogFaultReportData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlAnalogFaultReportData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLANALOGFAULTREPORTDATA")
  (make-package "RADAR_MSGS::RLANALOGFAULTREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude RlAnalogFaultReportData.msg.html


(defclass radar_msgs::RlAnalogFaultReportData
  :super ros::object
  :slots (_faultType _reserved0 _reserved1 _faultSig _reserved2 ))

(defmethod radar_msgs::RlAnalogFaultReportData
  (:init
   (&key
    ((:faultType __faultType) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:faultSig __faultSig) 0)
    ((:reserved2 __reserved2) 0)
    )
   (send-super :init)
   (setq _faultType (round __faultType))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   (setq _faultSig (round __faultSig))
   (setq _reserved2 (round __reserved2))
   self)
  (:faultType
   (&optional __faultType)
   (if __faultType (setq _faultType __faultType)) _faultType)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:faultSig
   (&optional __faultSig)
   (if __faultSig (setq _faultSig __faultSig)) _faultSig)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint8 _faultType
    1
    ;; uint8 _reserved0
    1
    ;; uint16 _reserved1
    2
    ;; uint32 _faultSig
    4
    ;; uint32 _reserved2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _faultType
       (write-byte _faultType s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint16 _reserved1
       (write-word _reserved1 s)
     ;; uint32 _faultSig
       (write-long _faultSig s)
     ;; uint32 _reserved2
       (write-long _reserved2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _faultType
     (setq _faultType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _faultSig
     (setq _faultSig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlAnalogFaultReportData :md5sum-) "86377d145b029d12a69d2725d0e11a16")
(setf (get radar_msgs::RlAnalogFaultReportData :datatype-) "radar_msgs/RlAnalogFaultReportData")
(setf (get radar_msgs::RlAnalogFaultReportData :definition-)
      "uint8   faultType
uint8   reserved0
uint16  reserved1
uint32  faultSig
uint32  reserved2
")



(provide :radar_msgs/RlAnalogFaultReportData "86377d145b029d12a69d2725d0e11a16")


