;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlDigPeriodicReportData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlDigPeriodicReportData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLDIGPERIODICREPORTDATA")
  (make-package "RADAR_MSGS::RLDIGPERIODICREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude RlDigPeriodicReportData.msg.html


(defclass radar_msgs::RlDigPeriodicReportData
  :super ros::object
  :slots (_digMonPeriodicStatus _timeStamp ))

(defmethod radar_msgs::RlDigPeriodicReportData
  (:init
   (&key
    ((:digMonPeriodicStatus __digMonPeriodicStatus) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _digMonPeriodicStatus (round __digMonPeriodicStatus))
   (setq _timeStamp (round __timeStamp))
   self)
  (:digMonPeriodicStatus
   (&optional __digMonPeriodicStatus)
   (if __digMonPeriodicStatus (setq _digMonPeriodicStatus __digMonPeriodicStatus)) _digMonPeriodicStatus)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; uint32 _digMonPeriodicStatus
    4
    ;; uint32 _timeStamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _digMonPeriodicStatus
       (write-long _digMonPeriodicStatus s)
     ;; uint32 _timeStamp
       (write-long _timeStamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _digMonPeriodicStatus
     (setq _digMonPeriodicStatus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlDigPeriodicReportData :md5sum-) "262409da3005a90bd0e6dbfcde33642a")
(setf (get radar_msgs::RlDigPeriodicReportData :datatype-) "radar_msgs/RlDigPeriodicReportData")
(setf (get radar_msgs::RlDigPeriodicReportData :definition-)
      "uint32 digMonPeriodicStatus
uint32 timeStamp
")



(provide :radar_msgs/RlDigPeriodicReportData "262409da3005a90bd0e6dbfcde33642a")


