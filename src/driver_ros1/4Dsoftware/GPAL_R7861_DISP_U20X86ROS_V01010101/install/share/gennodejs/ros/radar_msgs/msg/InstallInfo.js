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

class InstallInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.sensorPositionInvalidFlags = null;
      this.sensorXPosition = null;
      this.sensorYPosition = null;
      this.sensorZPosition = null;
      this.sensorRollAngle = null;
      this.sensorPitchAngle = null;
      this.sensorYawAngle = null;
      this.azimuthCorrection = null;
      this.elevationCorrection = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radarID')) {
        this.radarID = initObj.radarID
      }
      else {
        this.radarID = 0;
      }
      if (initObj.hasOwnProperty('frameCnt')) {
        this.frameCnt = initObj.frameCnt
      }
      else {
        this.frameCnt = 0;
      }
      if (initObj.hasOwnProperty('sensorPositionInvalidFlags')) {
        this.sensorPositionInvalidFlags = initObj.sensorPositionInvalidFlags
      }
      else {
        this.sensorPositionInvalidFlags = 0;
      }
      if (initObj.hasOwnProperty('sensorXPosition')) {
        this.sensorXPosition = initObj.sensorXPosition
      }
      else {
        this.sensorXPosition = 0.0;
      }
      if (initObj.hasOwnProperty('sensorYPosition')) {
        this.sensorYPosition = initObj.sensorYPosition
      }
      else {
        this.sensorYPosition = 0.0;
      }
      if (initObj.hasOwnProperty('sensorZPosition')) {
        this.sensorZPosition = initObj.sensorZPosition
      }
      else {
        this.sensorZPosition = 0.0;
      }
      if (initObj.hasOwnProperty('sensorRollAngle')) {
        this.sensorRollAngle = initObj.sensorRollAngle
      }
      else {
        this.sensorRollAngle = 0.0;
      }
      if (initObj.hasOwnProperty('sensorPitchAngle')) {
        this.sensorPitchAngle = initObj.sensorPitchAngle
      }
      else {
        this.sensorPitchAngle = 0.0;
      }
      if (initObj.hasOwnProperty('sensorYawAngle')) {
        this.sensorYawAngle = initObj.sensorYawAngle
      }
      else {
        this.sensorYawAngle = 0.0;
      }
      if (initObj.hasOwnProperty('azimuthCorrection')) {
        this.azimuthCorrection = initObj.azimuthCorrection
      }
      else {
        this.azimuthCorrection = 0.0;
      }
      if (initObj.hasOwnProperty('elevationCorrection')) {
        this.elevationCorrection = initObj.elevationCorrection
      }
      else {
        this.elevationCorrection = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InstallInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [sensorPositionInvalidFlags]
    bufferOffset = _serializer.uint16(obj.sensorPositionInvalidFlags, buffer, bufferOffset);
    // Serialize message field [sensorXPosition]
    bufferOffset = _serializer.float32(obj.sensorXPosition, buffer, bufferOffset);
    // Serialize message field [sensorYPosition]
    bufferOffset = _serializer.float32(obj.sensorYPosition, buffer, bufferOffset);
    // Serialize message field [sensorZPosition]
    bufferOffset = _serializer.float32(obj.sensorZPosition, buffer, bufferOffset);
    // Serialize message field [sensorRollAngle]
    bufferOffset = _serializer.float32(obj.sensorRollAngle, buffer, bufferOffset);
    // Serialize message field [sensorPitchAngle]
    bufferOffset = _serializer.float32(obj.sensorPitchAngle, buffer, bufferOffset);
    // Serialize message field [sensorYawAngle]
    bufferOffset = _serializer.float32(obj.sensorYawAngle, buffer, bufferOffset);
    // Serialize message field [azimuthCorrection]
    bufferOffset = _serializer.float32(obj.azimuthCorrection, buffer, bufferOffset);
    // Serialize message field [elevationCorrection]
    bufferOffset = _serializer.float32(obj.elevationCorrection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InstallInfo
    let len;
    let data = new InstallInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sensorPositionInvalidFlags]
    data.sensorPositionInvalidFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sensorXPosition]
    data.sensorXPosition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sensorYPosition]
    data.sensorYPosition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sensorZPosition]
    data.sensorZPosition = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sensorRollAngle]
    data.sensorRollAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sensorPitchAngle]
    data.sensorPitchAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sensorYawAngle]
    data.sensorYawAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuthCorrection]
    data.azimuthCorrection = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevationCorrection]
    data.elevationCorrection = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/InstallInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c93964ac0c3cc3e143adcb42d14164d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header  header                   # Includes measurement timestamp and coordinate frame.
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InstallInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radarID !== undefined) {
      resolved.radarID = msg.radarID;
    }
    else {
      resolved.radarID = 0
    }

    if (msg.frameCnt !== undefined) {
      resolved.frameCnt = msg.frameCnt;
    }
    else {
      resolved.frameCnt = 0
    }

    if (msg.sensorPositionInvalidFlags !== undefined) {
      resolved.sensorPositionInvalidFlags = msg.sensorPositionInvalidFlags;
    }
    else {
      resolved.sensorPositionInvalidFlags = 0
    }

    if (msg.sensorXPosition !== undefined) {
      resolved.sensorXPosition = msg.sensorXPosition;
    }
    else {
      resolved.sensorXPosition = 0.0
    }

    if (msg.sensorYPosition !== undefined) {
      resolved.sensorYPosition = msg.sensorYPosition;
    }
    else {
      resolved.sensorYPosition = 0.0
    }

    if (msg.sensorZPosition !== undefined) {
      resolved.sensorZPosition = msg.sensorZPosition;
    }
    else {
      resolved.sensorZPosition = 0.0
    }

    if (msg.sensorRollAngle !== undefined) {
      resolved.sensorRollAngle = msg.sensorRollAngle;
    }
    else {
      resolved.sensorRollAngle = 0.0
    }

    if (msg.sensorPitchAngle !== undefined) {
      resolved.sensorPitchAngle = msg.sensorPitchAngle;
    }
    else {
      resolved.sensorPitchAngle = 0.0
    }

    if (msg.sensorYawAngle !== undefined) {
      resolved.sensorYawAngle = msg.sensorYawAngle;
    }
    else {
      resolved.sensorYawAngle = 0.0
    }

    if (msg.azimuthCorrection !== undefined) {
      resolved.azimuthCorrection = msg.azimuthCorrection;
    }
    else {
      resolved.azimuthCorrection = 0.0
    }

    if (msg.elevationCorrection !== undefined) {
      resolved.elevationCorrection = msg.elevationCorrection;
    }
    else {
      resolved.elevationCorrection = 0.0
    }

    return resolved;
    }
};

module.exports = InstallInfo;
