;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlGpAdcData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlGpAdcData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLGPADCDATA")
  (make-package "RADAR_MSGS::RLGPADCDATA"))

(in-package "ROS")
;;//! \htmlinclude RlGpAdcData.msg.html


(defclass radar_msgs::RlGpAdcData
  :super ros::object
  :slots (_min _max _avg ))

(defmethod radar_msgs::RlGpAdcData
  (:init
   (&key
    ((:min __min) 0)
    ((:max __max) 0)
    ((:avg __avg) 0)
    )
   (send-super :init)
   (setq _min (round __min))
   (setq _max (round __max))
   (setq _avg (round __avg))
   self)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:avg
   (&optional __avg)
   (if __avg (setq _avg __avg)) _avg)
  (:serialization-length
   ()
   (+
    ;; uint16 _min
    2
    ;; uint16 _max
    2
    ;; uint16 _avg
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _min
       (write-word _min s)
     ;; uint16 _max
       (write-word _max s)
     ;; uint16 _avg
       (write-word _avg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _min
     (setq _min (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _max
     (setq _max (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _avg
     (setq _avg (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get radar_msgs::RlGpAdcData :md5sum-) "2d3fd228e22a7d51e758f16247dffdea")
(setf (get radar_msgs::RlGpAdcData :datatype-) "radar_msgs/RlGpAdcData")
(setf (get radar_msgs::RlGpAdcData :definition-)
      "uint16 min
uint16 max
uint16 avg
")



(provide :radar_msgs/RlGpAdcData "2d3fd228e22a7d51e758f16247dffdea")


