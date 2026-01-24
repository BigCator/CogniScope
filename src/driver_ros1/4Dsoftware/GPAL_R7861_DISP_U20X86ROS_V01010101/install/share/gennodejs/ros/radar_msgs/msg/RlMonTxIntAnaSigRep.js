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

class RlMonTxIntAnaSigRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.profIndex = null;
      this.reserved0 = null;
      this.phShiftDacIdeltaMin = null;
      this.phShiftDacQdeltaMin = null;
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
      if (initObj.hasOwnProperty('profIndex')) {
        this.profIndex = initObj.profIndex
      }
      else {
        this.profIndex = 0;
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = 0;
      }
      if (initObj.hasOwnProperty('phShiftDacIdeltaMin')) {
        this.phShiftDacIdeltaMin = initObj.phShiftDacIdeltaMin
      }
      else {
        this.phShiftDacIdeltaMin = 0;
      }
      if (initObj.hasOwnProperty('phShiftDacQdeltaMin')) {
        this.phShiftDacQdeltaMin = initObj.phShiftDacQdeltaMin
      }
      else {
        this.phShiftDacQdeltaMin = 0;
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
    // Serializes a message object of type RlMonTxIntAnaSigRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [profIndex]
    bufferOffset = _serializer.uint8(obj.profIndex, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [phShiftDacIdeltaMin]
    bufferOffset = _serializer.uint8(obj.phShiftDacIdeltaMin, buffer, bufferOffset);
    // Serialize message field [phShiftDacQdeltaMin]
    bufferOffset = _serializer.uint8(obj.phShiftDacQdeltaMin, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonTxIntAnaSigRep
    let len;
    let data = new RlMonTxIntAnaSigRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [profIndex]
    data.profIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [phShiftDacIdeltaMin]
    data.phShiftDacIdeltaMin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [phShiftDacQdeltaMin]
    data.phShiftDacQdeltaMin = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonTxIntAnaSigRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9475d3a28bdcb35b92a3be2cb7462b1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 statusFlags
    uint16 errorCode
    uint8 profIndex
    uint8 reserved0
    uint8 phShiftDacIdeltaMin
    uint8 phShiftDacQdeltaMin
    uint32 timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonTxIntAnaSigRep(null);
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

    if (msg.profIndex !== undefined) {
      resolved.profIndex = msg.profIndex;
    }
    else {
      resolved.profIndex = 0
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = 0
    }

    if (msg.phShiftDacIdeltaMin !== undefined) {
      resolved.phShiftDacIdeltaMin = msg.phShiftDacIdeltaMin;
    }
    else {
      resolved.phShiftDacIdeltaMin = 0
    }

    if (msg.phShiftDacQdeltaMin !== undefined) {
      resolved.phShiftDacQdeltaMin = msg.phShiftDacQdeltaMin;
    }
    else {
      resolved.phShiftDacQdeltaMin = 0
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

module.exports = RlMonTxIntAnaSigRep;
