;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemStatsheap)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemStatsheap (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMSTATSHEAP")
  (make-package "RADAR_MSGS::SYSTEMSTATSHEAP"))

(in-package "ROS")
;;//! \htmlinclude SystemStatsheap.msg.html


(defclass radar_msgs::SystemStatsheap
  :super ros::object
  :slots (_heapSize _freeSize ))

(defmethod radar_msgs::SystemStatsheap
  (:init
   (&key
    ((:heapSize __heapSize) 0)
    ((:freeSize __freeSize) 0)
    )
   (send-super :init)
   (setq _heapSize (round __heapSize))
   (setq _freeSize (round __freeSize))
   self)
  (:heapSize
   (&optional __heapSize)
   (if __heapSize (setq _heapSize __heapSize)) _heapSize)
  (:freeSize
   (&optional __freeSize)
   (if __freeSize (setq _freeSize __freeSize)) _freeSize)
  (:serialization-length
   ()
   (+
    ;; uint32 _heapSize
    4
    ;; uint32 _freeSize
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _heapSize
       (write-long _heapSize s)
     ;; uint32 _freeSize
       (write-long _freeSize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _heapSize
     (setq _heapSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _freeSize
     (setq _freeSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::SystemStatsheap :md5sum-) "03640949b9fee0e6971efd5dfb6ef3a2")
(setf (get radar_msgs::SystemStatsheap :datatype-) "radar_msgs/SystemStatsheap")
(setf (get radar_msgs::SystemStatsheap :definition-)
      "# Header header               # Includes measurement timestamp and coordinate frame.
uint32       heapSize
uint32       freeSize
")



(provide :radar_msgs/SystemStatsheap "03640949b9fee0e6971efd5dfb6ef3a2")


