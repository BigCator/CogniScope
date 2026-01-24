;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::ChassisMsg)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'ChassisMsg (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::CHASSISMSG")
  (make-package "RADAR_MSGS::CHASSISMSG"))

(in-package "ROS")
;;//! \htmlinclude ChassisMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::ChassisMsg
  :super ros::object
  :slots (_header _isLessInfo _reserved _VehDynYawRateHSC2 _VehDynYawRateVHSC2 _TrShftLvrPos_h1HSC2 _TrShftLvrPosV_h1HSC2 _VehSpdAvgDrvnHSC2 _VehSpdAvgDrvnVHSC2 _VehSpdAvgNonDrvnHSC2 _VehSpdAvgNonDrvnVHSC2 _StrgWhlAngHSC2 _StrgWhlAngVHSC2 _nCounter _iTimeStamp _fLatitude _fLongitude _fAltitude _fAccX _fAccY _fAccZ _fAngRateX _fAngRateY _fAngRateZ _fVelNorth _fVelWest _fVelUp _fHeading _fPitch _fRoll _nNavStatus _vTimeStamp _fSteeringAngle _fSpeed _fYawRate _fFrontLeftWheelSpeed _fFrontRightWheelSpeed _fRearLeftWheelSpeed _fRearRightWheelSpeed _nShifterPosition _nLeftDirectionLamp _nRightDirectionLamp _nMainBeamLamp _nDippedBeamLamp _nWiperState _fLateralAccel _fLongituAccel _nLeftDrivenWheelPulseCounters _nRightDrivenWheelPulseCounters _nLeftNonDrivenWheelPulseCounters _nRightNonDrivenWheelPulseCounters _nDriveMode ))

