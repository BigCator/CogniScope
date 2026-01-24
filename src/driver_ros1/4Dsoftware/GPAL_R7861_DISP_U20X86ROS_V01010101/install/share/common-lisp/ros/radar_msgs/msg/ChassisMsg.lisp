; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude ChassisMsg.msg.html

(cl:defclass <ChassisMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (isLessInfo
    :reader isLessInfo
    :initarg :isLessInfo
    :type cl:boolean
    :initform cl:nil)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0)
   (VehDynYawRateHSC2
    :reader VehDynYawRateHSC2
    :initarg :VehDynYawRateHSC2
    :type cl:float
    :initform 0.0)
   (VehDynYawRateVHSC2
    :reader VehDynYawRateVHSC2
    :initarg :VehDynYawRateVHSC2
    :type cl:float
    :initform 0.0)
   (TrShftLvrPos_h1HSC2
    :reader TrShftLvrPos_h1HSC2
    :initarg :TrShftLvrPos_h1HSC2
    :type cl:integer
    :initform 0)
   (TrShftLvrPosV_h1HSC2
    :reader TrShftLvrPosV_h1HSC2
    :initarg :TrShftLvrPosV_h1HSC2
    :type cl:integer
    :initform 0)
   (VehSpdAvgDrvnHSC2
    :reader VehSpdAvgDrvnHSC2
    :initarg :VehSpdAvgDrvnHSC2
    :type cl:float
    :initform 0.0)
   (VehSpdAvgDrvnVHSC2
    :reader VehSpdAvgDrvnVHSC2
    :initarg :VehSpdAvgDrvnVHSC2
    :type cl:integer
    :initform 0)
   (VehSpdAvgNonDrvnHSC2
    :reader VehSpdAvgNonDrvnHSC2
    :initarg :VehSpdAvgNonDrvnHSC2
    :type cl:float
    :initform 0.0)
   (VehSpdAvgNonDrvnVHSC2
    :reader VehSpdAvgNonDrvnVHSC2
    :initarg :VehSpdAvgNonDrvnVHSC2
    :type cl:integer
    :initform 0)
   (StrgWhlAngHSC2
    :reader StrgWhlAngHSC2
    :initarg :StrgWhlAngHSC2
    :type cl:float
    :initform 0.0)
   (StrgWhlAngVHSC2
    :reader StrgWhlAngVHSC2
    :initarg :StrgWhlAngVHSC2
    :type cl:integer
    :initform 0)
   (nCounter
    :reader nCounter
    :initarg :nCounter
    :type cl:fixnum
    :initform 0)
   (iTimeStamp
    :reader iTimeStamp
    :initarg :iTimeStamp
    :type cl:integer
    :initform 0)
   (fLatitude
    :reader fLatitude
    :initarg :fLatitude
    :type cl:float
    :initform 0.0)
   (fLongitude
    :reader fLongitude
    :initarg :fLongitude
    :type cl:float
    :initform 0.0)
   (fAltitude
    :reader fAltitude
    :initarg :fAltitude
    :type cl:float
    :initform 0.0)
   (fAccX
    :reader fAccX
    :initarg :fAccX
    :type cl:float
    :initform 0.0)
   (fAccY
    :reader fAccY
    :initarg :fAccY
    :type cl:float
    :initform 0.0)
   (fAccZ
    :reader fAccZ
    :initarg :fAccZ
    :type cl:float
    :initform 0.0)
   (fAngRateX
    :reader fAngRateX
    :initarg :fAngRateX
    :type cl:float
    :initform 0.0)
   (fAngRateY
    :reader fAngRateY
    :initarg :fAngRateY
    :type cl:float
    :initform 0.0)
   (fAngRateZ
    :reader fAngRateZ
    :initarg :fAngRateZ
    :type cl:float
    :initform 0.0)
   (fVelNorth
    :reader fVelNorth
    :initarg :fVelNorth
    :type cl:float
    :initform 0.0)
   (fVelWest
    :reader fVelWest
    :initarg :fVelWest
    :type cl:float
    :initform 0.0)
   (fVelUp
    :reader fVelUp
    :initarg :fVelUp
    :type cl:float
    :initform 0.0)
   (fHeading
    :reader fHeading
    :initarg :fHeading
    :type cl:float
    :initform 0.0)
   (fPitch
    :reader fPitch
    :initarg :fPitch
    :type cl:float
    :initform 0.0)
   (fRoll
    :reader fRoll
    :initarg :fRoll
    :type cl:float
    :initform 0.0)
   (nNavStatus
    :reader nNavStatus
    :initarg :nNavStatus
    :type cl:fixnum
    :initform 0)
   (vTimeStamp
    :reader vTimeStamp
    :initarg :vTimeStamp
    :type cl:integer
    :initform 0)
   (fSteeringAngle
    :reader fSteeringAngle
    :initarg :fSteeringAngle
    :type cl:float
    :initform 0.0)
   (fSpeed
    :reader fSpeed
    :initarg :fSpeed
    :type cl:float
    :initform 0.0)
   (fYawRate
    :reader fYawRate
    :initarg :fYawRate
    :type cl:float
    :initform 0.0)
   (fFrontLeftWheelSpeed
    :reader fFrontLeftWheelSpeed
    :initarg :fFrontLeftWheelSpeed
    :type cl:float
    :initform 0.0)
   (fFrontRightWheelSpeed
    :reader fFrontRightWheelSpeed
    :initarg :fFrontRightWheelSpeed
    :type cl:float
    :initform 0.0)
   (fRearLeftWheelSpeed
    :reader fRearLeftWheelSpeed
    :initarg :fRearLeftWheelSpeed
    :type cl:float
    :initform 0.0)
   (fRearRightWheelSpeed
    :reader fRearRightWheelSpeed
    :initarg :fRearRightWheelSpeed
    :type cl:float
    :initform 0.0)
   (nShifterPosition
    :reader nShifterPosition
    :initarg :nShifterPosition
    :type cl:fixnum
    :initform 0)
   (nLeftDirectionLamp
    :reader nLeftDirectionLamp
    :initarg :nLeftDirectionLamp
    :type cl:fixnum
    :initform 0)
   (nRightDirectionLamp
    :reader nRightDirectionLamp
    :initarg :nRightDirectionLamp
    :type cl:fixnum
    :initform 0)
   (nMainBeamLamp
    :reader nMainBeamLamp
    :initarg :nMainBeamLamp
    :type cl:fixnum
    :initform 0)
   (nDippedBeamLamp
    :reader nDippedBeamLamp
    :initarg :nDippedBeamLamp
    :type cl:fixnum
    :initform 0)
   (nWiperState
    :reader nWiperState
    :initarg :nWiperState
    :type cl:fixnum
    :initform 0)
   (fLateralAccel
    :reader fLateralAccel
    :initarg :fLateralAccel
    :type cl:float
    :initform 0.0)
   (fLongituAccel
    :reader fLongituAccel
    :initarg :fLongituAccel
    :type cl:float
    :initform 0.0)
   (nLeftDrivenWheelPulseCounters
    :reader nLeftDrivenWheelPulseCounters
    :initarg :nLeftDrivenWheelPulseCounters
    :type cl:fixnum
    :initform 0)
   (nRightDrivenWheelPulseCounters
    :reader nRightDrivenWheelPulseCounters
    :initarg :nRightDrivenWheelPulseCounters
    :type cl:fixnum
    :initform 0)
   (nLeftNonDrivenWheelPulseCounters
    :reader nLeftNonDrivenWheelPulseCounters
    :initarg :nLeftNonDrivenWheelPulseCounters
    :type cl:fixnum
    :initform 0)
   (nRightNonDrivenWheelPulseCounters
    :reader nRightNonDrivenWheelPulseCounters
    :initarg :nRightNonDrivenWheelPulseCounters
    :type cl:fixnum
    :initform 0)
   (nDriveMode
    :reader nDriveMode
    :initarg :nDriveMode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChassisMsg (<ChassisMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<ChassisMsg> is deprecated: use radar_msgs-msg:ChassisMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'isLessInfo-val :lambda-list '(m))
(cl:defmethod isLessInfo-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:isLessInfo-val is deprecated.  Use radar_msgs-msg:isLessInfo instead.")
  (isLessInfo m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved-val is deprecated.  Use radar_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'VehDynYawRateHSC2-val :lambda-list '(m))
(cl:defmethod VehDynYawRateHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:VehDynYawRateHSC2-val is deprecated.  Use radar_msgs-msg:VehDynYawRateHSC2 instead.")
  (VehDynYawRateHSC2 m))

(cl:ensure-generic-function 'VehDynYawRateVHSC2-val :lambda-list '(m))
(cl:defmethod VehDynYawRateVHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:VehDynYawRateVHSC2-val is deprecated.  Use radar_msgs-msg:VehDynYawRateVHSC2 instead.")
  (VehDynYawRateVHSC2 m))

(cl:ensure-generic-function 'TrShftLvrPos_h1HSC2-val :lambda-list '(m))
(cl:defmethod TrShftLvrPos_h1HSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:TrShftLvrPos_h1HSC2-val is deprecated.  Use radar_msgs-msg:TrShftLvrPos_h1HSC2 instead.")
  (TrShftLvrPos_h1HSC2 m))

(cl:ensure-generic-function 'TrShftLvrPosV_h1HSC2-val :lambda-list '(m))
(cl:defmethod TrShftLvrPosV_h1HSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:TrShftLvrPosV_h1HSC2-val is deprecated.  Use radar_msgs-msg:TrShftLvrPosV_h1HSC2 instead.")
  (TrShftLvrPosV_h1HSC2 m))

(cl:ensure-generic-function 'VehSpdAvgDrvnHSC2-val :lambda-list '(m))
(cl:defmethod VehSpdAvgDrvnHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:VehSpdAvgDrvnHSC2-val is deprecated.  Use radar_msgs-msg:VehSpdAvgDrvnHSC2 instead.")
  (VehSpdAvgDrvnHSC2 m))

(cl:ensure-generic-function 'VehSpdAvgDrvnVHSC2-val :lambda-list '(m))
(cl:defmethod VehSpdAvgDrvnVHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:VehSpdAvgDrvnVHSC2-val is deprecated.  Use radar_msgs-msg:VehSpdAvgDrvnVHSC2 instead.")
  (VehSpdAvgDrvnVHSC2 m))

(cl:ensure-generic-function 'VehSpdAvgNonDrvnHSC2-val :lambda-list '(m))
(cl:defmethod VehSpdAvgNonDrvnHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:VehSpdAvgNonDrvnHSC2-val is deprecated.  Use radar_msgs-msg:VehSpdAvgNonDrvnHSC2 instead.")
  (VehSpdAvgNonDrvnHSC2 m))

(cl:ensure-generic-function 'VehSpdAvgNonDrvnVHSC2-val :lambda-list '(m))
(cl:defmethod VehSpdAvgNonDrvnVHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:VehSpdAvgNonDrvnVHSC2-val is deprecated.  Use radar_msgs-msg:VehSpdAvgNonDrvnVHSC2 instead.")
  (VehSpdAvgNonDrvnVHSC2 m))

(cl:ensure-generic-function 'StrgWhlAngHSC2-val :lambda-list '(m))
(cl:defmethod StrgWhlAngHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:StrgWhlAngHSC2-val is deprecated.  Use radar_msgs-msg:StrgWhlAngHSC2 instead.")
  (StrgWhlAngHSC2 m))

(cl:ensure-generic-function 'StrgWhlAngVHSC2-val :lambda-list '(m))
(cl:defmethod StrgWhlAngVHSC2-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:StrgWhlAngVHSC2-val is deprecated.  Use radar_msgs-msg:StrgWhlAngVHSC2 instead.")
  (StrgWhlAngVHSC2 m))

(cl:ensure-generic-function 'nCounter-val :lambda-list '(m))
(cl:defmethod nCounter-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nCounter-val is deprecated.  Use radar_msgs-msg:nCounter instead.")
  (nCounter m))

(cl:ensure-generic-function 'iTimeStamp-val :lambda-list '(m))
(cl:defmethod iTimeStamp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:iTimeStamp-val is deprecated.  Use radar_msgs-msg:iTimeStamp instead.")
  (iTimeStamp m))

(cl:ensure-generic-function 'fLatitude-val :lambda-list '(m))
(cl:defmethod fLatitude-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fLatitude-val is deprecated.  Use radar_msgs-msg:fLatitude instead.")
  (fLatitude m))

(cl:ensure-generic-function 'fLongitude-val :lambda-list '(m))
(cl:defmethod fLongitude-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fLongitude-val is deprecated.  Use radar_msgs-msg:fLongitude instead.")
  (fLongitude m))

(cl:ensure-generic-function 'fAltitude-val :lambda-list '(m))
(cl:defmethod fAltitude-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fAltitude-val is deprecated.  Use radar_msgs-msg:fAltitude instead.")
  (fAltitude m))

(cl:ensure-generic-function 'fAccX-val :lambda-list '(m))
(cl:defmethod fAccX-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fAccX-val is deprecated.  Use radar_msgs-msg:fAccX instead.")
  (fAccX m))

(cl:ensure-generic-function 'fAccY-val :lambda-list '(m))
(cl:defmethod fAccY-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fAccY-val is deprecated.  Use radar_msgs-msg:fAccY instead.")
  (fAccY m))

(cl:ensure-generic-function 'fAccZ-val :lambda-list '(m))
(cl:defmethod fAccZ-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fAccZ-val is deprecated.  Use radar_msgs-msg:fAccZ instead.")
  (fAccZ m))

(cl:ensure-generic-function 'fAngRateX-val :lambda-list '(m))
(cl:defmethod fAngRateX-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fAngRateX-val is deprecated.  Use radar_msgs-msg:fAngRateX instead.")
  (fAngRateX m))

(cl:ensure-generic-function 'fAngRateY-val :lambda-list '(m))
(cl:defmethod fAngRateY-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fAngRateY-val is deprecated.  Use radar_msgs-msg:fAngRateY instead.")
  (fAngRateY m))

(cl:ensure-generic-function 'fAngRateZ-val :lambda-list '(m))
(cl:defmethod fAngRateZ-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fAngRateZ-val is deprecated.  Use radar_msgs-msg:fAngRateZ instead.")
  (fAngRateZ m))

(cl:ensure-generic-function 'fVelNorth-val :lambda-list '(m))
(cl:defmethod fVelNorth-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fVelNorth-val is deprecated.  Use radar_msgs-msg:fVelNorth instead.")
  (fVelNorth m))

(cl:ensure-generic-function 'fVelWest-val :lambda-list '(m))
(cl:defmethod fVelWest-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fVelWest-val is deprecated.  Use radar_msgs-msg:fVelWest instead.")
  (fVelWest m))

(cl:ensure-generic-function 'fVelUp-val :lambda-list '(m))
(cl:defmethod fVelUp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fVelUp-val is deprecated.  Use radar_msgs-msg:fVelUp instead.")
  (fVelUp m))

(cl:ensure-generic-function 'fHeading-val :lambda-list '(m))
(cl:defmethod fHeading-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fHeading-val is deprecated.  Use radar_msgs-msg:fHeading instead.")
  (fHeading m))

(cl:ensure-generic-function 'fPitch-val :lambda-list '(m))
(cl:defmethod fPitch-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fPitch-val is deprecated.  Use radar_msgs-msg:fPitch instead.")
  (fPitch m))

(cl:ensure-generic-function 'fRoll-val :lambda-list '(m))
(cl:defmethod fRoll-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fRoll-val is deprecated.  Use radar_msgs-msg:fRoll instead.")
  (fRoll m))

(cl:ensure-generic-function 'nNavStatus-val :lambda-list '(m))
(cl:defmethod nNavStatus-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nNavStatus-val is deprecated.  Use radar_msgs-msg:nNavStatus instead.")
  (nNavStatus m))

(cl:ensure-generic-function 'vTimeStamp-val :lambda-list '(m))
(cl:defmethod vTimeStamp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:vTimeStamp-val is deprecated.  Use radar_msgs-msg:vTimeStamp instead.")
  (vTimeStamp m))

(cl:ensure-generic-function 'fSteeringAngle-val :lambda-list '(m))
(cl:defmethod fSteeringAngle-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fSteeringAngle-val is deprecated.  Use radar_msgs-msg:fSteeringAngle instead.")
  (fSteeringAngle m))

(cl:ensure-generic-function 'fSpeed-val :lambda-list '(m))
(cl:defmethod fSpeed-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fSpeed-val is deprecated.  Use radar_msgs-msg:fSpeed instead.")
  (fSpeed m))

(cl:ensure-generic-function 'fYawRate-val :lambda-list '(m))
(cl:defmethod fYawRate-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fYawRate-val is deprecated.  Use radar_msgs-msg:fYawRate instead.")
  (fYawRate m))

(cl:ensure-generic-function 'fFrontLeftWheelSpeed-val :lambda-list '(m))
(cl:defmethod fFrontLeftWheelSpeed-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fFrontLeftWheelSpeed-val is deprecated.  Use radar_msgs-msg:fFrontLeftWheelSpeed instead.")
  (fFrontLeftWheelSpeed m))

(cl:ensure-generic-function 'fFrontRightWheelSpeed-val :lambda-list '(m))
(cl:defmethod fFrontRightWheelSpeed-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fFrontRightWheelSpeed-val is deprecated.  Use radar_msgs-msg:fFrontRightWheelSpeed instead.")
  (fFrontRightWheelSpeed m))

(cl:ensure-generic-function 'fRearLeftWheelSpeed-val :lambda-list '(m))
(cl:defmethod fRearLeftWheelSpeed-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fRearLeftWheelSpeed-val is deprecated.  Use radar_msgs-msg:fRearLeftWheelSpeed instead.")
  (fRearLeftWheelSpeed m))

(cl:ensure-generic-function 'fRearRightWheelSpeed-val :lambda-list '(m))
(cl:defmethod fRearRightWheelSpeed-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fRearRightWheelSpeed-val is deprecated.  Use radar_msgs-msg:fRearRightWheelSpeed instead.")
  (fRearRightWheelSpeed m))

(cl:ensure-generic-function 'nShifterPosition-val :lambda-list '(m))
(cl:defmethod nShifterPosition-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nShifterPosition-val is deprecated.  Use radar_msgs-msg:nShifterPosition instead.")
  (nShifterPosition m))

(cl:ensure-generic-function 'nLeftDirectionLamp-val :lambda-list '(m))
(cl:defmethod nLeftDirectionLamp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nLeftDirectionLamp-val is deprecated.  Use radar_msgs-msg:nLeftDirectionLamp instead.")
  (nLeftDirectionLamp m))

(cl:ensure-generic-function 'nRightDirectionLamp-val :lambda-list '(m))
(cl:defmethod nRightDirectionLamp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nRightDirectionLamp-val is deprecated.  Use radar_msgs-msg:nRightDirectionLamp instead.")
  (nRightDirectionLamp m))

(cl:ensure-generic-function 'nMainBeamLamp-val :lambda-list '(m))
(cl:defmethod nMainBeamLamp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nMainBeamLamp-val is deprecated.  Use radar_msgs-msg:nMainBeamLamp instead.")
  (nMainBeamLamp m))

(cl:ensure-generic-function 'nDippedBeamLamp-val :lambda-list '(m))
(cl:defmethod nDippedBeamLamp-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nDippedBeamLamp-val is deprecated.  Use radar_msgs-msg:nDippedBeamLamp instead.")
  (nDippedBeamLamp m))

(cl:ensure-generic-function 'nWiperState-val :lambda-list '(m))
(cl:defmethod nWiperState-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nWiperState-val is deprecated.  Use radar_msgs-msg:nWiperState instead.")
  (nWiperState m))

(cl:ensure-generic-function 'fLateralAccel-val :lambda-list '(m))
(cl:defmethod fLateralAccel-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fLateralAccel-val is deprecated.  Use radar_msgs-msg:fLateralAccel instead.")
  (fLateralAccel m))

(cl:ensure-generic-function 'fLongituAccel-val :lambda-list '(m))
(cl:defmethod fLongituAccel-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:fLongituAccel-val is deprecated.  Use radar_msgs-msg:fLongituAccel instead.")
  (fLongituAccel m))

(cl:ensure-generic-function 'nLeftDrivenWheelPulseCounters-val :lambda-list '(m))
(cl:defmethod nLeftDrivenWheelPulseCounters-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nLeftDrivenWheelPulseCounters-val is deprecated.  Use radar_msgs-msg:nLeftDrivenWheelPulseCounters instead.")
  (nLeftDrivenWheelPulseCounters m))

(cl:ensure-generic-function 'nRightDrivenWheelPulseCounters-val :lambda-list '(m))
(cl:defmethod nRightDrivenWheelPulseCounters-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nRightDrivenWheelPulseCounters-val is deprecated.  Use radar_msgs-msg:nRightDrivenWheelPulseCounters instead.")
  (nRightDrivenWheelPulseCounters m))

(cl:ensure-generic-function 'nLeftNonDrivenWheelPulseCounters-val :lambda-list '(m))
(cl:defmethod nLeftNonDrivenWheelPulseCounters-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nLeftNonDrivenWheelPulseCounters-val is deprecated.  Use radar_msgs-msg:nLeftNonDrivenWheelPulseCounters instead.")
  (nLeftNonDrivenWheelPulseCounters m))

(cl:ensure-generic-function 'nRightNonDrivenWheelPulseCounters-val :lambda-list '(m))
(cl:defmethod nRightNonDrivenWheelPulseCounters-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nRightNonDrivenWheelPulseCounters-val is deprecated.  Use radar_msgs-msg:nRightNonDrivenWheelPulseCounters instead.")
  (nRightNonDrivenWheelPulseCounters m))

(cl:ensure-generic-function 'nDriveMode-val :lambda-list '(m))
(cl:defmethod nDriveMode-val ((m <ChassisMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:nDriveMode-val is deprecated.  Use radar_msgs-msg:nDriveMode instead.")
  (nDriveMode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisMsg>) ostream)
  "Serializes a message object of type '<ChassisMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isLessInfo) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VehDynYawRateHSC2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VehDynYawRateVHSC2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'TrShftLvrPos_h1HSC2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TrShftLvrPosV_h1HSC2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VehSpdAvgDrvnHSC2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'VehSpdAvgDrvnVHSC2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VehSpdAvgNonDrvnHSC2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'VehSpdAvgNonDrvnVHSC2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'StrgWhlAngHSC2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'StrgWhlAngVHSC2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nCounter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iTimeStamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fLatitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fLongitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fAltitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fAccX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fAccY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fAccZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fAngRateX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fAngRateY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fAngRateZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fVelNorth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fVelWest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fVelUp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fHeading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fPitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fRoll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'nNavStatus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vTimeStamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fSteeringAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fYawRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fFrontLeftWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fFrontRightWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fRearLeftWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fRearRightWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nShifterPosition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nLeftDirectionLamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nRightDirectionLamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nMainBeamLamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nDippedBeamLamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nWiperState)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fLateralAccel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fLongituAccel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'nLeftDrivenWheelPulseCounters)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nRightDrivenWheelPulseCounters)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nLeftNonDrivenWheelPulseCounters)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nRightNonDrivenWheelPulseCounters)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nDriveMode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisMsg>) istream)
  "Deserializes a message object of type '<ChassisMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'isLessInfo) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VehDynYawRateHSC2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VehDynYawRateVHSC2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TrShftLvrPos_h1HSC2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TrShftLvrPosV_h1HSC2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VehSpdAvgDrvnHSC2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VehSpdAvgDrvnVHSC2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VehSpdAvgNonDrvnHSC2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VehSpdAvgNonDrvnVHSC2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'StrgWhlAngHSC2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'StrgWhlAngVHSC2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nCounter) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iTimeStamp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fLatitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fLongitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fAltitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fAccX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fAccY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fAccZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fAngRateX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fAngRateY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fAngRateZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fVelNorth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fVelWest) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fVelUp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fHeading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fPitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fRoll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nNavStatus) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vTimeStamp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fSteeringAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fYawRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fFrontLeftWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fFrontRightWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fRearLeftWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fRearRightWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nShifterPosition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nLeftDirectionLamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nRightDirectionLamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nMainBeamLamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nDippedBeamLamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nWiperState)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fLateralAccel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fLongituAccel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nLeftDrivenWheelPulseCounters) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nRightDrivenWheelPulseCounters) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nLeftNonDrivenWheelPulseCounters) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nRightNonDrivenWheelPulseCounters) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nDriveMode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisMsg>)))
  "Returns string type for a message object of type '<ChassisMsg>"
  "radar_msgs/ChassisMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisMsg)))
  "Returns string type for a message object of type 'ChassisMsg"
  "radar_msgs/ChassisMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisMsg>)))
  "Returns md5sum for a message object of type '<ChassisMsg>"
  "178cdfa29e24c2bd952c01d011c7be7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisMsg)))
  "Returns md5sum for a message object of type 'ChassisMsg"
  "178cdfa29e24c2bd952c01d011c7be7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisMsg>)))
  "Returns full string definition for message of type '<ChassisMsg>"
  (cl:format cl:nil "Header header           # packet header~%bool isLessInfo~%uint8 reserved~%# lessInfo start~%#yaw~%float32 VehDynYawRateHSC2~%float32 VehDynYawRateVHSC2~%#shift~%int32 TrShftLvrPos_h1HSC2~%int32 TrShftLvrPosV_h1HSC2~%#spped~%float32 VehSpdAvgDrvnHSC2~%int32 VehSpdAvgDrvnVHSC2~%float32 VehSpdAvgNonDrvnHSC2~%int32 VehSpdAvgNonDrvnVHSC2~%#wheel~%float32 StrgWhlAngHSC2~%int32 StrgWhlAngVHSC2~%# lessInfo end~%~%# more info start~%int16 nCounter~%# INERTIAL~%int64 iTimeStamp~%float64 fLatitude~%float64 fLongitude~%float32 fAltitude~%float32 fAccX~%float32 fAccY~%float32 fAccZ~%float32 fAngRateX~%float32 fAngRateY~%float32 fAngRateZ~%float32 fVelNorth~%float32 fVelWest~%float32 fVelUp~%float32 fHeading~%float32 fPitch~%float32 fRoll~%int8 nNavStatus~%#uint8 nWiperStatus~%#float32 fDrnvelL~%#float32 fNonDrnvelL~%#float32 fDrnvelR~%#float32 fNonDrnvelR~%#float32 dTrailerAngle~%~%# VCU_VEHICLE_INFO~%int64 vTimeStamp~%#float32 fSteeringAngleVel~%float32 fSteeringAngle~%float32 fSpeed~%float32 fYawRate~%float32 fFrontLeftWheelSpeed~%float32 fFrontRightWheelSpeed~%float32 fRearLeftWheelSpeed~%float32 fRearRightWheelSpeed~%uint8 nShifterPosition~%uint8 nLeftDirectionLamp~%uint8 nRightDirectionLamp~%uint8 nMainBeamLamp~%uint8 nDippedBeamLamp~%uint8 nWiperState~%float32 fLateralAccel~%float32 fLongituAccel~%int16 nLeftDrivenWheelPulseCounters~%int16 nRightDrivenWheelPulseCounters~%int16 nLeftNonDrivenWheelPulseCounters~%int16 nRightNonDrivenWheelPulseCounters~%uint8 nDriveMode~%~%# more info end~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisMsg)))
  "Returns full string definition for message of type 'ChassisMsg"
  (cl:format cl:nil "Header header           # packet header~%bool isLessInfo~%uint8 reserved~%# lessInfo start~%#yaw~%float32 VehDynYawRateHSC2~%float32 VehDynYawRateVHSC2~%#shift~%int32 TrShftLvrPos_h1HSC2~%int32 TrShftLvrPosV_h1HSC2~%#spped~%float32 VehSpdAvgDrvnHSC2~%int32 VehSpdAvgDrvnVHSC2~%float32 VehSpdAvgNonDrvnHSC2~%int32 VehSpdAvgNonDrvnVHSC2~%#wheel~%float32 StrgWhlAngHSC2~%int32 StrgWhlAngVHSC2~%# lessInfo end~%~%# more info start~%int16 nCounter~%# INERTIAL~%int64 iTimeStamp~%float64 fLatitude~%float64 fLongitude~%float32 fAltitude~%float32 fAccX~%float32 fAccY~%float32 fAccZ~%float32 fAngRateX~%float32 fAngRateY~%float32 fAngRateZ~%float32 fVelNorth~%float32 fVelWest~%float32 fVelUp~%float32 fHeading~%float32 fPitch~%float32 fRoll~%int8 nNavStatus~%#uint8 nWiperStatus~%#float32 fDrnvelL~%#float32 fNonDrnvelL~%#float32 fDrnvelR~%#float32 fNonDrnvelR~%#float32 dTrailerAngle~%~%# VCU_VEHICLE_INFO~%int64 vTimeStamp~%#float32 fSteeringAngleVel~%float32 fSteeringAngle~%float32 fSpeed~%float32 fYawRate~%float32 fFrontLeftWheelSpeed~%float32 fFrontRightWheelSpeed~%float32 fRearLeftWheelSpeed~%float32 fRearRightWheelSpeed~%uint8 nShifterPosition~%uint8 nLeftDirectionLamp~%uint8 nRightDirectionLamp~%uint8 nMainBeamLamp~%uint8 nDippedBeamLamp~%uint8 nWiperState~%float32 fLateralAccel~%float32 fLongituAccel~%int16 nLeftDrivenWheelPulseCounters~%int16 nRightDrivenWheelPulseCounters~%int16 nLeftNonDrivenWheelPulseCounters~%int16 nRightNonDrivenWheelPulseCounters~%uint8 nDriveMode~%~%# more info end~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     2
     8
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     8
     4
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
     1
     4
     4
     2
     2
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisMsg
    (cl:cons ':header (header msg))
    (cl:cons ':isLessInfo (isLessInfo msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':VehDynYawRateHSC2 (VehDynYawRateHSC2 msg))
    (cl:cons ':VehDynYawRateVHSC2 (VehDynYawRateVHSC2 msg))
    (cl:cons ':TrShftLvrPos_h1HSC2 (TrShftLvrPos_h1HSC2 msg))
    (cl:cons ':TrShftLvrPosV_h1HSC2 (TrShftLvrPosV_h1HSC2 msg))
    (cl:cons ':VehSpdAvgDrvnHSC2 (VehSpdAvgDrvnHSC2 msg))
    (cl:cons ':VehSpdAvgDrvnVHSC2 (VehSpdAvgDrvnVHSC2 msg))
    (cl:cons ':VehSpdAvgNonDrvnHSC2 (VehSpdAvgNonDrvnHSC2 msg))
    (cl:cons ':VehSpdAvgNonDrvnVHSC2 (VehSpdAvgNonDrvnVHSC2 msg))
    (cl:cons ':StrgWhlAngHSC2 (StrgWhlAngHSC2 msg))
    (cl:cons ':StrgWhlAngVHSC2 (StrgWhlAngVHSC2 msg))
    (cl:cons ':nCounter (nCounter msg))
    (cl:cons ':iTimeStamp (iTimeStamp msg))
    (cl:cons ':fLatitude (fLatitude msg))
    (cl:cons ':fLongitude (fLongitude msg))
    (cl:cons ':fAltitude (fAltitude msg))
    (cl:cons ':fAccX (fAccX msg))
    (cl:cons ':fAccY (fAccY msg))
    (cl:cons ':fAccZ (fAccZ msg))
    (cl:cons ':fAngRateX (fAngRateX msg))
    (cl:cons ':fAngRateY (fAngRateY msg))
    (cl:cons ':fAngRateZ (fAngRateZ msg))
    (cl:cons ':fVelNorth (fVelNorth msg))
    (cl:cons ':fVelWest (fVelWest msg))
    (cl:cons ':fVelUp (fVelUp msg))
    (cl:cons ':fHeading (fHeading msg))
    (cl:cons ':fPitch (fPitch msg))
    (cl:cons ':fRoll (fRoll msg))
    (cl:cons ':nNavStatus (nNavStatus msg))
    (cl:cons ':vTimeStamp (vTimeStamp msg))
    (cl:cons ':fSteeringAngle (fSteeringAngle msg))
    (cl:cons ':fSpeed (fSpeed msg))
    (cl:cons ':fYawRate (fYawRate msg))
    (cl:cons ':fFrontLeftWheelSpeed (fFrontLeftWheelSpeed msg))
    (cl:cons ':fFrontRightWheelSpeed (fFrontRightWheelSpeed msg))
    (cl:cons ':fRearLeftWheelSpeed (fRearLeftWheelSpeed msg))
    (cl:cons ':fRearRightWheelSpeed (fRearRightWheelSpeed msg))
    (cl:cons ':nShifterPosition (nShifterPosition msg))
    (cl:cons ':nLeftDirectionLamp (nLeftDirectionLamp msg))
    (cl:cons ':nRightDirectionLamp (nRightDirectionLamp msg))
    (cl:cons ':nMainBeamLamp (nMainBeamLamp msg))
    (cl:cons ':nDippedBeamLamp (nDippedBeamLamp msg))
    (cl:cons ':nWiperState (nWiperState msg))
    (cl:cons ':fLateralAccel (fLateralAccel msg))
    (cl:cons ':fLongituAccel (fLongituAccel msg))
    (cl:cons ':nLeftDrivenWheelPulseCounters (nLeftDrivenWheelPulseCounters msg))
    (cl:cons ':nRightDrivenWheelPulseCounters (nRightDrivenWheelPulseCounters msg))
    (cl:cons ':nLeftNonDrivenWheelPulseCounters (nLeftNonDrivenWheelPulseCounters msg))
    (cl:cons ':nRightNonDrivenWheelPulseCounters (nRightNonDrivenWheelPulseCounters msg))
    (cl:cons ':nDriveMode (nDriveMode msg))
))
