// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RlMonGpadcIntAnaSigRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.gpadcRef1Val = null;
      this.gpadcRef2Val = null;
      this.reserved = null;
      this.timeStamp = null;
    }
    else {
      if (initObj.hasOwnProperty('statusFlags')) {
        this.statusFlags = initObj.statusFlags
      }
      else {
        this.statusFlags = 0;
      }
      if (initObj.hasOwnProperty('errorCode')) {
        this.errorCode = initObj.errorCode
      }
      else {
        this.errorCode = 0;
      }
      if (initObj.hasOwnProperty('gpadcRef1Val')) {
        this.gpadcRef1Val = initObj.gpadcRef1Val
      }
      else {
        this.gpadcRef1Val = 0;
      }
      if (initObj.hasOwnProperty('gpadcRef2Val')) {
        this.gpadcRef2Val = initObj.gpadcRef2Val
      }
      else {
        this.gpadcRef2Val = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlMonGpadcIntAnaSigRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [gpadcRef1Val]
    bufferOffset = _serializer.int16(obj.gpadcRef1Val, buffer, bufferOffset);
    // Serialize message field [gpadcRef2Val]
    bufferOffset = _serializer.uint16(obj.gpadcRef2Val, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonGpadcIntAnaSigRep
    let len;
    let data = new RlMonGpadcIntAnaSigRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gpadcRef1Val]
    data.gpadcRef1Val = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gpadcRef2Val]
    data.gpadcRef2Val = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonGpadcIntAnaSigRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be0d5f07b3664bc23a4e4aa613f1e08c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 statusFlags
    uint16 errorCode
    int16 gpadcRef1Val
    uint16 gpadcRef2Val
    uint32 reserved
    uint32 timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonGpadcIntAnaSigRep(null);
    if (msg.statusFlags !== undefined) {
      resolved.statusFlags = msg.statusFlags;
    }
    else {
      resolved.statusFlags = 0
    }

    if (msg.errorCode !== undefined) {
      resolved.errorCode = msg.errorCode;
    }
    else {
      resolved.errorCode = 0
    }

    if (msg.gpadcRef1Val !== undefined) {
      resolved.gpadcRef1Val = msg.gpadcRef1Val;
    }
    else {
      resolved.gpadcRef1Val = 0
    }

    if (msg.gpadcRef2Val !== undefined) {
      resolved.gpadcRef2Val = msg.gpadcRef2Val;
    }
    else {
      resolved.gpadcRef2Val = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    return resolved;
    }
};

module.exports = RlMonGpadcIntAnaSigRep;
