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

class RlMonPllConVoltRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.pllContVoltVal = null;
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
      if (initObj.hasOwnProperty('pllContVoltVal')) {
        this.pllContVoltVal = initObj.pllContVoltVal
      }
      else {
        this.pllContVoltVal = new Array(8).fill(0);
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
    // Serializes a message object of type RlMonPllConVoltRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Check that the constant length array field [pllContVoltVal] has the right length
    if (obj.pllContVoltVal.length !== 8) {
      throw new Error('Unable to serialize array field pllContVoltVal - length must be 8')
    }
    // Serialize message field [pllContVoltVal]
    bufferOffset = _arraySerializer.int16(obj.pllContVoltVal, buffer, bufferOffset, 8);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonPllConVoltRep
    let len;
    let data = new RlMonPllConVoltRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pllContVoltVal]
    data.pllContVoltVal = _arrayDeserializer.int16(buffer, bufferOffset, 8)
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonPllConVoltRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bec4aa001519a1f3a0bc45f947d062f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16      statusFlags
    uint16      errorCode
    int16[8]    pllContVoltVal
    uint32      reserved
    uint32      timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonPllConVoltRep(null);
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

    if (msg.pllContVoltVal !== undefined) {
      resolved.pllContVoltVal = msg.pllContVoltVal;
    }
    else {
      resolved.pllContVoltVal = new Array(8).fill(0)
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

module.exports = RlMonPllConVoltRep;
