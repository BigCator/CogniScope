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

class AlarmStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.alarmNum = null;
      this.alarmCode01 = null;
      this.alarmCode02 = null;
      this.alarmCode03 = null;
      this.alarmCode04 = null;
      this.alarmCode05 = null;
      this.alarmCode06 = null;
      this.alarmCode07 = null;
      this.alarmCode08 = null;
      this.alarmCode09 = null;
      this.alarmCode10 = null;
      this.alarmCode11 = null;
      this.alarmCode12 = null;
      this.alarmCode13 = null;
      this.alarmCode14 = null;
      this.alarmCode15 = null;
      this.alarmCode16 = null;
      this.alarmCode17 = null;
      this.alarmCode18 = null;
      this.alarmCode19 = null;
      this.alarmCode20 = null;
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
      if (initObj.hasOwnProperty('alarmNum')) {
        this.alarmNum = initObj.alarmNum
      }
      else {
        this.alarmNum = 0;
      }
      if (initObj.hasOwnProperty('alarmCode01')) {
        this.alarmCode01 = initObj.alarmCode01
      }
      else {
        this.alarmCode01 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode02')) {
        this.alarmCode02 = initObj.alarmCode02
      }
      else {
        this.alarmCode02 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode03')) {
        this.alarmCode03 = initObj.alarmCode03
      }
      else {
        this.alarmCode03 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode04')) {
        this.alarmCode04 = initObj.alarmCode04
      }
      else {
        this.alarmCode04 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode05')) {
        this.alarmCode05 = initObj.alarmCode05
      }
      else {
        this.alarmCode05 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode06')) {
        this.alarmCode06 = initObj.alarmCode06
      }
      else {
        this.alarmCode06 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode07')) {
        this.alarmCode07 = initObj.alarmCode07
      }
      else {
        this.alarmCode07 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode08')) {
        this.alarmCode08 = initObj.alarmCode08
      }
      else {
        this.alarmCode08 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode09')) {
        this.alarmCode09 = initObj.alarmCode09
      }
      else {
        this.alarmCode09 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode10')) {
        this.alarmCode10 = initObj.alarmCode10
      }
      else {
        this.alarmCode10 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode11')) {
        this.alarmCode11 = initObj.alarmCode11
      }
      else {
        this.alarmCode11 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode12')) {
        this.alarmCode12 = initObj.alarmCode12
      }
      else {
        this.alarmCode12 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode13')) {
        this.alarmCode13 = initObj.alarmCode13
      }
      else {
        this.alarmCode13 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode14')) {
        this.alarmCode14 = initObj.alarmCode14
      }
      else {
        this.alarmCode14 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode15')) {
        this.alarmCode15 = initObj.alarmCode15
      }
      else {
        this.alarmCode15 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode16')) {
        this.alarmCode16 = initObj.alarmCode16
      }
      else {
        this.alarmCode16 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode17')) {
        this.alarmCode17 = initObj.alarmCode17
      }
      else {
        this.alarmCode17 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode18')) {
        this.alarmCode18 = initObj.alarmCode18
      }
      else {
        this.alarmCode18 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode19')) {
        this.alarmCode19 = initObj.alarmCode19
      }
      else {
        this.alarmCode19 = 0;
      }
      if (initObj.hasOwnProperty('alarmCode20')) {
        this.alarmCode20 = initObj.alarmCode20
      }
      else {
        this.alarmCode20 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AlarmStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [alarmNum]
    bufferOffset = _serializer.uint32(obj.alarmNum, buffer, bufferOffset);
    // Serialize message field [alarmCode01]
    bufferOffset = _serializer.uint16(obj.alarmCode01, buffer, bufferOffset);
    // Serialize message field [alarmCode02]
    bufferOffset = _serializer.uint16(obj.alarmCode02, buffer, bufferOffset);
    // Serialize message field [alarmCode03]
    bufferOffset = _serializer.uint16(obj.alarmCode03, buffer, bufferOffset);
    // Serialize message field [alarmCode04]
    bufferOffset = _serializer.uint16(obj.alarmCode04, buffer, bufferOffset);
    // Serialize message field [alarmCode05]
    bufferOffset = _serializer.uint16(obj.alarmCode05, buffer, bufferOffset);
    // Serialize message field [alarmCode06]
    bufferOffset = _serializer.uint16(obj.alarmCode06, buffer, bufferOffset);
    // Serialize message field [alarmCode07]
    bufferOffset = _serializer.uint16(obj.alarmCode07, buffer, bufferOffset);
    // Serialize message field [alarmCode08]
    bufferOffset = _serializer.uint16(obj.alarmCode08, buffer, bufferOffset);
    // Serialize message field [alarmCode09]
    bufferOffset = _serializer.uint16(obj.alarmCode09, buffer, bufferOffset);
    // Serialize message field [alarmCode10]
    bufferOffset = _serializer.uint16(obj.alarmCode10, buffer, bufferOffset);
    // Serialize message field [alarmCode11]
    bufferOffset = _serializer.uint16(obj.alarmCode11, buffer, bufferOffset);
    // Serialize message field [alarmCode12]
    bufferOffset = _serializer.uint16(obj.alarmCode12, buffer, bufferOffset);
    // Serialize message field [alarmCode13]
    bufferOffset = _serializer.uint16(obj.alarmCode13, buffer, bufferOffset);
    // Serialize message field [alarmCode14]
    bufferOffset = _serializer.uint16(obj.alarmCode14, buffer, bufferOffset);
    // Serialize message field [alarmCode15]
    bufferOffset = _serializer.uint16(obj.alarmCode15, buffer, bufferOffset);
    // Serialize message field [alarmCode16]
    bufferOffset = _serializer.uint16(obj.alarmCode16, buffer, bufferOffset);
    // Serialize message field [alarmCode17]
    bufferOffset = _serializer.uint16(obj.alarmCode17, buffer, bufferOffset);
    // Serialize message field [alarmCode18]
    bufferOffset = _serializer.uint16(obj.alarmCode18, buffer, bufferOffset);
    // Serialize message field [alarmCode19]
    bufferOffset = _serializer.uint16(obj.alarmCode19, buffer, bufferOffset);
    // Serialize message field [alarmCode20]
    bufferOffset = _serializer.uint16(obj.alarmCode20, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AlarmStatus
    let len;
    let data = new AlarmStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [alarmNum]
    data.alarmNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [alarmCode01]
    data.alarmCode01 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode02]
    data.alarmCode02 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode03]
    data.alarmCode03 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode04]
    data.alarmCode04 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode05]
    data.alarmCode05 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode06]
    data.alarmCode06 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode07]
    data.alarmCode07 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode08]
    data.alarmCode08 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode09]
    data.alarmCode09 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode10]
    data.alarmCode10 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode11]
    data.alarmCode11 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode12]
    data.alarmCode12 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode13]
    data.alarmCode13 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode14]
    data.alarmCode14 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode15]
    data.alarmCode15 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode16]
    data.alarmCode16 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode17]
    data.alarmCode17 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode18]
    data.alarmCode18 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode19]
    data.alarmCode19 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [alarmCode20]
    data.alarmCode20 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/AlarmStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c014f54c8b482dfb210caece3475030';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header                   # Includes measurement timestamp and coordinate frame.
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AlarmStatus(null);
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

    if (msg.alarmNum !== undefined) {
      resolved.alarmNum = msg.alarmNum;
    }
    else {
      resolved.alarmNum = 0
    }

    if (msg.alarmCode01 !== undefined) {
      resolved.alarmCode01 = msg.alarmCode01;
    }
    else {
      resolved.alarmCode01 = 0
    }

    if (msg.alarmCode02 !== undefined) {
      resolved.alarmCode02 = msg.alarmCode02;
    }
    else {
      resolved.alarmCode02 = 0
    }

    if (msg.alarmCode03 !== undefined) {
      resolved.alarmCode03 = msg.alarmCode03;
    }
    else {
      resolved.alarmCode03 = 0
    }

    if (msg.alarmCode04 !== undefined) {
      resolved.alarmCode04 = msg.alarmCode04;
    }
    else {
      resolved.alarmCode04 = 0
    }

    if (msg.alarmCode05 !== undefined) {
      resolved.alarmCode05 = msg.alarmCode05;
    }
    else {
      resolved.alarmCode05 = 0
    }

    if (msg.alarmCode06 !== undefined) {
      resolved.alarmCode06 = msg.alarmCode06;
    }
    else {
      resolved.alarmCode06 = 0
    }

    if (msg.alarmCode07 !== undefined) {
      resolved.alarmCode07 = msg.alarmCode07;
    }
    else {
      resolved.alarmCode07 = 0
    }

    if (msg.alarmCode08 !== undefined) {
      resolved.alarmCode08 = msg.alarmCode08;
    }
    else {
      resolved.alarmCode08 = 0
    }

    if (msg.alarmCode09 !== undefined) {
      resolved.alarmCode09 = msg.alarmCode09;
    }
    else {
      resolved.alarmCode09 = 0
    }

    if (msg.alarmCode10 !== undefined) {
      resolved.alarmCode10 = msg.alarmCode10;
    }
    else {
      resolved.alarmCode10 = 0
    }

    if (msg.alarmCode11 !== undefined) {
      resolved.alarmCode11 = msg.alarmCode11;
    }
    else {
      resolved.alarmCode11 = 0
    }

    if (msg.alarmCode12 !== undefined) {
      resolved.alarmCode12 = msg.alarmCode12;
    }
    else {
      resolved.alarmCode12 = 0
    }

    if (msg.alarmCode13 !== undefined) {
      resolved.alarmCode13 = msg.alarmCode13;
    }
    else {
      resolved.alarmCode13 = 0
    }

    if (msg.alarmCode14 !== undefined) {
      resolved.alarmCode14 = msg.alarmCode14;
    }
    else {
      resolved.alarmCode14 = 0
    }

    if (msg.alarmCode15 !== undefined) {
      resolved.alarmCode15 = msg.alarmCode15;
    }
    else {
      resolved.alarmCode15 = 0
    }

    if (msg.alarmCode16 !== undefined) {
      resolved.alarmCode16 = msg.alarmCode16;
    }
    else {
      resolved.alarmCode16 = 0
    }

    if (msg.alarmCode17 !== undefined) {
      resolved.alarmCode17 = msg.alarmCode17;
    }
    else {
      resolved.alarmCode17 = 0
    }

    if (msg.alarmCode18 !== undefined) {
      resolved.alarmCode18 = msg.alarmCode18;
    }
    else {
      resolved.alarmCode18 = 0
    }

    if (msg.alarmCode19 !== undefined) {
      resolved.alarmCode19 = msg.alarmCode19;
    }
    else {
      resolved.alarmCode19 = 0
    }

    if (msg.alarmCode20 !== undefined) {
      resolved.alarmCode20 = msg.alarmCode20;
    }
    else {
      resolved.alarmCode20 = 0
    }

    return resolved;
    }
};

module.exports = AlarmStatus;
