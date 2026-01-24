// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChassisMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.isLessInfo = null;
      this.reserved = null;
      this.VehDynYawRateHSC2 = null;
      this.VehDynYawRateVHSC2 = null;
      this.TrShftLvrPos_h1HSC2 = null;
      this.TrShftLvrPosV_h1HSC2 = null;
      this.VehSpdAvgDrvnHSC2 = null;
      this.VehSpdAvgDrvnVHSC2 = null;
      this.VehSpdAvgNonDrvnHSC2 = null;
      this.VehSpdAvgNonDrvnVHSC2 = null;
      this.StrgWhlAngHSC2 = null;
      this.StrgWhlAngVHSC2 = null;
      this.nCounter = null;
      this.iTimeStamp = null;
      this.fLatitude = null;
      this.fLongitude = null;
      this.fAltitude = null;
      this.fAccX = null;
      this.fAccY = null;
      this.fAccZ = null;
      this.fAngRateX = null;
      this.fAngRateY = null;
      this.fAngRateZ = null;
      this.fVelNorth = null;
      this.fVelWest = null;
      this.fVelUp = null;
      this.fHeading = null;
      this.fPitch = null;
      this.fRoll = null;
      this.nNavStatus = null;
      this.vTimeStamp = null;
      this.fSteeringAngle = null;
      this.fSpeed = null;
      this.fYawRate = null;
      this.fFrontLeftWheelSpeed = null;
      this.fFrontRightWheelSpeed = null;
      this.fRearLeftWheelSpeed = null;
      this.fRearRightWheelSpeed = null;
      this.nShifterPosition = null;
      this.nLeftDirectionLamp = null;
      this.nRightDirectionLamp = null;
      this.nMainBeamLamp = null;
      this.nDippedBeamLamp = null;
      this.nWiperState = null;
      this.fLateralAccel = null;
      this.fLongituAccel = null;
      this.nLeftDrivenWheelPulseCounters = null;
      this.nRightDrivenWheelPulseCounters = null;
      this.nLeftNonDrivenWheelPulseCounters = null;
      this.nRightNonDrivenWheelPulseCounters = null;
      this.nDriveMode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('isLessInfo')) {
        this.isLessInfo = initObj.isLessInfo
      }
      else {
        this.isLessInfo = false;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('VehDynYawRateHSC2')) {
        this.VehDynYawRateHSC2 = initObj.VehDynYawRateHSC2
      }
      else {
        this.VehDynYawRateHSC2 = 0.0;
      }
      if (initObj.hasOwnProperty('VehDynYawRateVHSC2')) {
        this.VehDynYawRateVHSC2 = initObj.VehDynYawRateVHSC2
      }
      else {
        this.VehDynYawRateVHSC2 = 0.0;
      }
      if (initObj.hasOwnProperty('TrShftLvrPos_h1HSC2')) {
        this.TrShftLvrPos_h1HSC2 = initObj.TrShftLvrPos_h1HSC2
      }
      else {
        this.TrShftLvrPos_h1HSC2 = 0;
      }
      if (initObj.hasOwnProperty('TrShftLvrPosV_h1HSC2')) {
        this.TrShftLvrPosV_h1HSC2 = initObj.TrShftLvrPosV_h1HSC2
      }
      else {
        this.TrShftLvrPosV_h1HSC2 = 0;
      }
      if (initObj.hasOwnProperty('VehSpdAvgDrvnHSC2')) {
        this.VehSpdAvgDrvnHSC2 = initObj.VehSpdAvgDrvnHSC2
      }
      else {
        this.VehSpdAvgDrvnHSC2 = 0.0;
      }
      if (initObj.hasOwnProperty('VehSpdAvgDrvnVHSC2')) {
        this.VehSpdAvgDrvnVHSC2 = initObj.VehSpdAvgDrvnVHSC2
      }
      else {
        this.VehSpdAvgDrvnVHSC2 = 0;
      }
      if (initObj.hasOwnProperty('VehSpdAvgNonDrvnHSC2')) {
        this.VehSpdAvgNonDrvnHSC2 = initObj.VehSpdAvgNonDrvnHSC2
      }
      else {
        this.VehSpdAvgNonDrvnHSC2 = 0.0;
      }
      if (initObj.hasOwnProperty('VehSpdAvgNonDrvnVHSC2')) {
        this.VehSpdAvgNonDrvnVHSC2 = initObj.VehSpdAvgNonDrvnVHSC2
      }
      else {
        this.VehSpdAvgNonDrvnVHSC2 = 0;
      }
      if (initObj.hasOwnProperty('StrgWhlAngHSC2')) {
        this.StrgWhlAngHSC2 = initObj.StrgWhlAngHSC2
      }
      else {
        this.StrgWhlAngHSC2 = 0.0;
      }
      if (initObj.hasOwnProperty('StrgWhlAngVHSC2')) {
        this.StrgWhlAngVHSC2 = initObj.StrgWhlAngVHSC2
      }
      else {
        this.StrgWhlAngVHSC2 = 0;
      }
      if (initObj.hasOwnProperty('nCounter')) {
        this.nCounter = initObj.nCounter
      }
      else {
        this.nCounter = 0;
      }
      if (initObj.hasOwnProperty('iTimeStamp')) {
        this.iTimeStamp = initObj.iTimeStamp
      }
      else {
        this.iTimeStamp = 0;
      }
      if (initObj.hasOwnProperty('fLatitude')) {
        this.fLatitude = initObj.fLatitude
      }
      else {
        this.fLatitude = 0.0;
      }
      if (initObj.hasOwnProperty('fLongitude')) {
        this.fLongitude = initObj.fLongitude
      }
      else {
        this.fLongitude = 0.0;
      }
      if (initObj.hasOwnProperty('fAltitude')) {
        this.fAltitude = initObj.fAltitude
      }
      else {
        this.fAltitude = 0.0;
      }
      if (initObj.hasOwnProperty('fAccX')) {
        this.fAccX = initObj.fAccX
      }
      else {
        this.fAccX = 0.0;
      }
      if (initObj.hasOwnProperty('fAccY')) {
        this.fAccY = initObj.fAccY
      }
      else {
        this.fAccY = 0.0;
      }
      if (initObj.hasOwnProperty('fAccZ')) {
        this.fAccZ = initObj.fAccZ
      }
      else {
        this.fAccZ = 0.0;
      }
      if (initObj.hasOwnProperty('fAngRateX')) {
        this.fAngRateX = initObj.fAngRateX
      }
      else {
        this.fAngRateX = 0.0;
      }
      if (initObj.hasOwnProperty('fAngRateY')) {
        this.fAngRateY = initObj.fAngRateY
      }
      else {
        this.fAngRateY = 0.0;
      }
      if (initObj.hasOwnProperty('fAngRateZ')) {
        this.fAngRateZ = initObj.fAngRateZ
      }
      else {
        this.fAngRateZ = 0.0;
      }
      if (initObj.hasOwnProperty('fVelNorth')) {
        this.fVelNorth = initObj.fVelNorth
      }
      else {
        this.fVelNorth = 0.0;
      }
      if (initObj.hasOwnProperty('fVelWest')) {
        this.fVelWest = initObj.fVelWest
      }
      else {
        this.fVelWest = 0.0;
      }
      if (initObj.hasOwnProperty('fVelUp')) {
        this.fVelUp = initObj.fVelUp
      }
      else {
        this.fVelUp = 0.0;
      }
      if (initObj.hasOwnProperty('fHeading')) {
        this.fHeading = initObj.fHeading
      }
      else {
        this.fHeading = 0.0;
      }
      if (initObj.hasOwnProperty('fPitch')) {
        this.fPitch = initObj.fPitch
      }
      else {
        this.fPitch = 0.0;
      }
      if (initObj.hasOwnProperty('fRoll')) {
        this.fRoll = initObj.fRoll
      }
      else {
        this.fRoll = 0.0;
      }
      if (initObj.hasOwnProperty('nNavStatus')) {
        this.nNavStatus = initObj.nNavStatus
      }
      else {
        this.nNavStatus = 0;
      }
      if (initObj.hasOwnProperty('vTimeStamp')) {
        this.vTimeStamp = initObj.vTimeStamp
      }
      else {
        this.vTimeStamp = 0;
      }
      if (initObj.hasOwnProperty('fSteeringAngle')) {
        this.fSteeringAngle = initObj.fSteeringAngle
      }
      else {
        this.fSteeringAngle = 0.0;
      }
      if (initObj.hasOwnProperty('fSpeed')) {
        this.fSpeed = initObj.fSpeed
      }
      else {
        this.fSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('fYawRate')) {
        this.fYawRate = initObj.fYawRate
      }
      else {
        this.fYawRate = 0.0;
      }
      if (initObj.hasOwnProperty('fFrontLeftWheelSpeed')) {
        this.fFrontLeftWheelSpeed = initObj.fFrontLeftWheelSpeed
      }
      else {
        this.fFrontLeftWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('fFrontRightWheelSpeed')) {
        this.fFrontRightWheelSpeed = initObj.fFrontRightWheelSpeed
      }
      else {
        this.fFrontRightWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('fRearLeftWheelSpeed')) {
        this.fRearLeftWheelSpeed = initObj.fRearLeftWheelSpeed
      }
      else {
        this.fRearLeftWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('fRearRightWheelSpeed')) {
        this.fRearRightWheelSpeed = initObj.fRearRightWheelSpeed
      }
      else {
        this.fRearRightWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('nShifterPosition')) {
        this.nShifterPosition = initObj.nShifterPosition
      }
      else {
        this.nShifterPosition = 0;
      }
      if (initObj.hasOwnProperty('nLeftDirectionLamp')) {
        this.nLeftDirectionLamp = initObj.nLeftDirectionLamp
      }
      else {
        this.nLeftDirectionLamp = 0;
      }
      if (initObj.hasOwnProperty('nRightDirectionLamp')) {
        this.nRightDirectionLamp = initObj.nRightDirectionLamp
      }
      else {
        this.nRightDirectionLamp = 0;
      }
      if (initObj.hasOwnProperty('nMainBeamLamp')) {
        this.nMainBeamLamp = initObj.nMainBeamLamp
      }
      else {
        this.nMainBeamLamp = 0;
      }
      if (initObj.hasOwnProperty('nDippedBeamLamp')) {
        this.nDippedBeamLamp = initObj.nDippedBeamLamp
      }
      else {
        this.nDippedBeamLamp = 0;
      }
      if (initObj.hasOwnProperty('nWiperState')) {
        this.nWiperState = initObj.nWiperState
      }
      else {
        this.nWiperState = 0;
      }
      if (initObj.hasOwnProperty('fLateralAccel')) {
        this.fLateralAccel = initObj.fLateralAccel
      }
      else {
        this.fLateralAccel = 0.0;
      }
      if (initObj.hasOwnProperty('fLongituAccel')) {
        this.fLongituAccel = initObj.fLongituAccel
      }
      else {
        this.fLongituAccel = 0.0;
      }
      if (initObj.hasOwnProperty('nLeftDrivenWheelPulseCounters')) {
        this.nLeftDrivenWheelPulseCounters = initObj.nLeftDrivenWheelPulseCounters
      }
      else {
        this.nLeftDrivenWheelPulseCounters = 0;
      }
      if (initObj.hasOwnProperty('nRightDrivenWheelPulseCounters')) {
        this.nRightDrivenWheelPulseCounters = initObj.nRightDrivenWheelPulseCounters
      }
      else {
        this.nRightDrivenWheelPulseCounters = 0;
      }
      if (initObj.hasOwnProperty('nLeftNonDrivenWheelPulseCounters')) {
        this.nLeftNonDrivenWheelPulseCounters = initObj.nLeftNonDrivenWheelPulseCounters
      }
      else {
        this.nLeftNonDrivenWheelPulseCounters = 0;
      }
      if (initObj.hasOwnProperty('nRightNonDrivenWheelPulseCounters')) {
        this.nRightNonDrivenWheelPulseCounters = initObj.nRightNonDrivenWheelPulseCounters
      }
      else {
        this.nRightNonDrivenWheelPulseCounters = 0;
      }
      if (initObj.hasOwnProperty('nDriveMode')) {
        this.nDriveMode = initObj.nDriveMode
      }
      else {
        this.nDriveMode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [isLessInfo]
    bufferOffset = _serializer.bool(obj.isLessInfo, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    // Serialize message field [VehDynYawRateHSC2]
    bufferOffset = _serializer.float32(obj.VehDynYawRateHSC2, buffer, bufferOffset);
    // Serialize message field [VehDynYawRateVHSC2]
    bufferOffset = _serializer.float32(obj.VehDynYawRateVHSC2, buffer, bufferOffset);
    // Serialize message field [TrShftLvrPos_h1HSC2]
    bufferOffset = _serializer.int32(obj.TrShftLvrPos_h1HSC2, buffer, bufferOffset);
    // Serialize message field [TrShftLvrPosV_h1HSC2]
    bufferOffset = _serializer.int32(obj.TrShftLvrPosV_h1HSC2, buffer, bufferOffset);
    // Serialize message field [VehSpdAvgDrvnHSC2]
    bufferOffset = _serializer.float32(obj.VehSpdAvgDrvnHSC2, buffer, bufferOffset);
    // Serialize message field [VehSpdAvgDrvnVHSC2]
    bufferOffset = _serializer.int32(obj.VehSpdAvgDrvnVHSC2, buffer, bufferOffset);
    // Serialize message field [VehSpdAvgNonDrvnHSC2]
    bufferOffset = _serializer.float32(obj.VehSpdAvgNonDrvnHSC2, buffer, bufferOffset);
    // Serialize message field [VehSpdAvgNonDrvnVHSC2]
    bufferOffset = _serializer.int32(obj.VehSpdAvgNonDrvnVHSC2, buffer, bufferOffset);
    // Serialize message field [StrgWhlAngHSC2]
    bufferOffset = _serializer.float32(obj.StrgWhlAngHSC2, buffer, bufferOffset);
    // Serialize message field [StrgWhlAngVHSC2]
    bufferOffset = _serializer.int32(obj.StrgWhlAngVHSC2, buffer, bufferOffset);
    // Serialize message field [nCounter]
    bufferOffset = _serializer.int16(obj.nCounter, buffer, bufferOffset);
    // Serialize message field [iTimeStamp]
    bufferOffset = _serializer.int64(obj.iTimeStamp, buffer, bufferOffset);
    // Serialize message field [fLatitude]
    bufferOffset = _serializer.float64(obj.fLatitude, buffer, bufferOffset);
    // Serialize message field [fLongitude]
    bufferOffset = _serializer.float64(obj.fLongitude, buffer, bufferOffset);
    // Serialize message field [fAltitude]
    bufferOffset = _serializer.float32(obj.fAltitude, buffer, bufferOffset);
    // Serialize message field [fAccX]
    bufferOffset = _serializer.float32(obj.fAccX, buffer, bufferOffset);
    // Serialize message field [fAccY]
    bufferOffset = _serializer.float32(obj.fAccY, buffer, bufferOffset);
    // Serialize message field [fAccZ]
    bufferOffset = _serializer.float32(obj.fAccZ, buffer, bufferOffset);
    // Serialize message field [fAngRateX]
    bufferOffset = _serializer.float32(obj.fAngRateX, buffer, bufferOffset);
    // Serialize message field [fAngRateY]
    bufferOffset = _serializer.float32(obj.fAngRateY, buffer, bufferOffset);
    // Serialize message field [fAngRateZ]
    bufferOffset = _serializer.float32(obj.fAngRateZ, buffer, bufferOffset);
    // Serialize message field [fVelNorth]
    bufferOffset = _serializer.float32(obj.fVelNorth, buffer, bufferOffset);
    // Serialize message field [fVelWest]
    bufferOffset = _serializer.float32(obj.fVelWest, buffer, bufferOffset);
    // Serialize message field [fVelUp]
    bufferOffset = _serializer.float32(obj.fVelUp, buffer, bufferOffset);
    // Serialize message field [fHeading]
    bufferOffset = _serializer.float32(obj.fHeading, buffer, bufferOffset);
    // Serialize message field [fPitch]
    bufferOffset = _serializer.float32(obj.fPitch, buffer, bufferOffset);
    // Serialize message field [fRoll]
    bufferOffset = _serializer.float32(obj.fRoll, buffer, bufferOffset);
    // Serialize message field [nNavStatus]
    bufferOffset = _serializer.int8(obj.nNavStatus, buffer, bufferOffset);
    // Serialize message field [vTimeStamp]
    bufferOffset = _serializer.int64(obj.vTimeStamp, buffer, bufferOffset);
    // Serialize message field [fSteeringAngle]
    bufferOffset = _serializer.float32(obj.fSteeringAngle, buffer, bufferOffset);
    // Serialize message field [fSpeed]
    bufferOffset = _serializer.float32(obj.fSpeed, buffer, bufferOffset);
    // Serialize message field [fYawRate]
    bufferOffset = _serializer.float32(obj.fYawRate, buffer, bufferOffset);
    // Serialize message field [fFrontLeftWheelSpeed]
    bufferOffset = _serializer.float32(obj.fFrontLeftWheelSpeed, buffer, bufferOffset);
    // Serialize message field [fFrontRightWheelSpeed]
    bufferOffset = _serializer.float32(obj.fFrontRightWheelSpeed, buffer, bufferOffset);
    // Serialize message field [fRearLeftWheelSpeed]
    bufferOffset = _serializer.float32(obj.fRearLeftWheelSpeed, buffer, bufferOffset);
    // Serialize message field [fRearRightWheelSpeed]
    bufferOffset = _serializer.float32(obj.fRearRightWheelSpeed, buffer, bufferOffset);
    // Serialize message field [nShifterPosition]
    bufferOffset = _serializer.uint8(obj.nShifterPosition, buffer, bufferOffset);
    // Serialize message field [nLeftDirectionLamp]
    bufferOffset = _serializer.uint8(obj.nLeftDirectionLamp, buffer, bufferOffset);
    // Serialize message field [nRightDirectionLamp]
    bufferOffset = _serializer.uint8(obj.nRightDirectionLamp, buffer, bufferOffset);
    // Serialize message field [nMainBeamLamp]
    bufferOffset = _serializer.uint8(obj.nMainBeamLamp, buffer, bufferOffset);
    // Serialize message field [nDippedBeamLamp]
    bufferOffset = _serializer.uint8(obj.nDippedBeamLamp, buffer, bufferOffset);
    // Serialize message field [nWiperState]
    bufferOffset = _serializer.uint8(obj.nWiperState, buffer, bufferOffset);
    // Serialize message field [fLateralAccel]
    bufferOffset = _serializer.float32(obj.fLateralAccel, buffer, bufferOffset);
    // Serialize message field [fLongituAccel]
    bufferOffset = _serializer.float32(obj.fLongituAccel, buffer, bufferOffset);
    // Serialize message field [nLeftDrivenWheelPulseCounters]
    bufferOffset = _serializer.int16(obj.nLeftDrivenWheelPulseCounters, buffer, bufferOffset);
    // Serialize message field [nRightDrivenWheelPulseCounters]
    bufferOffset = _serializer.int16(obj.nRightDrivenWheelPulseCounters, buffer, bufferOffset);
    // Serialize message field [nLeftNonDrivenWheelPulseCounters]
    bufferOffset = _serializer.int16(obj.nLeftNonDrivenWheelPulseCounters, buffer, bufferOffset);
    // Serialize message field [nRightNonDrivenWheelPulseCounters]
    bufferOffset = _serializer.int16(obj.nRightNonDrivenWheelPulseCounters, buffer, bufferOffset);
    // Serialize message field [nDriveMode]
    bufferOffset = _serializer.uint8(obj.nDriveMode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisMsg
    let len;
    let data = new ChassisMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [isLessInfo]
    data.isLessInfo = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VehDynYawRateHSC2]
    data.VehDynYawRateHSC2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VehDynYawRateVHSC2]
    data.VehDynYawRateVHSC2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TrShftLvrPos_h1HSC2]
    data.TrShftLvrPos_h1HSC2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [TrShftLvrPosV_h1HSC2]
    data.TrShftLvrPosV_h1HSC2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [VehSpdAvgDrvnHSC2]
    data.VehSpdAvgDrvnHSC2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VehSpdAvgDrvnVHSC2]
    data.VehSpdAvgDrvnVHSC2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [VehSpdAvgNonDrvnHSC2]
    data.VehSpdAvgNonDrvnHSC2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VehSpdAvgNonDrvnVHSC2]
    data.VehSpdAvgNonDrvnVHSC2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [StrgWhlAngHSC2]
    data.StrgWhlAngHSC2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [StrgWhlAngVHSC2]
    data.StrgWhlAngVHSC2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nCounter]
    data.nCounter = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [iTimeStamp]
    data.iTimeStamp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fLatitude]
    data.fLatitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fLongitude]
    data.fLongitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fAltitude]
    data.fAltitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fAccX]
    data.fAccX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fAccY]
    data.fAccY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fAccZ]
    data.fAccZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fAngRateX]
    data.fAngRateX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fAngRateY]
    data.fAngRateY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fAngRateZ]
    data.fAngRateZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fVelNorth]
    data.fVelNorth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fVelWest]
    data.fVelWest = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fVelUp]
    data.fVelUp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fHeading]
    data.fHeading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fPitch]
    data.fPitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fRoll]
    data.fRoll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nNavStatus]
    data.nNavStatus = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [vTimeStamp]
    data.vTimeStamp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fSteeringAngle]
    data.fSteeringAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fSpeed]
    data.fSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fYawRate]
    data.fYawRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fFrontLeftWheelSpeed]
    data.fFrontLeftWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fFrontRightWheelSpeed]
    data.fFrontRightWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fRearLeftWheelSpeed]
    data.fRearLeftWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fRearRightWheelSpeed]
    data.fRearRightWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nShifterPosition]
    data.nShifterPosition = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nLeftDirectionLamp]
    data.nLeftDirectionLamp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nRightDirectionLamp]
    data.nRightDirectionLamp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nMainBeamLamp]
    data.nMainBeamLamp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nDippedBeamLamp]
    data.nDippedBeamLamp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nWiperState]
    data.nWiperState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fLateralAccel]
    data.fLateralAccel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fLongituAccel]
    data.fLongituAccel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nLeftDrivenWheelPulseCounters]
    data.nLeftDrivenWheelPulseCounters = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [nRightDrivenWheelPulseCounters]
    data.nRightDrivenWheelPulseCounters = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [nLeftNonDrivenWheelPulseCounters]
    data.nLeftNonDrivenWheelPulseCounters = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [nRightNonDrivenWheelPulseCounters]
    data.nRightNonDrivenWheelPulseCounters = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [nDriveMode]
    data.nDriveMode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 180;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/ChassisMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '178cdfa29e24c2bd952c01d011c7be7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header           # packet header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.isLessInfo !== undefined) {
      resolved.isLessInfo = msg.isLessInfo;
    }
    else {
      resolved.isLessInfo = false
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.VehDynYawRateHSC2 !== undefined) {
      resolved.VehDynYawRateHSC2 = msg.VehDynYawRateHSC2;
    }
    else {
      resolved.VehDynYawRateHSC2 = 0.0
    }

    if (msg.VehDynYawRateVHSC2 !== undefined) {
      resolved.VehDynYawRateVHSC2 = msg.VehDynYawRateVHSC2;
    }
    else {
      resolved.VehDynYawRateVHSC2 = 0.0
    }

    if (msg.TrShftLvrPos_h1HSC2 !== undefined) {
      resolved.TrShftLvrPos_h1HSC2 = msg.TrShftLvrPos_h1HSC2;
    }
    else {
      resolved.TrShftLvrPos_h1HSC2 = 0
    }

    if (msg.TrShftLvrPosV_h1HSC2 !== undefined) {
      resolved.TrShftLvrPosV_h1HSC2 = msg.TrShftLvrPosV_h1HSC2;
    }
    else {
      resolved.TrShftLvrPosV_h1HSC2 = 0
    }

    if (msg.VehSpdAvgDrvnHSC2 !== undefined) {
      resolved.VehSpdAvgDrvnHSC2 = msg.VehSpdAvgDrvnHSC2;
    }
    else {
      resolved.VehSpdAvgDrvnHSC2 = 0.0
    }

    if (msg.VehSpdAvgDrvnVHSC2 !== undefined) {
      resolved.VehSpdAvgDrvnVHSC2 = msg.VehSpdAvgDrvnVHSC2;
    }
    else {
      resolved.VehSpdAvgDrvnVHSC2 = 0
    }

    if (msg.VehSpdAvgNonDrvnHSC2 !== undefined) {
      resolved.VehSpdAvgNonDrvnHSC2 = msg.VehSpdAvgNonDrvnHSC2;
    }
    else {
      resolved.VehSpdAvgNonDrvnHSC2 = 0.0
    }

    if (msg.VehSpdAvgNonDrvnVHSC2 !== undefined) {
      resolved.VehSpdAvgNonDrvnVHSC2 = msg.VehSpdAvgNonDrvnVHSC2;
    }
    else {
      resolved.VehSpdAvgNonDrvnVHSC2 = 0
    }

    if (msg.StrgWhlAngHSC2 !== undefined) {
      resolved.StrgWhlAngHSC2 = msg.StrgWhlAngHSC2;
    }
    else {
      resolved.StrgWhlAngHSC2 = 0.0
    }

    if (msg.StrgWhlAngVHSC2 !== undefined) {
      resolved.StrgWhlAngVHSC2 = msg.StrgWhlAngVHSC2;
    }
    else {
      resolved.StrgWhlAngVHSC2 = 0
    }

    if (msg.nCounter !== undefined) {
      resolved.nCounter = msg.nCounter;
    }
    else {
      resolved.nCounter = 0
    }

    if (msg.iTimeStamp !== undefined) {
      resolved.iTimeStamp = msg.iTimeStamp;
    }
    else {
      resolved.iTimeStamp = 0
    }

    if (msg.fLatitude !== undefined) {
      resolved.fLatitude = msg.fLatitude;
    }
    else {
      resolved.fLatitude = 0.0
    }

    if (msg.fLongitude !== undefined) {
      resolved.fLongitude = msg.fLongitude;
    }
    else {
      resolved.fLongitude = 0.0
    }

    if (msg.fAltitude !== undefined) {
      resolved.fAltitude = msg.fAltitude;
    }
    else {
      resolved.fAltitude = 0.0
    }

    if (msg.fAccX !== undefined) {
      resolved.fAccX = msg.fAccX;
    }
    else {
      resolved.fAccX = 0.0
    }

    if (msg.fAccY !== undefined) {
      resolved.fAccY = msg.fAccY;
    }
    else {
      resolved.fAccY = 0.0
    }

    if (msg.fAccZ !== undefined) {
      resolved.fAccZ = msg.fAccZ;
    }
    else {
      resolved.fAccZ = 0.0
    }

    if (msg.fAngRateX !== undefined) {
      resolved.fAngRateX = msg.fAngRateX;
    }
    else {
      resolved.fAngRateX = 0.0
    }

    if (msg.fAngRateY !== undefined) {
      resolved.fAngRateY = msg.fAngRateY;
    }
    else {
      resolved.fAngRateY = 0.0
    }

    if (msg.fAngRateZ !== undefined) {
      resolved.fAngRateZ = msg.fAngRateZ;
    }
    else {
      resolved.fAngRateZ = 0.0
    }

    if (msg.fVelNorth !== undefined) {
      resolved.fVelNorth = msg.fVelNorth;
    }
    else {
      resolved.fVelNorth = 0.0
    }

    if (msg.fVelWest !== undefined) {
      resolved.fVelWest = msg.fVelWest;
    }
    else {
      resolved.fVelWest = 0.0
    }

    if (msg.fVelUp !== undefined) {
      resolved.fVelUp = msg.fVelUp;
    }
    else {
      resolved.fVelUp = 0.0
    }

    if (msg.fHeading !== undefined) {
      resolved.fHeading = msg.fHeading;
    }
    else {
      resolved.fHeading = 0.0
    }

    if (msg.fPitch !== undefined) {
      resolved.fPitch = msg.fPitch;
    }
    else {
      resolved.fPitch = 0.0
    }

    if (msg.fRoll !== undefined) {
      resolved.fRoll = msg.fRoll;
    }
    else {
      resolved.fRoll = 0.0
    }

    if (msg.nNavStatus !== undefined) {
      resolved.nNavStatus = msg.nNavStatus;
    }
    else {
      resolved.nNavStatus = 0
    }

    if (msg.vTimeStamp !== undefined) {
      resolved.vTimeStamp = msg.vTimeStamp;
    }
    else {
      resolved.vTimeStamp = 0
    }

    if (msg.fSteeringAngle !== undefined) {
      resolved.fSteeringAngle = msg.fSteeringAngle;
    }
    else {
      resolved.fSteeringAngle = 0.0
    }

    if (msg.fSpeed !== undefined) {
      resolved.fSpeed = msg.fSpeed;
    }
    else {
      resolved.fSpeed = 0.0
    }

    if (msg.fYawRate !== undefined) {
      resolved.fYawRate = msg.fYawRate;
    }
    else {
      resolved.fYawRate = 0.0
    }

    if (msg.fFrontLeftWheelSpeed !== undefined) {
      resolved.fFrontLeftWheelSpeed = msg.fFrontLeftWheelSpeed;
    }
    else {
      resolved.fFrontLeftWheelSpeed = 0.0
    }

    if (msg.fFrontRightWheelSpeed !== undefined) {
      resolved.fFrontRightWheelSpeed = msg.fFrontRightWheelSpeed;
    }
    else {
      resolved.fFrontRightWheelSpeed = 0.0
    }

    if (msg.fRearLeftWheelSpeed !== undefined) {
      resolved.fRearLeftWheelSpeed = msg.fRearLeftWheelSpeed;
    }
    else {
      resolved.fRearLeftWheelSpeed = 0.0
    }

    if (msg.fRearRightWheelSpeed !== undefined) {
      resolved.fRearRightWheelSpeed = msg.fRearRightWheelSpeed;
    }
    else {
      resolved.fRearRightWheelSpeed = 0.0
    }

    if (msg.nShifterPosition !== undefined) {
      resolved.nShifterPosition = msg.nShifterPosition;
    }
    else {
      resolved.nShifterPosition = 0
    }

    if (msg.nLeftDirectionLamp !== undefined) {
      resolved.nLeftDirectionLamp = msg.nLeftDirectionLamp;
    }
    else {
      resolved.nLeftDirectionLamp = 0
    }

    if (msg.nRightDirectionLamp !== undefined) {
      resolved.nRightDirectionLamp = msg.nRightDirectionLamp;
    }
    else {
      resolved.nRightDirectionLamp = 0
    }

    if (msg.nMainBeamLamp !== undefined) {
      resolved.nMainBeamLamp = msg.nMainBeamLamp;
    }
    else {
      resolved.nMainBeamLamp = 0
    }

    if (msg.nDippedBeamLamp !== undefined) {
      resolved.nDippedBeamLamp = msg.nDippedBeamLamp;
    }
    else {
      resolved.nDippedBeamLamp = 0
    }

    if (msg.nWiperState !== undefined) {
      resolved.nWiperState = msg.nWiperState;
    }
    else {
      resolved.nWiperState = 0
    }

    if (msg.fLateralAccel !== undefined) {
      resolved.fLateralAccel = msg.fLateralAccel;
    }
    else {
      resolved.fLateralAccel = 0.0
    }

    if (msg.fLongituAccel !== undefined) {
      resolved.fLongituAccel = msg.fLongituAccel;
    }
    else {
      resolved.fLongituAccel = 0.0
    }

    if (msg.nLeftDrivenWheelPulseCounters !== undefined) {
      resolved.nLeftDrivenWheelPulseCounters = msg.nLeftDrivenWheelPulseCounters;
    }
    else {
      resolved.nLeftDrivenWheelPulseCounters = 0
    }

    if (msg.nRightDrivenWheelPulseCounters !== undefined) {
      resolved.nRightDrivenWheelPulseCounters = msg.nRightDrivenWheelPulseCounters;
    }
    else {
      resolved.nRightDrivenWheelPulseCounters = 0
    }

    if (msg.nLeftNonDrivenWheelPulseCounters !== undefined) {
      resolved.nLeftNonDrivenWheelPulseCounters = msg.nLeftNonDrivenWheelPulseCounters;
    }
    else {
      resolved.nLeftNonDrivenWheelPulseCounters = 0
    }

    if (msg.nRightNonDrivenWheelPulseCounters !== undefined) {
      resolved.nRightNonDrivenWheelPulseCounters = msg.nRightNonDrivenWheelPulseCounters;
    }
    else {
      resolved.nRightNonDrivenWheelPulseCounters = 0
    }

    if (msg.nDriveMode !== undefined) {
      resolved.nDriveMode = msg.nDriveMode;
    }
    else {
      resolved.nDriveMode = 0
    }

    return resolved;
    }
};

module.exports = ChassisMsg;
