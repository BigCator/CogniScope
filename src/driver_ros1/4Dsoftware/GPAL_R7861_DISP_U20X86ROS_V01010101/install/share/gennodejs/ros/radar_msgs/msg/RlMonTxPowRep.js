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

class RlMonTxPowRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.profIndex = null;
      this.reserved0 = null;
      this.reserved1 = null;
      this.txPowVal = null;
      this.reserved2 = null;
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
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0;
      }
      if (initObj.hasOwnProperty('txPowVal')) {
        this.txPowVal = initObj.txPowVal
      }
      else {
        this.txPowVal = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
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
    // Serializes a message object of type RlMonTxPowRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [profIndex]
    bufferOffset = _serializer.uint8(obj.profIndex, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint16(obj.reserved1, buffer, bufferOffset);
    // Check that the constant length array field [txPowVal] has the right length
    if (obj.txPowVal.length !== 3) {
      throw new Error('Unable to serialize array field txPowVal - length must be 3')
    }
    // Serialize message field [txPowVal]
    bufferOffset = _arraySerializer.int16(obj.txPowVal, buffer, bufferOffset, 3);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint16(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonTxPowRep
    let len;
    let data = new RlMonTxPowRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [profIndex]
    data.profIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [txPowVal]
    data.txPowVal = _arrayDeserializer.int16(buffer, bufferOffset, 3)
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonTxPowRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0d799de826b753746c1db7855f6cc65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16   statusFlags
    uint16   errorCode
    uint8    profIndex
    uint8    reserved0
    uint16   reserved1
    int16[3] txPowVal
    uint16   reserved2
    uint32   timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonTxPowRep(null);
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

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0
    }

    if (msg.txPowVal !== undefined) {
      resolved.txPowVal = msg.txPowVal;
    }
    else {
      resolved.txPowVal = new Array(3).fill(0)
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
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

module.exports = RlMonTxPowRep;
