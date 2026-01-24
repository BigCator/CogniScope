;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonReportHdrData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonReportHdrData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONREPORTHDRDATA")
  (make-package "RADAR_MSGS::RLMONREPORTHDRDATA"))

(in-package "ROS")
;;//! \htmlinclude RlMonReportHdrData.msg.html


(defclass radar_msgs::RlMonReportHdrData
  :super ros::object
  :slots (_fttiCount _avgTemp _reserved0 _reserved1 ))

(defmethod radar_msgs::RlMonReportHdrData
  (:init
   (&key
    ((:fttiCount __fttiCount) 0)
    ((:avgTemp __avgTemp) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    )
   (send-super :init)
   (setq _fttiCount (round __fttiCount))
   (setq _avgTemp (round __avgTemp))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   self)
  (:fttiCount
   (&optional __fttiCount)
   (if __fttiCount (setq _fttiCount __fttiCount)) _fttiCount)
  (:avgTemp
   (&optional __avgTemp)
   (if __avgTemp (setq _avgTemp __avgTemp)) _avgTemp)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint32 _fttiCount
    4
    ;; uint16 _avgTemp
    2
    ;; uint16 _reserved0
    2
    ;; uint32 _reserved1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _fttiCount
       (write-long _fttiCount s)
     ;; uint16 _avgTemp
       (write-word _avgTemp s)
     ;; uint16 _reserved0
       (write-word _reserved0 s)
     ;; uint32 _reserved1
       (write-long _reserved1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _fttiCount
     (setq _fttiCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _avgTemp
     (setq _avgTemp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonReportHdrData :md5sum-) "98626e73845bccc896ca0d734491f4f9")
(setf (get radar_msgs::RlMonReportHdrData :datatype-) "radar_msgs/RlMonReportHdrData")
(setf (get radar_msgs::RlMonReportHdrData :definition-)
      "uint32  fttiCount
uint16  avgTemp
uint16  reserved0
uint32  reserved1
")



(provide :radar_msgs/RlMonReportHdrData "98626e73845bccc896ca0d734491f4f9")