(defmethod radar_msgs::ChassisMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:isLessInfo __isLessInfo) nil)
    ((:reserved __reserved) 0)
    ((:VehDynYawRateHSC2 __VehDynYawRateHSC2) 0.0)
    ((:VehDynYawRateVHSC2 __VehDynYawRateVHSC2) 0.0)
    ((:TrShftLvrPos_h1HSC2 __TrShftLvrPos_h1HSC2) 0)
    ((:TrShftLvrPosV_h1HSC2 __TrShftLvrPosV_h1HSC2) 0)
    ((:VehSpdAvgDrvnHSC2 __VehSpdAvgDrvnHSC2) 0.0)
    ((:VehSpdAvgDrvnVHSC2 __VehSpdAvgDrvnVHSC2) 0)
    ((:VehSpdAvgNonDrvnHSC2 __VehSpdAvgNonDrvnHSC2) 0.0)
    ((:VehSpdAvgNonDrvnVHSC2 __VehSpdAvgNonDrvnVHSC2) 0)
    ((:StrgWhlAngHSC2 __StrgWhlAngHSC2) 0.0)
    ((:StrgWhlAngVHSC2 __StrgWhlAngVHSC2) 0)
    ((:nCounter __nCounter) 0)
    ((:iTimeStamp __iTimeStamp) 0)
    ((:fLatitude __fLatitude) 0.0)
    ((:fLongitude __fLongitude) 0.0)
    ((:fAltitude __fAltitude) 0.0)
    ((:fAccX __fAccX) 0.0)
    ((:fAccY __fAccY) 0.0)
    ((:fAccZ __fAccZ) 0.0)
    ((:fAngRateX __fAngRateX) 0.0)
    ((:fAngRateY __fAngRateY) 0.0)
    ((:fAngRateZ __fAngRateZ) 0.0)
    ((:fVelNorth __fVelNorth) 0.0)
    ((:fVelWest __fVelWest) 0.0)
    ((:fVelUp __fVelUp) 0.0)
    ((:fHeading __fHeading) 0.0)
    ((:fPitch __fPitch) 0.0)
    ((:fRoll __fRoll) 0.0)
    ((:nNavStatus __nNavStatus) 0)
    ((:vTimeStamp __vTimeStamp) 0)
    ((:fSteeringAngle __fSteeringAngle) 0.0)
    ((:fSpeed __fSpeed) 0.0)
    ((:fYawRate __fYawRate) 0.0)
    ((:fFrontLeftWheelSpeed __fFrontLeftWheelSpeed) 0.0)
    ((:fFrontRightWheelSpeed __fFrontRightWheelSpeed) 0.0)
    ((:fRearLeftWheelSpeed __fRearLeftWheelSpeed) 0.0)
    ((:fRearRightWheelSpeed __fRearRightWheelSpeed) 0.0)
    ((:nShifterPosition __nShifterPosition) 0)
    ((:nLeftDirectionLamp __nLeftDirectionLamp) 0)
    ((:nRightDirectionLamp __nRightDirectionLamp) 0)
    ((:nMainBeamLamp __nMainBeamLamp) 0)
    ((:nDippedBeamLamp __nDippedBeamLamp) 0)
    ((:nWiperState __nWiperState) 0)
    ((:fLateralAccel __fLateralAccel) 0.0)
    ((:fLongituAccel __fLongituAccel) 0.0)
    ((:nLeftDrivenWheelPulseCounters __nLeftDrivenWheelPulseCounters) 0)
    ((:nRightDrivenWheelPulseCounters __nRightDrivenWheelPulseCounters) 0)
    ((:nLeftNonDrivenWheelPulseCounters __nLeftNonDrivenWheelPulseCounters) 0)
    ((:nRightNonDrivenWheelPulseCounters __nRightNonDrivenWheelPulseCounters) 0)
    ((:nDriveMode __nDriveMode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _isLessInfo __isLessInfo)
   (setq _reserved (round __reserved))
   (setq _VehDynYawRateHSC2 (float __VehDynYawRateHSC2))
   (setq _VehDynYawRateVHSC2 (float __VehDynYawRateVHSC2))
   (setq _TrShftLvrPos_h1HSC2 (round __TrShftLvrPos_h1HSC2))
   (setq _TrShftLvrPosV_h1HSC2 (round __TrShftLvrPosV_h1HSC2))
   (setq _VehSpdAvgDrvnHSC2 (float __VehSpdAvgDrvnHSC2))
   (setq _VehSpdAvgDrvnVHSC2 (round __VehSpdAvgDrvnVHSC2))
   (setq _VehSpdAvgNonDrvnHSC2 (float __VehSpdAvgNonDrvnHSC2))
   (setq _VehSpdAvgNonDrvnVHSC2 (round __VehSpdAvgNonDrvnVHSC2))
   (setq _StrgWhlAngHSC2 (float __StrgWhlAngHSC2))
   (setq _StrgWhlAngVHSC2 (round __StrgWhlAngVHSC2))
   (setq _nCounter (round __nCounter))
   (setq _iTimeStamp (round __iTimeStamp))
   (setq _fLatitude (float __fLatitude))
   (setq _fLongitude (float __fLongitude))
   (setq _fAltitude (float __fAltitude))
   (setq _fAccX (float __fAccX))
   (setq _fAccY (float __fAccY))
   (setq _fAccZ (float __fAccZ))
   (setq _fAngRateX (float __fAngRateX))
   (setq _fAngRateY (float __fAngRateY))
   (setq _fAngRateZ (float __fAngRateZ))
   (setq _fVelNorth (float __fVelNorth))
   (setq _fVelWest (float __fVelWest))
   (setq _fVelUp (float __fVelUp))
   (setq _fHeading (float __fHeading))
   (setq _fPitch (float __fPitch))
   (setq _fRoll (float __fRoll))
   (setq _nNavStatus (round __nNavStatus))
   (setq _vTimeStamp (round __vTimeStamp))
   (setq _fSteeringAngle (float __fSteeringAngle))
   (setq _fSpeed (float __fSpeed))
   (setq _fYawRate (float __fYawRate))
   (setq _fFrontLeftWheelSpeed (float __fFrontLeftWheelSpeed))
   (setq _fFrontRightWheelSpeed (float __fFrontRightWheelSpeed))
   (setq _fRearLeftWheelSpeed (float __fRearLeftWheelSpeed))
   (setq _fRearRightWheelSpeed (float __fRearRightWheelSpeed))
   (setq _nShifterPosition (round __nShifterPosition))
   (setq _nLeftDirectionLamp (round __nLeftDirectionLamp))
   (setq _nRightDirectionLamp (round __nRightDirectionLamp))
   (setq _nMainBeamLamp (round __nMainBeamLamp))
   (setq _nDippedBeamLamp (round __nDippedBeamLamp))
   (setq _nWiperState (round __nWiperState))
   (setq _fLateralAccel (float __fLateralAccel))
   (setq _fLongituAccel (float __fLongituAccel))
   (setq _nLeftDrivenWheelPulseCounters (round __nLeftDrivenWheelPulseCounters))
   (setq _nRightDrivenWheelPulseCounters (round __nRightDrivenWheelPulseCounters))
   (setq _nLeftNonDrivenWheelPulseCounters (round __nLeftNonDrivenWheelPulseCounters))
   (setq _nRightNonDrivenWheelPulseCounters (round __nRightNonDrivenWheelPulseCounters))
   (setq _nDriveMode (round __nDriveMode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:isLessInfo
   (&optional (__isLessInfo :null))
   (if (not (eq __isLessInfo :null)) (setq _isLessInfo __isLessInfo)) _isLessInfo)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:VehDynYawRateHSC2
   (&optional __VehDynYawRateHSC2)
   (if __VehDynYawRateHSC2 (setq _VehDynYawRateHSC2 __VehDynYawRateHSC2)) _VehDynYawRateHSC2)
  (:VehDynYawRateVHSC2
   (&optional __VehDynYawRateVHSC2)
   (if __VehDynYawRateVHSC2 (setq _VehDynYawRateVHSC2 __VehDynYawRateVHSC2)) _VehDynYawRateVHSC2)
  (:TrShftLvrPos_h1HSC2
   (&optional __TrShftLvrPos_h1HSC2)
   (if __TrShftLvrPos_h1HSC2 (setq _TrShftLvrPos_h1HSC2 __TrShftLvrPos_h1HSC2)) _TrShftLvrPos_h1HSC2)
  (:TrShftLvrPosV_h1HSC2
   (&optional __TrShftLvrPosV_h1HSC2)
   (if __TrShftLvrPosV_h1HSC2 (setq _TrShftLvrPosV_h1HSC2 __TrShftLvrPosV_h1HSC2)) _TrShftLvrPosV_h1HSC2)
  (:VehSpdAvgDrvnHSC2
   (&optional __VehSpdAvgDrvnHSC2)
   (if __VehSpdAvgDrvnHSC2 (setq _VehSpdAvgDrvnHSC2 __VehSpdAvgDrvnHSC2)) _VehSpdAvgDrvnHSC2)
  (:VehSpdAvgDrvnVHSC2
   (&optional __VehSpdAvgDrvnVHSC2)
   (if __VehSpdAvgDrvnVHSC2 (setq _VehSpdAvgDrvnVHSC2 __VehSpdAvgDrvnVHSC2)) _VehSpdAvgDrvnVHSC2)
  (:VehSpdAvgNonDrvnHSC2
   (&optional __VehSpdAvgNonDrvnHSC2)
   (if __VehSpdAvgNonDrvnHSC2 (setq _VehSpdAvgNonDrvnHSC2 __VehSpdAvgNonDrvnHSC2)) _VehSpdAvgNonDrvnHSC2)
  (:VehSpdAvgNonDrvnVHSC2
   (&optional __VehSpdAvgNonDrvnVHSC2)
   (if __VehSpdAvgNonDrvnVHSC2 (setq _VehSpdAvgNonDrvnVHSC2 __VehSpdAvgNonDrvnVHSC2)) _VehSpdAvgNonDrvnVHSC2)
  (:StrgWhlAngHSC2
   (&optional __StrgWhlAngHSC2)
   (if __StrgWhlAngHSC2 (setq _StrgWhlAngHSC2 __StrgWhlAngHSC2)) _StrgWhlAngHSC2)
  (:StrgWhlAngVHSC2
   (&optional __StrgWhlAngVHSC2)
   (if __StrgWhlAngVHSC2 (setq _StrgWhlAngVHSC2 __StrgWhlAngVHSC2)) _StrgWhlAngVHSC2)
  (:nCounter
   (&optional __nCounter)
   (if __nCounter (setq _nCounter __nCounter)) _nCounter)
  (:iTimeStamp
   (&optional __iTimeStamp)
   (if __iTimeStamp (setq _iTimeStamp __iTimeStamp)) _iTimeStamp)
  (:fLatitude
   (&optional __fLatitude)
   (if __fLatitude (setq _fLatitude __fLatitude)) _fLatitude)
  (:fLongitude
   (&optional __fLongitude)
   (if __fLongitude (setq _fLongitude __fLongitude)) _fLongitude)
  (:fAltitude
   (&optional __fAltitude)
   (if __fAltitude (setq _fAltitude __fAltitude)) _fAltitude)
  (:fAccX
   (&optional __fAccX)
   (if __fAccX (setq _fAccX __fAccX)) _fAccX)
  (:fAccY
   (&optional __fAccY)
   (if __fAccY (setq _fAccY __fAccY)) _fAccY)
  (:fAccZ
   (&optional __fAccZ)
   (if __fAccZ (setq _fAccZ __fAccZ)) _fAccZ)
  (:fAngRateX
   (&optional __fAngRateX)
   (if __fAngRateX (setq _fAngRateX __fAngRateX)) _fAngRateX)
  (:fAngRateY
   (&optional __fAngRateY)
   (if __fAngRateY (setq _fAngRateY __fAngRateY)) _fAngRateY)
  (:fAngRateZ
   (&optional __fAngRateZ)
   (if __fAngRateZ (setq _fAngRateZ __fAngRateZ)) _fAngRateZ)
  (:fVelNorth
   (&optional __fVelNorth)
   (if __fVelNorth (setq _fVelNorth __fVelNorth)) _fVelNorth)
  (:fVelWest
   (&optional __fVelWest)
   (if __fVelWest (setq _fVelWest __fVelWest)) _fVelWest)
  (:fVelUp
   (&optional __fVelUp)
   (if __fVelUp (setq _fVelUp __fVelUp)) _fVelUp)
  (:fHeading
   (&optional __fHeading)
   (if __fHeading (setq _fHeading __fHeading)) _fHeading)
  (:fPitch
   (&optional __fPitch)
   (if __fPitch (setq _fPitch __fPitch)) _fPitch)
  (:fRoll
   (&optional __fRoll)
   (if __fRoll (setq _fRoll __fRoll)) _fRoll)
  (:nNavStatus
   (&optional __nNavStatus)
   (if __nNavStatus (setq _nNavStatus __nNavStatus)) _nNavStatus)
  (:vTimeStamp
   (&optional __vTimeStamp)
   (if __vTimeStamp (setq _vTimeStamp __vTimeStamp)) _vTimeStamp)
  (:fSteeringAngle
   (&optional __fSteeringAngle)
   (if __fSteeringAngle (setq _fSteeringAngle __fSteeringAngle)) _fSteeringAngle)
  (:fSpeed
   (&optional __fSpeed)
   (if __fSpeed (setq _fSpeed __fSpeed)) _fSpeed)
  (:fYawRate
   (&optional __fYawRate)
   (if __fYawRate (setq _fYawRate __fYawRate)) _fYawRate)
  (:fFrontLeftWheelSpeed
   (&optional __fFrontLeftWheelSpeed)
   (if __fFrontLeftWheelSpeed (setq _fFrontLeftWheelSpeed __fFrontLeftWheelSpeed)) _fFrontLeftWheelSpeed)
  (:fFrontRightWheelSpeed
   (&optional __fFrontRightWheelSpeed)
   (if __fFrontRightWheelSpeed (setq _fFrontRightWheelSpeed __fFrontRightWheelSpeed)) _fFrontRightWheelSpeed)
  (:fRearLeftWheelSpeed
   (&optional __fRearLeftWheelSpeed)
   (if __fRearLeftWheelSpeed (setq _fRearLeftWheelSpeed __fRearLeftWheelSpeed)) _fRearLeftWheelSpeed)
  (:fRearRightWheelSpeed
   (&optional __fRearRightWheelSpeed)
   (if __fRearRightWheelSpeed (setq _fRearRightWheelSpeed __fRearRightWheelSpeed)) _fRearRightWheelSpeed)
  (:nShifterPosition
   (&optional __nShifterPosition)
   (if __nShifterPosition (setq _nShifterPosition __nShifterPosition)) _nShifterPosition)
  (:nLeftDirectionLamp
   (&optional __nLeftDirectionLamp)
   (if __nLeftDirectionLamp (setq _nLeftDirectionLamp __nLeftDirectionLamp)) _nLeftDirectionLamp)
  (:nRightDirectionLamp
   (&optional __nRightDirectionLamp)
   (if __nRightDirectionLamp (setq _nRightDirectionLamp __nRightDirectionLamp)) _nRightDirectionLamp)
  (:nMainBeamLamp
   (&optional __nMainBeamLamp)
   (if __nMainBeamLamp (setq _nMainBeamLamp __nMainBeamLamp)) _nMainBeamLamp)
  (:nDippedBeamLamp
   (&optional __nDippedBeamLamp)
   (if __nDippedBeamLamp (setq _nDippedBeamLamp __nDippedBeamLamp)) _nDippedBeamLamp)
  (:nWiperState
   (&optional __nWiperState)
   (if __nWiperState (setq _nWiperState __nWiperState)) _nWiperState)
  (:fLateralAccel
   (&optional __fLateralAccel)
   (if __fLateralAccel (setq _fLateralAccel __fLateralAccel)) _fLateralAccel)
  (:fLongituAccel
   (&optional __fLongituAccel)
   (if __fLongituAccel (setq _fLongituAccel __fLongituAccel)) _fLongituAccel)
  (:nLeftDrivenWheelPulseCounters
   (&optional __nLeftDrivenWheelPulseCounters)
   (if __nLeftDrivenWheelPulseCounters (setq _nLeftDrivenWheelPulseCounters __nLeftDrivenWheelPulseCounters)) _nLeftDrivenWheelPulseCounters)
  (:nRightDrivenWheelPulseCounters
   (&optional __nRightDrivenWheelPulseCounters)
   (if __nRightDrivenWheelPulseCounters (setq _nRightDrivenWheelPulseCounters __nRightDrivenWheelPulseCounters)) _nRightDrivenWheelPulseCounters)
  (:nLeftNonDrivenWheelPulseCounters
   (&optional __nLeftNonDrivenWheelPulseCounters)
   (if __nLeftNonDrivenWheelPulseCounters (setq _nLeftNonDrivenWheelPulseCounters __nLeftNonDrivenWheelPulseCounters)) _nLeftNonDrivenWheelPulseCounters)
  (:nRightNonDrivenWheelPulseCounters
   (&optional __nRightNonDrivenWheelPulseCounters)
   (if __nRightNonDrivenWheelPulseCounters (setq _nRightNonDrivenWheelPulseCounters __nRightNonDrivenWheelPulseCounters)) _nRightNonDrivenWheelPulseCounters)
  (:nDriveMode
   (&optional __nDriveMode)
   (if __nDriveMode (setq _nDriveMode __nDriveMode)) _nDriveMode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _isLessInfo
    1
    ;; uint8 _reserved
    1
    ;; float32 _VehDynYawRateHSC2
    4
    ;; float32 _VehDynYawRateVHSC2
    4
    ;; int32 _TrShftLvrPos_h1HSC2
    4
    ;; int32 _TrShftLvrPosV_h1HSC2
    4
    ;; float32 _VehSpdAvgDrvnHSC2
    4
    ;; int32 _VehSpdAvgDrvnVHSC2
    4
    ;; float32 _VehSpdAvgNonDrvnHSC2
    4
    ;; int32 _VehSpdAvgNonDrvnVHSC2
    4
    ;; float32 _StrgWhlAngHSC2
    4
    ;; int32 _StrgWhlAngVHSC2
    4
    ;; int16 _nCounter
    2
    ;; int64 _iTimeStamp
    8
    ;; float64 _fLatitude
    8
    ;; float64 _fLongitude
    8
    ;; float32 _fAltitude
    4
    ;; float32 _fAccX
    4
    ;; float32 _fAccY
    4
    ;; float32 _fAccZ
    4
    ;; float32 _fAngRateX
    4
    ;; float32 _fAngRateY
    4
    ;; float32 _fAngRateZ
    4
    ;; float32 _fVelNorth
    4
    ;; float32 _fVelWest
    4
    ;; float32 _fVelUp
    4
    ;; float32 _fHeading
    4
    ;; float32 _fPitch
    4
    ;; float32 _fRoll
    4
    ;; int8 _nNavStatus
    1
    ;; int64 _vTimeStamp
    8
    ;; float32 _fSteeringAngle
    4
    ;; float32 _fSpeed
    4
    ;; float32 _fYawRate
    4
    ;; float32 _fFrontLeftWheelSpeed
    4
    ;; float32 _fFrontRightWheelSpeed
    4
    ;; float32 _fRearLeftWheelSpeed
    4
    ;; float32 _fRearRightWheelSpeed
    4
    ;; uint8 _nShifterPosition
    1
    ;; uint8 _nLeftDirectionLamp
    1
    ;; uint8 _nRightDirectionLamp
    1
    ;; uint8 _nMainBeamLamp
    1
    ;; uint8 _nDippedBeamLamp
    1
    ;; uint8 _nWiperState
    1
    ;; float32 _fLateralAccel
    4
    ;; float32 _fLongituAccel
    4
    ;; int16 _nLeftDrivenWheelPulseCounters
    2
    ;; int16 _nRightDrivenWheelPulseCounters
    2
    ;; int16 _nLeftNonDrivenWheelPulseCounters
    2
    ;; int16 _nRightNonDrivenWheelPulseCounters
    2
    ;; uint8 _nDriveMode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _isLessInfo
       (if _isLessInfo (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _reserved
       (write-byte _reserved s)
     ;; float32 _VehDynYawRateHSC2
       (sys::poke _VehDynYawRateHSC2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VehDynYawRateVHSC2
       (sys::poke _VehDynYawRateVHSC2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _TrShftLvrPos_h1HSC2
       (write-long _TrShftLvrPos_h1HSC2 s)
     ;; int32 _TrShftLvrPosV_h1HSC2
       (write-long _TrShftLvrPosV_h1HSC2 s)
     ;; float32 _VehSpdAvgDrvnHSC2
       (sys::poke _VehSpdAvgDrvnHSC2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _VehSpdAvgDrvnVHSC2
       (write-long _VehSpdAvgDrvnVHSC2 s)
     ;; float32 _VehSpdAvgNonDrvnHSC2
       (sys::poke _VehSpdAvgNonDrvnHSC2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _VehSpdAvgNonDrvnVHSC2
       (write-long _VehSpdAvgNonDrvnVHSC2 s)
     ;; float32 _StrgWhlAngHSC2
       (sys::poke _StrgWhlAngHSC2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _StrgWhlAngVHSC2
       (write-long _StrgWhlAngVHSC2 s)
     ;; int16 _nCounter
       (write-word _nCounter s)
     ;; int64 _iTimeStamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _iTimeStamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _iTimeStamp) (= (length (_iTimeStamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_iTimeStamp . bv) 0) 0) s)
              (write-long (ash (elt (_iTimeStamp . bv) 1) -1) s))
             ((and (class _iTimeStamp) (= (length (_iTimeStamp . bv)) 1)) ;; big1
              (write-long (elt (_iTimeStamp . bv) 0) s)
              (write-long (if (>= _iTimeStamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _iTimeStamp s)(write-long (if (>= _iTimeStamp 0) 0 #xffffffff) s)))
     ;; float64 _fLatitude
       (sys::poke _fLatitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fLongitude
       (sys::poke _fLongitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _fAltitude
       (sys::poke _fAltitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fAccX
       (sys::poke _fAccX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fAccY
       (sys::poke _fAccY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fAccZ
       (sys::poke _fAccZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fAngRateX
       (sys::poke _fAngRateX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fAngRateY
       (sys::poke _fAngRateY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fAngRateZ
       (sys::poke _fAngRateZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fVelNorth
       (sys::poke _fVelNorth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fVelWest
       (sys::poke _fVelWest (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fVelUp
       (sys::poke _fVelUp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fHeading
       (sys::poke _fHeading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fPitch
       (sys::poke _fPitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fRoll
       (sys::poke _fRoll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _nNavStatus
       (write-byte _nNavStatus s)
     ;; int64 _vTimeStamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _vTimeStamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _vTimeStamp) (= (length (_vTimeStamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_vTimeStamp . bv) 0) 0) s)
              (write-long (ash (elt (_vTimeStamp . bv) 1) -1) s))
             ((and (class _vTimeStamp) (= (length (_vTimeStamp . bv)) 1)) ;; big1
              (write-long (elt (_vTimeStamp . bv) 0) s)
              (write-long (if (>= _vTimeStamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _vTimeStamp s)(write-long (if (>= _vTimeStamp 0) 0 #xffffffff) s)))
     ;; float32 _fSteeringAngle
       (sys::poke _fSteeringAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fSpeed
       (sys::poke _fSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fYawRate
       (sys::poke _fYawRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fFrontLeftWheelSpeed
       (sys::poke _fFrontLeftWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fFrontRightWheelSpeed
       (sys::poke _fFrontRightWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fRearLeftWheelSpeed
       (sys::poke _fRearLeftWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fRearRightWheelSpeed
       (sys::poke _fRearRightWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _nShifterPosition
       (write-byte _nShifterPosition s)
     ;; uint8 _nLeftDirectionLamp
       (write-byte _nLeftDirectionLamp s)
     ;; uint8 _nRightDirectionLamp
       (write-byte _nRightDirectionLamp s)
     ;; uint8 _nMainBeamLamp
       (write-byte _nMainBeamLamp s)
     ;; uint8 _nDippedBeamLamp
       (write-byte _nDippedBeamLamp s)
     ;; uint8 _nWiperState
       (write-byte _nWiperState s)
     ;; float32 _fLateralAccel
       (sys::poke _fLateralAccel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fLongituAccel
       (sys::poke _fLongituAccel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _nLeftDrivenWheelPulseCounters
       (write-word _nLeftDrivenWheelPulseCounters s)
     ;; int16 _nRightDrivenWheelPulseCounters
       (write-word _nRightDrivenWheelPulseCounters s)
     ;; int16 _nLeftNonDrivenWheelPulseCounters
       (write-word _nLeftNonDrivenWheelPulseCounters s)
     ;; int16 _nRightNonDrivenWheelPulseCounters
       (write-word _nRightNonDrivenWheelPulseCounters s)
     ;; uint8 _nDriveMode
       (write-byte _nDriveMode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _isLessInfo
     (setq _isLessInfo (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _reserved
     (setq _reserved (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _VehDynYawRateHSC2
     (setq _VehDynYawRateHSC2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VehDynYawRateVHSC2
     (setq _VehDynYawRateVHSC2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _TrShftLvrPos_h1HSC2
     (setq _TrShftLvrPos_h1HSC2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _TrShftLvrPosV_h1HSC2
     (setq _TrShftLvrPosV_h1HSC2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _VehSpdAvgDrvnHSC2
     (setq _VehSpdAvgDrvnHSC2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _VehSpdAvgDrvnVHSC2
     (setq _VehSpdAvgDrvnVHSC2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _VehSpdAvgNonDrvnHSC2
     (setq _VehSpdAvgNonDrvnHSC2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _VehSpdAvgNonDrvnVHSC2
     (setq _VehSpdAvgNonDrvnVHSC2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _StrgWhlAngHSC2
     (setq _StrgWhlAngHSC2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _StrgWhlAngVHSC2
     (setq _StrgWhlAngVHSC2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _nCounter
     (setq _nCounter (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int64 _iTimeStamp
#+(or :alpha :irix6 :x86_64)
      (setf _iTimeStamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _iTimeStamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _fLatitude
     (setq _fLatitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fLongitude
     (setq _fLongitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _fAltitude
     (setq _fAltitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fAccX
     (setq _fAccX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fAccY
     (setq _fAccY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fAccZ
     (setq _fAccZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fAngRateX
     (setq _fAngRateX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fAngRateY
     (setq _fAngRateY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fAngRateZ
     (setq _fAngRateZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fVelNorth
     (setq _fVelNorth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fVelWest
     (setq _fVelWest (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fVelUp
     (setq _fVelUp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fHeading
     (setq _fHeading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fPitch
     (setq _fPitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fRoll
     (setq _fRoll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _nNavStatus
     (setq _nNavStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _nNavStatus 127) (setq _nNavStatus (- _nNavStatus 256)))
   ;; int64 _vTimeStamp
#+(or :alpha :irix6 :x86_64)
      (setf _vTimeStamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _vTimeStamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _fSteeringAngle
     (setq _fSteeringAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fSpeed
     (setq _fSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fYawRate
     (setq _fYawRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fFrontLeftWheelSpeed
     (setq _fFrontLeftWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fFrontRightWheelSpeed
     (setq _fFrontRightWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fRearLeftWheelSpeed
     (setq _fRearLeftWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fRearRightWheelSpeed
     (setq _fRearRightWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _nShifterPosition
     (setq _nShifterPosition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nLeftDirectionLamp
     (setq _nLeftDirectionLamp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nRightDirectionLamp
     (setq _nRightDirectionLamp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nMainBeamLamp
     (setq _nMainBeamLamp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nDippedBeamLamp
     (setq _nDippedBeamLamp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nWiperState
     (setq _nWiperState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _fLateralAccel
     (setq _fLateralAccel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fLongituAccel
     (setq _fLongituAccel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _nLeftDrivenWheelPulseCounters
     (setq _nLeftDrivenWheelPulseCounters (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _nRightDrivenWheelPulseCounters
     (setq _nRightDrivenWheelPulseCounters (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _nLeftNonDrivenWheelPulseCounters
     (setq _nLeftNonDrivenWheelPulseCounters (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _nRightNonDrivenWheelPulseCounters
     (setq _nRightNonDrivenWheelPulseCounters (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _nDriveMode
     (setq _nDriveMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get radar_msgs::ChassisMsg :md5sum-) "178cdfa29e24c2bd952c01d011c7be7e")
(setf (get radar_msgs::ChassisMsg :datatype-) "radar_msgs/ChassisMsg")
(setf (get radar_msgs::ChassisMsg :definition-)
      "Header header           # packet header
bool isLessInfo
uint8 reserved
# lessInfo start
#yaw
float32 VehDynYawRateHSC2
float32 VehDynYawRateVHSC2
#shift
int32 TrShftLvrPos_h1HSC2
int32 TrShftLvrPosV_h1HSC2
#spped
float32 VehSpdAvgDrvnHSC2
int32 VehSpdAvgDrvnVHSC2
float32 VehSpdAvgNonDrvnHSC2
int32 VehSpdAvgNonDrvnVHSC2
#wheel
float32 StrgWhlAngHSC2
int32 StrgWhlAngVHSC2
# lessInfo end

# more info start
int16 nCounter
# INERTIAL
int64 iTimeStamp
float64 fLatitude
float64 fLongitude
float32 fAltitude
float32 fAccX
float32 fAccY
float32 fAccZ
float32 fAngRateX
float32 fAngRateY
float32 fAngRateZ
float32 fVelNorth
float32 fVelWest
float32 fVelUp
float32 fHeading
float32 fPitch
float32 fRoll
int8 nNavStatus
#uint8 nWiperStatus
#float32 fDrnvelL
#float32 fNonDrnvelL
#float32 fDrnvelR
#float32 fNonDrnvelR
#float32 dTrailerAngle

# VCU_VEHICLE_INFO
int64 vTimeStamp
#float32 fSteeringAngleVel
float32 fSteeringAngle
float32 fSpeed
float32 fYawRate
float32 fFrontLeftWheelSpeed
float32 fFrontRightWheelSpeed
float32 fRearLeftWheelSpeed
float32 fRearRightWheelSpeed
uint8 nShifterPosition
uint8 nLeftDirectionLamp
uint8 nRightDirectionLamp
uint8 nMainBeamLamp
uint8 nDippedBeamLamp
uint8 nWiperState
float32 fLateralAccel
float32 fLongituAccel
int16 nLeftDrivenWheelPulseCounters
int16 nRightDrivenWheelPulseCounters
int16 nLeftNonDrivenWheelPulseCounters
int16 nRightNonDrivenWheelPulseCounters
uint8 nDriveMode

# more info end

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



(provide :radar_msgs/ChassisMsg "178cdfa29e24c2bd952c01d011c7be7e")


