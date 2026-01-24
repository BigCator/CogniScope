;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonTempReportData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonTempReportData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONTEMPREPORTDATA")
  (make-package "RADAR_MSGS::RLMONTEMPREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude RlMonTempReportData.msg.html


(defclass radar_msgs::RlMonTempReportData
  :super ros::object
  :slots (_statusFlags _errorCode _tempValues _reserved _timeStamp ))

(defmethod radar_msgs::RlMonTempReportData
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:tempValues __tempValues) (make-array 10 :initial-element 0 :element-type :integer))
    ((:reserved __reserved) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _tempValues __tempValues)
   (setq _reserved (round __reserved))
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:tempValues
   (&optional __tempValues)
   (if __tempValues (setq _tempValues __tempValues)) _tempValues)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _statusFlags
    2
    ;; uint16 _errorCode
    2
    ;; int16[10] _tempValues
    (* 2    10)
    ;; uint32 _reserved
    4
    ;; uint32 _timeStamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _statusFlags
       (write-word _statusFlags s)
     ;; uint16 _errorCode
       (write-word _errorCode s)
     ;; int16[10] _tempValues
     (dotimes (i 10)
       (write-word (elt _tempValues i) s)
       )
     ;; uint32 _reserved
       (write-long _reserved s)
     ;; uint32 _timeStamp
       (write-long _timeStamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _statusFlags
     (setq _statusFlags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _errorCode
     (setq _errorCode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[10] _tempValues
   (dotimes (i (length _tempValues))
     (setf (elt _tempValues i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonTempReportData :md5sum-) "ae315faa3b72feb758d56a8f561b2a78")
(setf (get radar_msgs::RlMonTempReportData :datatype-) "radar_msgs/RlMonTempReportData")
(setf (get radar_msgs::RlMonTempReportData :definition-)
      "uint16      statusFlags
uint16      errorCode
int16[10]   tempValues
uint32      reserved
uint32      timeStamp
")



(provide :radar_msgs/RlMonTempReportData "ae315faa3b72feb758d56a8f561b2a78")


