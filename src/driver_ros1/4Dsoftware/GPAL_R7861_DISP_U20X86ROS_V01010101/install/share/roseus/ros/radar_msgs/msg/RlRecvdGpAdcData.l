;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlRecvdGpAdcData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlRecvdGpAdcData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLRECVDGPADCDATA")
  (make-package "RADAR_MSGS::RLRECVDGPADCDATA"))

(in-package "ROS")
;;//! \htmlinclude RlRecvdGpAdcData.msg.html


(defclass radar_msgs::RlRecvdGpAdcData
  :super ros::object
  :slots (_sensor _reserved0 _reserved1 ))

(defmethod radar_msgs::RlRecvdGpAdcData
  (:init
   (&key
    ((:sensor __sensor) (let (r) (dotimes (i 6) (push (instance radar_msgs::RlGpAdcData :init) r)) r))
    ((:reserved0 __reserved0) (make-array 4 :initial-element 0 :element-type :integer))
    ((:reserved1 __reserved1) (make-array 7 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _sensor __sensor)
   (setq _reserved0 __reserved0)
   (setq _reserved1 __reserved1)
   self)
  (:sensor
   (&rest __sensor)
   (if (keywordp (car __sensor))
       (send* _sensor __sensor)
     (progn
       (if __sensor (setq _sensor (car __sensor)))
       _sensor)))
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; radar_msgs/RlGpAdcData[6] _sensor
    (apply #'+ (send-all _sensor :serialization-length))
    ;; uint16[4] _reserved0
    (* 2    4)
    ;; uint32[7] _reserved1
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; radar_msgs/RlGpAdcData[6] _sensor
     (dolist (elem _sensor)
       (send elem :serialize s)
       )
     ;; uint16[4] _reserved0
     (dotimes (i 4)
       (write-word (elt _reserved0 i) s)
       )
     ;; uint32[7] _reserved1
     (dotimes (i 7)
       (write-long (elt _reserved1 i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; radar_msgs/RlGpAdcData[6] _sensor
   (dotimes (i 6)
     (send (elt _sensor i) :deserialize buf ptr-) (incf ptr- (send (elt _sensor i) :serialization-length))
     )
   ;; uint16[4] _reserved0
   (dotimes (i (length _reserved0))
     (setf (elt _reserved0 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint32[7] _reserved1
   (dotimes (i (length _reserved1))
     (setf (elt _reserved1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get radar_msgs::RlRecvdGpAdcData :md5sum-) "c77259e6e9e4b7d6f098acf35b1c17dd")
(setf (get radar_msgs::RlRecvdGpAdcData :datatype-) "radar_msgs/RlRecvdGpAdcData")
(setf (get radar_msgs::RlRecvdGpAdcData :definition-)
      "RlGpAdcData[6]  sensor
uint16[4]       reserved0
uint32[7]       reserved1
================================================================================
MSG: radar_msgs/RlGpAdcData
uint16 min
uint16 max
uint16 avg
")



(provide :radar_msgs/RlRecvdGpAdcData "c77259e6e9e4b7d6f098acf35b1c17dd")


