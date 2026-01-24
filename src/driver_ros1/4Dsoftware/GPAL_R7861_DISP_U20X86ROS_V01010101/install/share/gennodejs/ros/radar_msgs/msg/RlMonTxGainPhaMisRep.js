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

class RlMonTxGainPhaMisRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.profIndex = null;
      this.noisePower00 = null;
      this.noisePower01 = null;
      this.noisePower02 = null;
      this.txGainVal = null;
      this.txPhaVal = null;
      this.noisePower10 = null;
      this.noisePower11 = null;
      this.noisePower12 = null;
      this.noisePower20 = null;
      this.noisePower21 = null;
      this.noisePower22 = null;
      this.reserved0 = null;
      this.reserved1 = null;
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
      if (initObj.hasOwnProperty('noisePower00')) {
        this.noisePower00 = initObj.noisePower00
      }
      else {
        this.noisePower00 = 0;
      }
      if (initObj.hasOwnProperty('noisePower01')) {
        this.noisePower01 = initObj.noisePower01
      }
      else {
        this.noisePower01 = 0;
      }
      if (initObj.hasOwnProperty('noisePower02')) {
        this.noisePower02 = initObj.noisePower02
      }
      else {
        this.noisePower02 = 0;
      }
      if (initObj.hasOwnProperty('txGainVal')) {
        this.txGainVal = initObj.txGainVal
      }
      else {
        this.txGainVal = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('txPhaVal')) {
        this.txPhaVal = initObj.txPhaVal
      }
      else {
        this.txPhaVal = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('noisePower10')) {
        this.noisePower10 = initObj.noisePower10
      }
      else {
        this.noisePower10 = 0;
      }
      if (initObj.hasOwnProperty('noisePower11')) {
        this.noisePower11 = initObj.noisePower11
      }
      else {
        this.noisePower11 = 0;
      }
      if (initObj.hasOwnProperty('noisePower12')) {
        this.noisePower12 = initObj.noisePower12
      }
      else {
        this.noisePower12 = 0;
      }
      if (initObj.hasOwnProperty('noisePower20')) {
        this.noisePower20 = initObj.noisePower20
      }
      else {
        this.noisePower20 = 0;
      }
      if (initObj.hasOwnProperty('noisePower21')) {
        this.noisePower21 = initObj.noisePower21
      }
      else {
        this.noisePower21 = 0;
      }
      if (initObj.hasOwnProperty('noisePower22')) {
        this.noisePower22 = initObj.noisePower22
      }
      else {
        this.noisePower22 = 0;
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
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlMonTxGainPhaMisRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [profIndex]
    bufferOffset = _serializer.uint8(obj.profIndex, buffer, bufferOffset);
    // Serialize message field [noisePower00]
    bufferOffset = _serializer.uint8(obj.noisePower00, buffer, bufferOffset);
    // Serialize message field [noisePower01]
    bufferOffset = _serializer.uint8(obj.noisePower01, buffer, bufferOffset);
    // Serialize message field [noisePower02]
    bufferOffset = _serializer.uint8(obj.noisePower02, buffer, bufferOffset);
    // Check that the constant length array field [txGainVal] has the right length
    if (obj.txGainVal.length !== 9) {
      throw new Error('Unable to serialize array field txGainVal - length must be 9')
    }
    // Serialize message field [txGainVal]
    bufferOffset = _arraySerializer.int16(obj.txGainVal, buffer, bufferOffset, 9);
    // Check that the constant length array field [txPhaVal] has the right length
    if (obj.txPhaVal.length !== 9) {
      throw new Error('Unable to serialize array field txPhaVal - length must be 9')
    }
    // Serialize message field [txPhaVal]
    bufferOffset = _arraySerializer.uint16(obj.txPhaVal, buffer, bufferOffset, 9);
    // Serialize message field [noisePower10]
    bufferOffset = _serializer.uint8(obj.noisePower10, buffer, bufferOffset);
    // Serialize message field [noisePower11]
    bufferOffset = _serializer.uint8(obj.noisePower11, buffer, bufferOffset);
    // Serialize message field [noisePower12]
    bufferOffset = _serializer.uint8(obj.noisePower12, buffer, bufferOffset);
    // Serialize message field [noisePower20]
    bufferOffset = _serializer.uint8(obj.noisePower20, buffer, bufferOffset);
    // Serialize message field [noisePower21]
    bufferOffset = _serializer.uint8(obj.noisePower21, buffer, bufferOffset);
    // Serialize message field [noisePower22]
    bufferOffset = _serializer.uint8(obj.noisePower22, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint8(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonTxGainPhaMisRep
    let len;
    let data = new RlMonTxGainPhaMisRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [profIndex]
    data.profIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower00]
    data.noisePower00 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower01]
    data.noisePower01 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower02]
    data.noisePower02 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [txGainVal]
    data.txGainVal = _arrayDeserializer.int16(buffer, bufferOffset, 9)
    // Deserialize message field [txPhaVal]
    data.txPhaVal = _arrayDeserializer.uint16(buffer, bufferOffset, 9)
    // Deserialize message field [noisePower10]
    data.noisePower10 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower11]
    data.noisePower11 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower12]
    data.noisePower12 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower20]
    data.noisePower20 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower21]
    data.noisePower21 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noisePower22]
    data.noisePower22 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonTxGainPhaMisRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f27f6ab37b6066abd149c07bb608a4d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16      statusFlags
    uint16      errorCode
    uint8       profIndex
    uint8       noisePower00
    uint8       noisePower01
    uint8       noisePower02
    int16[9]    txGainVal
    uint16[9]   txPhaVal
    uint8       noisePower10
    uint8       noisePower11
    uint8       noisePower12
    uint8       noisePower20
    uint8       noisePower21
    uint8       noisePower22
    uint8       reserved0
    uint8       reserved1
    uint32      timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonTxGainPhaMisRep(null);
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

    if (msg.noisePower00 !== undefined) {
      resolved.noisePower00 = msg.noisePower00;
    }
    else {
      resolved.noisePower00 = 0
    }

    if (msg.noisePower01 !== undefined) {
      resolved.noisePower01 = msg.noisePower01;
    }
    else {
      resolved.noisePower01 = 0
    }

    if (msg.noisePower02 !== undefined) {
      resolved.noisePower02 = msg.noisePower02;
    }
    else {
      resolved.noisePower02 = 0
    }

    if (msg.txGainVal !== undefined) {
      resolved.txGainVal = msg.txGainVal;
    }
    else {
      resolved.txGainVal = new Array(9).fill(0)
    }

    if (msg.txPhaVal !== undefined) {
      resolved.txPhaVal = msg.txPhaVal;
    }
    else {
      resolved.txPhaVal = new Array(9).fill(0)
    }

    if (msg.noisePower10 !== undefined) {
      resolved.noisePower10 = msg.noisePower10;
    }
    else {
      resolved.noisePower10 = 0
    }

    if (msg.noisePower11 !== undefined) {
      resolved.noisePower11 = msg.noisePower11;
    }
    else {
      resolved.noisePower11 = 0
    }

    if (msg.noisePower12 !== undefined) {
      resolved.noisePower12 = msg.noisePower12;
    }
    else {
      resolved.noisePower12 = 0
    }

    if (msg.noisePower20 !== undefined) {
      resolved.noisePower20 = msg.noisePower20;
    }
    else {
      resolved.noisePower20 = 0
    }

    if (msg.noisePower21 !== undefined) {
      resolved.noisePower21 = msg.noisePower21;
    }
    else {
      resolved.noisePower21 = 0
    }

    if (msg.noisePower22 !== undefined) {
      resolved.noisePower22 = msg.noisePower22;
    }
    else {
      resolved.noisePower22 = 0
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

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    return resolved;
    }
};

module.exports = RlMonTxGainPhaMisRep;
