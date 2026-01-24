;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RdInfo)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RdInfo (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RDINFO")
  (make-package "RADAR_MSGS::RDINFO"))

(in-package "ROS")
;;//! \htmlinclude RdInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::RdInfo
  :super ros::object
  :slots (_header _frameID _cfarCount _targetNum _resetcnt _objNum _carSpeed _carYawRate _gearState _odTimeoutCnt _comProtV_I _comProtV_II _frameLostCnt _beforeAdcErrCnt _afterAdcErrCnt _udpFrameLostCnt _udpFreq _timeSyncStatus _velEstimate _gndK _gndB _pcl_time _od_time _RdFrameLostCnt ))

(defmethod radar_msgs::RdInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frameID __frameID) 0)
    ((:cfarCount __cfarCount) 0)
    ((:targetNum __targetNum) 0)
    ((:resetcnt __resetcnt) 0)
    ((:objNum __objNum) 0)
    ((:carSpeed __carSpeed) 0.0)
    ((:carYawRate __carYawRate) 0.0)
    ((:gearState __gearState) 0)
    ((:odTimeoutCnt __odTimeoutCnt) 0)
    ((:comProtV_I __comProtV_I) 0)
    ((:comProtV_II __comProtV_II) 0)
    ((:frameLostCnt __frameLostCnt) 0)
    ((:beforeAdcErrCnt __beforeAdcErrCnt) 0)
    ((:afterAdcErrCnt __afterAdcErrCnt) 0)
    ((:udpFrameLostCnt __udpFrameLostCnt) 0)
    ((:udpFreq __udpFreq) 0.0)
    ((:timeSyncStatus __timeSyncStatus) 0)
    ((:velEstimate __velEstimate) 0.0)
    ((:gndK __gndK) 0.0)
    ((:gndB __gndB) 0.0)
    ((:pcl_time __pcl_time) 0.0)
    ((:od_time __od_time) 0.0)
    ((:RdFrameLostCnt __RdFrameLostCnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frameID (round __frameID))
   (setq _cfarCount (round __cfarCount))
   (setq _targetNum (round __targetNum))
   (setq _resetcnt (round __resetcnt))
   (setq _objNum (round __objNum))
   (setq _carSpeed (float __carSpeed))
   (setq _carYawRate (float __carYawRate))
   (setq _gearState (round __gearState))
   (setq _odTimeoutCnt (round __odTimeoutCnt))
   (setq _comProtV_I (round __comProtV_I))
   (setq _comProtV_II (round __comProtV_II))
   (setq _frameLostCnt (round __frameLostCnt))
   (setq _beforeAdcErrCnt (round __beforeAdcErrCnt))
   (setq _afterAdcErrCnt (round __afterAdcErrCnt))
   (setq _udpFrameLostCnt (round __udpFrameLostCnt))
   (setq _udpFreq (float __udpFreq))
   (setq _timeSyncStatus (round __timeSyncStatus))
   (setq _velEstimate (float __velEstimate))
   (setq _gndK (float __gndK))
   (setq _gndB (float __gndB))
   (setq _pcl_time (float __pcl_time))
   (setq _od_time (float __od_time))
   (setq _RdFrameLostCnt (round __RdFrameLostCnt))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frameID
   (&optional __frameID)
   (if __frameID (setq _frameID __frameID)) _frameID)
  (:cfarCount
   (&optional __cfarCount)
   (if __cfarCount (setq _cfarCount __cfarCount)) _cfarCount)
  (:targetNum
   (&optional __targetNum)
   (if __targetNum (setq _targetNum __targetNum)) _targetNum)
  (:resetcnt
   (&optional __resetcnt)
   (if __resetcnt (setq _resetcnt __resetcnt)) _resetcnt)
  (:objNum
   (&optional __objNum)
   (if __objNum (setq _objNum __objNum)) _objNum)
  (:carSpeed
   (&optional __carSpeed)
   (if __carSpeed (setq _carSpeed __carSpeed)) _carSpeed)
  (:carYawRate
   (&optional __carYawRate)
   (if __carYawRate (setq _carYawRate __carYawRate)) _carYawRate)
  (:gearState
   (&optional __gearState)
   (if __gearState (setq _gearState __gearState)) _gearState)
  (:odTimeoutCnt
   (&optional __odTimeoutCnt)
   (if __odTimeoutCnt (setq _odTimeoutCnt __odTimeoutCnt)) _odTimeoutCnt)
  (:comProtV_I
   (&optional __comProtV_I)
   (if __comProtV_I (setq _comProtV_I __comProtV_I)) _comProtV_I)
  (:comProtV_II
   (&optional __comProtV_II)
   (if __comProtV_II (setq _comProtV_II __comProtV_II)) _comProtV_II)
  (:frameLostCnt
   (&optional __frameLostCnt)
   (if __frameLostCnt (setq _frameLostCnt __frameLostCnt)) _frameLostCnt)
  (:beforeAdcErrCnt
   (&optional __beforeAdcErrCnt)
   (if __beforeAdcErrCnt (setq _beforeAdcErrCnt __beforeAdcErrCnt)) _beforeAdcErrCnt)
  (:afterAdcErrCnt
   (&optional __afterAdcErrCnt)
   (if __afterAdcErrCnt (setq _afterAdcErrCnt __afterAdcErrCnt)) _afterAdcErrCnt)
  (:udpFrameLostCnt
   (&optional __udpFrameLostCnt)
   (if __udpFrameLostCnt (setq _udpFrameLostCnt __udpFrameLostCnt)) _udpFrameLostCnt)
  (:udpFreq
   (&optional __udpFreq)
   (if __udpFreq (setq _udpFreq __udpFreq)) _udpFreq)
  (:timeSyncStatus
   (&optional __timeSyncStatus)
   (if __timeSyncStatus (setq _timeSyncStatus __timeSyncStatus)) _timeSyncStatus)
  (:velEstimate
   (&optional __velEstimate)
   (if __velEstimate (setq _velEstimate __velEstimate)) _velEstimate)
  (:gndK
   (&optional __gndK)
   (if __gndK (setq _gndK __gndK)) _gndK)
  (:gndB
   (&optional __gndB)
   (if __gndB (setq _gndB __gndB)) _gndB)
  (:pcl_time
   (&optional __pcl_time)
   (if __pcl_time (setq _pcl_time __pcl_time)) _pcl_time)
  (:od_time
   (&optional __od_time)
   (if __od_time (setq _od_time __od_time)) _od_time)
  (:RdFrameLostCnt
   (&optional __RdFrameLostCnt)
   (if __RdFrameLostCnt (setq _RdFrameLostCnt __RdFrameLostCnt)) _RdFrameLostCnt)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _frameID
    4
    ;; uint32 _cfarCount
    4
    ;; uint32 _targetNum
    4
    ;; int16 _resetcnt
    2
    ;; uint32 _objNum
    4
    ;; float32 _carSpeed
    4
    ;; float32 _carYawRate
    4
    ;; uint16 _gearState
    2
    ;; int16 _odTimeoutCnt
    2
    ;; uint16 _comProtV_I
    2
    ;; uint16 _comProtV_II
    2
    ;; uint16 _frameLostCnt
    2
    ;; uint16 _beforeAdcErrCnt
    2
    ;; uint16 _afterAdcErrCnt
    2
    ;; uint32 _udpFrameLostCnt
    4
    ;; float32 _udpFreq
    4
    ;; uint16 _timeSyncStatus
    2
    ;; float32 _velEstimate
    4
    ;; float32 _gndK
    4
    ;; float32 _gndB
    4
    ;; float32 _pcl_time
    4
    ;; float32 _od_time
    4
    ;; uint32 _RdFrameLostCnt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _frameID
       (write-long _frameID s)
     ;; uint32 _cfarCount
       (write-long _cfarCount s)
     ;; uint32 _targetNum
       (write-long _targetNum s)
     ;; int16 _resetcnt
       (write-word _resetcnt s)
     ;; uint32 _objNum
       (write-long _objNum s)
     ;; float32 _carSpeed
       (sys::poke _carSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _carYawRate
       (sys::poke _carYawRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _gearState
       (write-word _gearState s)
     ;; int16 _odTimeoutCnt
       (write-word _odTimeoutCnt s)
     ;; uint16 _comProtV_I
       (write-word _comProtV_I s)
     ;; uint16 _comProtV_II
       (write-word _comProtV_II s)
     ;; uint16 _frameLostCnt
       (write-word _frameLostCnt s)
     ;; uint16 _beforeAdcErrCnt
       (write-word _beforeAdcErrCnt s)
     ;; uint16 _afterAdcErrCnt
       (write-word _afterAdcErrCnt s)
     ;; uint32 _udpFrameLostCnt
       (write-long _udpFrameLostCnt s)
     ;; float32 _udpFreq
       (sys::poke _udpFreq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _timeSyncStatus
       (write-word _timeSyncStatus s)
     ;; float32 _velEstimate
       (sys::poke _velEstimate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gndK
       (sys::poke _gndK (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gndB
       (sys::poke _gndB (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pcl_time
       (sys::poke _pcl_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _od_time
       (sys::poke _od_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _RdFrameLostCnt
       (write-long _RdFrameLostCnt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _frameID
     (setq _frameID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cfarCount
     (setq _cfarCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _targetNum
     (setq _targetNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _resetcnt
     (setq _resetcnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _objNum
     (setq _objNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _carSpeed
     (setq _carSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _carYawRate
     (setq _carYawRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _gearState
     (setq _gearState (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _odTimeoutCnt
     (setq _odTimeoutCnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _comProtV_I
     (setq _comProtV_I (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _comProtV_II
     (setq _comProtV_II (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _frameLostCnt
     (setq _frameLostCnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _beforeAdcErrCnt
     (setq _beforeAdcErrCnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _afterAdcErrCnt
     (setq _afterAdcErrCnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _udpFrameLostCnt
     (setq _udpFrameLostCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _udpFreq
     (setq _udpFreq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _timeSyncStatus
     (setq _timeSyncStatus (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _velEstimate
     (setq _velEstimate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gndK
     (setq _gndK (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gndB
     (setq _gndB (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pcl_time
     (setq _pcl_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _od_time
     (setq _od_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _RdFrameLostCnt
     (setq _RdFrameLostCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RdInfo :md5sum-) "990a952bd164911e0965074cc0babe8d")
(setf (get radar_msgs::RdInfo :datatype-) "radar_msgs/RdInfo")
(setf (get radar_msgs::RdInfo :definition-)
      "Header  header              # Includes measurement timestamp and coordinate frame.
uint32  frameID
uint32  cfarCount           # cfar count
uint32  targetNum           # targets Num
int16   resetcnt            # reset count
uint32  objNum              # object number of this frame
float32 carSpeed            # ego car speed
float32 carYawRate          # ego car yaw rate
uint16  gearState           # ego car gear state
int16   odTimeoutCnt
uint16  comProtV_I
uint16  comProtV_II
uint16  frameLostCnt        # frame lost count checked by ROS sw
uint16  beforeAdcErrCnt
uint16  afterAdcErrCnt
uint32  udpFrameLostCnt     # counter of lost frames
float32 udpFreq             # frames frequency in Hz
uint16  timeSyncStatus      # status of time synchronization
float32 velEstimate         # estimated car speed, m/s
float32 gndK
float32 gndB
float32 pcl_time            # duration of od process (ms)
float32 od_time             # duration of od process (ms)
uint32  RdFrameLostCnt      # frame lost count in radar
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



(provide :radar_msgs/RdInfo "990a952bd164911e0965074cc0babe8d")


