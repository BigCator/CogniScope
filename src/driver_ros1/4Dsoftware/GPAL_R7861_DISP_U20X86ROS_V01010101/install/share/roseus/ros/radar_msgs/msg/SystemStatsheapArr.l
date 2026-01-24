;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemStatsheapArr)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemStatsheapArr (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMSTATSHEAPARR")
  (make-package "RADAR_MSGS::SYSTEMSTATSHEAPARR"))

(in-package "ROS")
;;//! \htmlinclude SystemStatsheapArr.msg.html


(defclass radar_msgs::SystemStatsheapArr
  :super ros::object
  :slots (_heap ))

(defmethod radar_msgs::SystemStatsheapArr
  (:init
   (&key
    ((:heap __heap) (let (r) (dotimes (i 2) (push (instance radar_msgs::SystemStatsheap :init) r)) r))
    )
   (send-super :init)
   (setq _heap __heap)
   self)
  (:heap
   (&rest __heap)
   (if (keywordp (car __heap))
       (send* _heap __heap)
     (progn
       (if __heap (setq _heap (car __heap)))
       _heap)))
  (:serialization-length
   ()
   (+
    ;; radar_msgs/SystemStatsheap[2] _heap
    (apply #'+ (send-all _heap :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; radar_msgs/SystemStatsheap[2] _heap
     (dolist (elem _heap)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; radar_msgs/SystemStatsheap[2] _heap
   (dotimes (i 2)
     (send (elt _heap i) :deserialize buf ptr-) (incf ptr- (send (elt _heap i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get radar_msgs::SystemStatsheapArr :md5sum-) "96720ee170c50ff6e79e38467eec2737")
(setf (get radar_msgs::SystemStatsheapArr :datatype-) "radar_msgs/SystemStatsheapArr")
(setf (get radar_msgs::SystemStatsheapArr :definition-)
      "# Header header           # Includes measurement timestamp and coordinate frame.
SystemStatsheap[2]     heap
================================================================================
MSG: radar_msgs/SystemStatsheap
# Header header               # Includes measurement timestamp and coordinate frame.
uint32       heapSize
uint32       freeSize
")



(provide :radar_msgs/SystemStatsheapArr "96720ee170c50ff6e79e38467eec2737")


