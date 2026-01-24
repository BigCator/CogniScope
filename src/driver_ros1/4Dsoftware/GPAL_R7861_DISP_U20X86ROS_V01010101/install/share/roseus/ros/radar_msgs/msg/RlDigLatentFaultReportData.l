;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlDigLatentFaultReportData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlDigLatentFaultReportData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLDIGLATENTFAULTREPORTDATA")
  (make-package "RADAR_MSGS::RLDIGLATENTFAULTREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude RlDigLatentFaultReportData.msg.html


(defclass radar_msgs::RlDigLatentFaultReportData
  :super ros::object
  :slots (_digMonLatentFault ))

(defmethod radar_msgs::RlDigLatentFaultReportData
  (:init
   (&key
    ((:digMonLatentFault __digMonLatentFault) 0)
    )
   (send-super :init)
   (setq _digMonLatentFault (round __digMonLatentFault))
   self)
  (:digMonLatentFault
   (&optional __digMonLatentFault)
   (if __digMonLatentFault (setq _digMonLatentFault __digMonLatentFault)) _digMonLatentFault)
  (:serialization-length
   ()
   (+
    ;; uint32 _digMonLatentFault
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _digMonLatentFault
       (write-long _digMonLatentFault s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _digMonLatentFault
     (setq _digMonLatentFault (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlDigLatentFaultReportData :md5sum-) "1d9a5ff36b3bc2ccb74cffbea92268ae")
(setf (get radar_msgs::RlDigLatentFaultReportData :datatype-) "radar_msgs/RlDigLatentFaultReportData")
(setf (get radar_msgs::RlDigLatentFaultReportData :definition-)
      "uint32  digMonLatentFault
")



(provide :radar_msgs/RlDigLatentFaultReportData "1d9a5ff36b3bc2ccb74cffbea92268ae")


