;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::InstallInfo)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'InstallInfo (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::INSTALLINFO")
  (make-package "RADAR_MSGS::INSTALLINFO"))

(in-package "ROS")
;;//! \htmlinclude InstallInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::InstallInfo
  :super ros::object
  :slots (_header _radarID _frameCnt _sensorPositionInvalidFlags _sensorXPosition _sensorYPosition _sensorZPosition _sensorRollAngle _sensorPitchAngle _sensorYawAngle _azimuthCorrection _elevationCorrection ))

(defmethod radar_msgs::InstallInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:sensorPositionInvalidFlags __sensorPositionInvalidFlags) 0)
    ((:sensorXPosition __sensorXPosition) 0.0)
    ((:sensorYPosition __sensorYPosition) 0.0)
    ((:sensorZPosition __sensorZPosition) 0.0)
    ((:sensorRollAngle __sensorRollAngle) 0.0)
    ((:sensorPitchAngle __sensorPitchAngle) 0.0)
    ((:sensorYawAngle __sensorYawAngle) 0.0)
    ((:azimuthCorrection __azimuthCorrection) 0.0)
    ((:elevationCorrection __elevationCorrection) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _sensorPositionInvalidFlags (round __sensorPositionInvalidFlags))
   (setq _sensorXPosition (float __sensorXPosition))
   (setq _sensorYPosition (float __sensorYPosition))
   (setq _sensorZPosition (float __sensorZPosition))
   (setq _sensorRollAngle (float __sensorRollAngle))
   (setq _sensorPitchAngle (float __sensorPitchAngle))
   (setq _sensorYawAngle (float __sensorYawAngle))
   (setq _azimuthCorrection (float __azimuthCorrection))
   (setq _elevationCorrection (float __elevationCorrection))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radarID
   (&optional __radarID)
   (if __radarID (setq _radarID __radarID)) _radarID)
  (:frameCnt
   (&optional __frameCnt)
   (if __frameCnt (setq _frameCnt __frameCnt)) _frameCnt)
  (:sensorPositionInvalidFlags
   (&optional __sensorPositionInvalidFlags)
   (if __sensorPositionInvalidFlags (setq _sensorPositionInvalidFlags __sensorPositionInvalidFlags)) _sensorPositionInvalidFlags)
  (:sensorXPosition
   (&optional __sensorXPosition)
   (if __sensorXPosition (setq _sensorXPosition __sensorXPosition)) _sensorXPosition)
  (:sensorYPosition
   (&optional __sensorYPosition)
   (if __sensorYPosition (setq _sensorYPosition __sensorYPosition)) _sensorYPosition)
  (:sensorZPosition
   (&optional __sensorZPosition)
   (if __sensorZPosition (setq _sensorZPosition __sensorZPosition)) _sensorZPosition)
  (:sensorRollAngle
   (&optional __sensorRollAngle)
   (if __sensorRollAngle (setq _sensorRollAngle __sensorRollAngle)) _sensorRollAngle)
  (:sensorPitchAngle
   (&optional __sensorPitchAngle)
   (if __sensorPitchAngle (setq _sensorPitchAngle __sensorPitchAngle)) _sensorPitchAngle)
  (:sensorYawAngle
   (&optional __sensorYawAngle)
   (if __sensorYawAngle (setq _sensorYawAngle __sensorYawAngle)) _sensorYawAngle)
  (:azimuthCorrection
   (&optional __azimuthCorrection)
   (if __azimuthCorrection (setq _azimuthCorrection __azimuthCorrection)) _azimuthCorrection)
  (:elevationCorrection
   (&optional __elevationCorrection)
   (if __elevationCorrection (setq _elevationCorrection __elevationCorrection)) _elevationCorrection)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; uint16 _sensorPositionInvalidFlags
    2
    ;; float32 _sensorXPosition
    4
    ;; float32 _sensorYPosition
    4
    ;; float32 _sensorZPosition
    4
    ;; float32 _sensorRollAngle
    4
    ;; float32 _sensorPitchAngle
    4
    ;; float32 _sensorYawAngle
    4
    ;; float32 _azimuthCorrection
    4
    ;; float32 _elevationCorrection
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _radarID
       (write-long _radarID s)
     ;; uint32 _frameCnt
       (write-long _frameCnt s)
     ;; uint16 _sensorPositionInvalidFlags
       (write-word _sensorPositionInvalidFlags s)
     ;; float32 _sensorXPosition
       (sys::poke _sensorXPosition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sensorYPosition
       (sys::poke _sensorYPosition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sensorZPosition
       (sys::poke _sensorZPosition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sensorRollAngle
       (sys::poke _sensorRollAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sensorPitchAngle
       (sys::poke _sensorPitchAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sensorYawAngle
       (sys::poke _sensorYawAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuthCorrection
       (sys::poke _azimuthCorrection (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevationCorrection
       (sys::poke _elevationCorrection (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _radarID
     (setq _radarID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frameCnt
     (setq _frameCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _sensorPositionInvalidFlags
     (setq _sensorPositionInvalidFlags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _sensorXPosition
     (setq _sensorXPosition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sensorYPosition
     (setq _sensorYPosition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sensorZPosition
     (setq _sensorZPosition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sensorRollAngle
     (setq _sensorRollAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sensorPitchAngle
     (setq _sensorPitchAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sensorYawAngle
     (setq _sensorYawAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuthCorrection
     (setq _azimuthCorrection (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevationCorrection
     (setq _elevationCorrection (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::InstallInfo :md5sum-) "0c93964ac0c3cc3e143adcb42d14164d")
(setf (get radar_msgs::InstallInfo :datatype-) "radar_msgs/InstallInfo")
(setf (get radar_msgs::InstallInfo :definition-)
      "Header  header                   # Includes measurement timestamp and coordinate frame.
uint32  radarID                  # radar ID
uint32  frameCnt                 # frame cnt in radar
uint16  sensorPositionInvalidFlags
float32 sensorXPosition             #unit: m
float32 sensorYPosition             #unit: m
float32 sensorZPosition             #unit: m
float32 sensorRollAngle             #unit: degree
float32 sensorPitchAngle            #unit: degree
float32 sensorYawAngle              #unit: degree
float32 azimuthCorrection           #unit: degree
float32 elevationCorrection         #unit: degree
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :radar_msgs/InstallInfo "0c93964ac0c3cc3e143adcb42d14164d")


