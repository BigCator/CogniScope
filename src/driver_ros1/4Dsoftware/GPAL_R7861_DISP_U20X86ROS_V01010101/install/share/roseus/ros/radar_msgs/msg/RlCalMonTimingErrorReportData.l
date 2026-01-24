;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlCalMonTimingErrorReportData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlCalMonTimingErrorReportData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLCALMONTIMINGERRORREPORTDATA")
  (make-package "RADAR_MSGS::RLCALMONTIMINGERRORREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude RlCalMonTimingErrorReportData.msg.html


(defclass radar_msgs::RlCalMonTimingErrorReportData
  :super ros::object
  :slots (_timingFailCode _reserved ))

(defmethod radar_msgs::RlCalMonTimingErrorReportData
  (:init
   (&key
    ((:timingFailCode __timingFailCode) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _timingFailCode (round __timingFailCode))
   (setq _reserved (round __reserved))
   self)
  (:timingFailCode
   (&optional __timingFailCode)
   (if __timingFailCode (setq _timingFailCode __timingFailCode)) _timingFailCode)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint16 _timingFailCode
    2
    ;; uint16 _reserved
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _timingFailCode
       (write-word _timingFailCode s)
     ;; uint16 _reserved
       (write-word _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _timingFailCode
     (setq _timingFailCode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reserved
     (setq _reserved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get radar_msgs::RlCalMonTimingErrorReportData :md5sum-) "ba804855ea66876247a3184393cfedc9")
(setf (get radar_msgs::RlCalMonTimingErrorReportData :datatype-) "radar_msgs/RlCalMonTimingErrorReportData")
(setf (get radar_msgs::RlCalMonTimingErrorReportData :definition-)
      "uint16 timingFailCode
uint16 reserved
")



(provide :radar_msgs/RlCalMonTimingErrorReportData "ba804855ea66876247a3184393cfedc9")


