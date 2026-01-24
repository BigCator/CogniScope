;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemStatsLoad)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemStatsLoad (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMSTATSLOAD")
  (make-package "RADAR_MSGS::SYSTEMSTATSLOAD"))

(in-package "ROS")
;;//! \htmlinclude SystemStatsLoad.msg.html


(defclass radar_msgs::SystemStatsLoad
  :super ros::object
  :slots (_loadValue ))

(defmethod radar_msgs::SystemStatsLoad
  (:init
   (&key
    ((:loadValue __loadValue) 0.0)
    )
   (send-super :init)
   (setq _loadValue (float __loadValue))
   self)
  (:loadValue
   (&optional __loadValue)
   (if __loadValue (setq _loadValue __loadValue)) _loadValue)
  (:serialization-length
   ()
   (+
    ;; float32 _loadValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _loadValue
       (sys::poke _loadValue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _loadValue
     (setq _loadValue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::SystemStatsLoad :md5sum-) "fd202161f3eaed8a4375480b6f4d9bb3")
(setf (get radar_msgs::SystemStatsLoad :datatype-) "radar_msgs/SystemStatsLoad")
(setf (get radar_msgs::SystemStatsLoad :definition-)
      "# Header header               # Includes measurement timestamp and coordinate frame.
# uint32      integerValue
# uint32      fractionalValue
float32     loadValue
")



(provide :radar_msgs/SystemStatsLoad "fd202161f3eaed8a4375480b6f4d9bb3")


