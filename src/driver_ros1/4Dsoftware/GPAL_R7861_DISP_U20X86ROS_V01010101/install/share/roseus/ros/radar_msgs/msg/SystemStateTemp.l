;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemStateTemp)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemStateTemp (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMSTATETEMP")
  (make-package "RADAR_MSGS::SYSTEMSTATETEMP"))

(in-package "ROS")
;;//! \htmlinclude SystemStateTemp.msg.html


(defclass radar_msgs::SystemStateTemp
  :super ros::object
  :slots (_minTemp _maxTemp ))

(defmethod radar_msgs::SystemStateTemp
  (:init
   (&key
    ((:minTemp __minTemp) 0.0)
    ((:maxTemp __maxTemp) 0.0)
    )
   (send-super :init)
   (setq _minTemp (float __minTemp))
   (setq _maxTemp (float __maxTemp))
   self)
  (:minTemp
   (&optional __minTemp)
   (if __minTemp (setq _minTemp __minTemp)) _minTemp)
  (:maxTemp
   (&optional __maxTemp)
   (if __maxTemp (setq _maxTemp __maxTemp)) _maxTemp)
  (:serialization-length
   ()
   (+
    ;; float32 _minTemp
    4
    ;; float32 _maxTemp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _minTemp
       (sys::poke _minTemp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxTemp
       (sys::poke _maxTemp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _minTemp
     (setq _minTemp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxTemp
     (setq _maxTemp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::SystemStateTemp :md5sum-) "84095672e2b3817830f10d33f98fc691")
(setf (get radar_msgs::SystemStateTemp :datatype-) "radar_msgs/SystemStateTemp")
(setf (get radar_msgs::SystemStateTemp :definition-)
      "# Header header               # Includes measurement timestamp and coordinate frame.
float32       minTemp
float32       maxTemp
")



(provide :radar_msgs/SystemStateTemp "84095672e2b3817830f10d33f98fc691")


