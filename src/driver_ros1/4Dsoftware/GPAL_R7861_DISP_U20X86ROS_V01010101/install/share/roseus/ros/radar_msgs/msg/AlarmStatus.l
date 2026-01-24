;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::AlarmStatus)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'AlarmStatus (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::ALARMSTATUS")
  (make-package "RADAR_MSGS::ALARMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AlarmStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::AlarmStatus
  :super ros::object
  :slots (_header _radarID _frameCnt _alarmNum _alarmCode01 _alarmCode02 _alarmCode03 _alarmCode04 _alarmCode05 _alarmCode06 _alarmCode07 _alarmCode08 _alarmCode09 _alarmCode10 _alarmCode11 _alarmCode12 _alarmCode13 _alarmCode14 _alarmCode15 _alarmCode16 _alarmCode17 _alarmCode18 _alarmCode19 _alarmCode20 ))

(defmethod radar_msgs::AlarmStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:alarmNum __alarmNum) 0)
    ((:alarmCode01 __alarmCode01) 0)
    ((:alarmCode02 __alarmCode02) 0)
    ((:alarmCode03 __alarmCode03) 0)
    ((:alarmCode04 __alarmCode04) 0)
    ((:alarmCode05 __alarmCode05) 0)
    ((:alarmCode06 __alarmCode06) 0)
    ((:alarmCode07 __alarmCode07) 0)
    ((:alarmCode08 __alarmCode08) 0)
    ((:alarmCode09 __alarmCode09) 0)
    ((:alarmCode10 __alarmCode10) 0)
    ((:alarmCode11 __alarmCode11) 0)
    ((:alarmCode12 __alarmCode12) 0)
    ((:alarmCode13 __alarmCode13) 0)
    ((:alarmCode14 __alarmCode14) 0)
    ((:alarmCode15 __alarmCode15) 0)
    ((:alarmCode16 __alarmCode16) 0)
    ((:alarmCode17 __alarmCode17) 0)
    ((:alarmCode18 __alarmCode18) 0)
    ((:alarmCode19 __alarmCode19) 0)
    ((:alarmCode20 __alarmCode20) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _alarmNum (round __alarmNum))
   (setq _alarmCode01 (round __alarmCode01))
   (setq _alarmCode02 (round __alarmCode02))
   (setq _alarmCode03 (round __alarmCode03))
   (setq _alarmCode04 (round __alarmCode04))
   (setq _alarmCode05 (round __alarmCode05))
   (setq _alarmCode06 (round __alarmCode06))
   (setq _alarmCode07 (round __alarmCode07))
   (setq _alarmCode08 (round __alarmCode08))
   (setq _alarmCode09 (round __alarmCode09))
   (setq _alarmCode10 (round __alarmCode10))
   (setq _alarmCode11 (round __alarmCode11))
   (setq _alarmCode12 (round __alarmCode12))
   (setq _alarmCode13 (round __alarmCode13))
   (setq _alarmCode14 (round __alarmCode14))
   (setq _alarmCode15 (round __alarmCode15))
   (setq _alarmCode16 (round __alarmCode16))
   (setq _alarmCode17 (round __alarmCode17))
   (setq _alarmCode18 (round __alarmCode18))
   (setq _alarmCode19 (round __alarmCode19))
   (setq _alarmCode20 (round __alarmCode20))
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
  (:alarmNum
   (&optional __alarmNum)
   (if __alarmNum (setq _alarmNum __alarmNum)) _alarmNum)
  (:alarmCode01
   (&optional __alarmCode01)
   (if __alarmCode01 (setq _alarmCode01 __alarmCode01)) _alarmCode01)
  (:alarmCode02
   (&optional __alarmCode02)
   (if __alarmCode02 (setq _alarmCode02 __alarmCode02)) _alarmCode02)
  (:alarmCode03
   (&optional __alarmCode03)
   (if __alarmCode03 (setq _alarmCode03 __alarmCode03)) _alarmCode03)
  (:alarmCode04
   (&optional __alarmCode04)
   (if __alarmCode04 (setq _alarmCode04 __alarmCode04)) _alarmCode04)
  (:alarmCode05
   (&optional __alarmCode05)
   (if __alarmCode05 (setq _alarmCode05 __alarmCode05)) _alarmCode05)
  (:alarmCode06
   (&optional __alarmCode06)
   (if __alarmCode06 (setq _alarmCode06 __alarmCode06)) _alarmCode06)
  (:alarmCode07
   (&optional __alarmCode07)
   (if __alarmCode07 (setq _alarmCode07 __alarmCode07)) _alarmCode07)
  (:alarmCode08
   (&optional __alarmCode08)
   (if __alarmCode08 (setq _alarmCode08 __alarmCode08)) _alarmCode08)
  (:alarmCode09
   (&optional __alarmCode09)
   (if __alarmCode09 (setq _alarmCode09 __alarmCode09)) _alarmCode09)
  (:alarmCode10
   (&optional __alarmCode10)
   (if __alarmCode10 (setq _alarmCode10 __alarmCode10)) _alarmCode10)
  (:alarmCode11
   (&optional __alarmCode11)
   (if __alarmCode11 (setq _alarmCode11 __alarmCode11)) _alarmCode11)
  (:alarmCode12
   (&optional __alarmCode12)
   (if __alarmCode12 (setq _alarmCode12 __alarmCode12)) _alarmCode12)
  (:alarmCode13
   (&optional __alarmCode13)
   (if __alarmCode13 (setq _alarmCode13 __alarmCode13)) _alarmCode13)
  (:alarmCode14
   (&optional __alarmCode14)
   (if __alarmCode14 (setq _alarmCode14 __alarmCode14)) _alarmCode14)
  (:alarmCode15
   (&optional __alarmCode15)
   (if __alarmCode15 (setq _alarmCode15 __alarmCode15)) _alarmCode15)
  (:alarmCode16
   (&optional __alarmCode16)
   (if __alarmCode16 (setq _alarmCode16 __alarmCode16)) _alarmCode16)
  (:alarmCode17
   (&optional __alarmCode17)
   (if __alarmCode17 (setq _alarmCode17 __alarmCode17)) _alarmCode17)
  (:alarmCode18
   (&optional __alarmCode18)
   (if __alarmCode18 (setq _alarmCode18 __alarmCode18)) _alarmCode18)
  (:alarmCode19
   (&optional __alarmCode19)
   (if __alarmCode19 (setq _alarmCode19 __alarmCode19)) _alarmCode19)
  (:alarmCode20
   (&optional __alarmCode20)
   (if __alarmCode20 (setq _alarmCode20 __alarmCode20)) _alarmCode20)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; uint32 _alarmNum
    4
    ;; uint16 _alarmCode01
    2
    ;; uint16 _alarmCode02
    2
    ;; uint16 _alarmCode03
    2
    ;; uint16 _alarmCode04
    2
    ;; uint16 _alarmCode05
    2
    ;; uint16 _alarmCode06
    2
    ;; uint16 _alarmCode07
    2
    ;; uint16 _alarmCode08
    2
    ;; uint16 _alarmCode09
    2
    ;; uint16 _alarmCode10
    2
    ;; uint16 _alarmCode11
    2
    ;; uint16 _alarmCode12
    2
    ;; uint16 _alarmCode13
    2
    ;; uint16 _alarmCode14
    2
    ;; uint16 _alarmCode15
    2
    ;; uint16 _alarmCode16
    2
    ;; uint16 _alarmCode17
    2
    ;; uint16 _alarmCode18
    2
    ;; uint16 _alarmCode19
    2
    ;; uint16 _alarmCode20
    2
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
     ;; uint32 _alarmNum
       (write-long _alarmNum s)
     ;; uint16 _alarmCode01
       (write-word _alarmCode01 s)
     ;; uint16 _alarmCode02
       (write-word _alarmCode02 s)
     ;; uint16 _alarmCode03
       (write-word _alarmCode03 s)
     ;; uint16 _alarmCode04
       (write-word _alarmCode04 s)
     ;; uint16 _alarmCode05
       (write-word _alarmCode05 s)
     ;; uint16 _alarmCode06
       (write-word _alarmCode06 s)
     ;; uint16 _alarmCode07
       (write-word _alarmCode07 s)
     ;; uint16 _alarmCode08
       (write-word _alarmCode08 s)
     ;; uint16 _alarmCode09
       (write-word _alarmCode09 s)
     ;; uint16 _alarmCode10
       (write-word _alarmCode10 s)
     ;; uint16 _alarmCode11
       (write-word _alarmCode11 s)
     ;; uint16 _alarmCode12
       (write-word _alarmCode12 s)
     ;; uint16 _alarmCode13
       (write-word _alarmCode13 s)
     ;; uint16 _alarmCode14
       (write-word _alarmCode14 s)
     ;; uint16 _alarmCode15
       (write-word _alarmCode15 s)
     ;; uint16 _alarmCode16
       (write-word _alarmCode16 s)
     ;; uint16 _alarmCode17
       (write-word _alarmCode17 s)
     ;; uint16 _alarmCode18
       (write-word _alarmCode18 s)
     ;; uint16 _alarmCode19
       (write-word _alarmCode19 s)
     ;; uint16 _alarmCode20
       (write-word _alarmCode20 s)
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
   ;; uint32 _alarmNum
     (setq _alarmNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _alarmCode01
     (setq _alarmCode01 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode02
     (setq _alarmCode02 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode03
     (setq _alarmCode03 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode04
     (setq _alarmCode04 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode05
     (setq _alarmCode05 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode06
     (setq _alarmCode06 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode07
     (setq _alarmCode07 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode08
     (setq _alarmCode08 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode09
     (setq _alarmCode09 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode10
     (setq _alarmCode10 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode11
     (setq _alarmCode11 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode12
     (setq _alarmCode12 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode13
     (setq _alarmCode13 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode14
     (setq _alarmCode14 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode15
     (setq _alarmCode15 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode16
     (setq _alarmCode16 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode17
     (setq _alarmCode17 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode18
     (setq _alarmCode18 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode19
     (setq _alarmCode19 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _alarmCode20
     (setq _alarmCode20 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get radar_msgs::AlarmStatus :md5sum-) "7c014f54c8b482dfb210caece3475030")
(setf (get radar_msgs::AlarmStatus :datatype-) "radar_msgs/AlarmStatus")
(setf (get radar_msgs::AlarmStatus :definition-)
      "Header header                   # Includes measurement timestamp and coordinate frame.
uint32 radarID                  # radar ID
uint32 frameCnt                 # frame cnt in radar
uint32 alarmNum                 # number of alarm
uint16 alarmCode01
uint16 alarmCode02
uint16 alarmCode03
uint16 alarmCode04
uint16 alarmCode05
uint16 alarmCode06
uint16 alarmCode07
uint16 alarmCode08
uint16 alarmCode09
uint16 alarmCode10
uint16 alarmCode11
uint16 alarmCode12
uint16 alarmCode13
uint16 alarmCode14
uint16 alarmCode15
uint16 alarmCode16
uint16 alarmCode17
uint16 alarmCode18
uint16 alarmCode19
uint16 alarmCode20
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



(provide :radar_msgs/AlarmStatus "7c014f54c8b482dfb210caece3475030")


