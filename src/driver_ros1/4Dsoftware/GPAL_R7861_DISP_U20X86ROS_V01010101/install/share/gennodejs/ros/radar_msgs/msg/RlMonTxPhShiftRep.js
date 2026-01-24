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

class RlMonTxPhShiftRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.profIndex = null;
      this.reserved0 = null;
      this.reserved1 = null;
      this.phaseShifterMonVal1 = null;
      this.phaseShifterMonVal2 = null;
      this.phaseShifterMonVal3 = null;
      this.phaseShifterMonVal4 = null;
      this.txPsAmplitudeVal1 = null;
      this.txPsAmplitudeVal2 = null;
      this.txPsAmplitudeVal3 = null;
      this.txPsAmplitudeVal4 = null;
      this.txPsNoiseVal1 = null;
      this.txPsNoiseVal2 = null;
      this.txPsNoiseVal3 = null;
      this.txPsNoiseVal4 = null;
      this.timeStamp = null;
      this.reserved2 = null;
      this.reserved3 = null;
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
      if (initObj.hasOwnProperty('phaseShifterMonVal1')) {
        this.phaseShifterMonVal1 = initObj.phaseShifterMonVal1
      }
      else {
        this.phaseShifterMonVal1 = 0;
      }
      if (initObj.hasOwnProperty('phaseShifterMonVal2')) {
        this.phaseShifterMonVal2 = initObj.phaseShifterMonVal2
      }
      else {
        this.phaseShifterMonVal2 = 0;
      }
      if (initObj.hasOwnProperty('phaseShifterMonVal3')) {
        this.phaseShifterMonVal3 = initObj.phaseShifterMonVal3
      }
      else {
        this.phaseShifterMonVal3 = 0;
      }
      if (initObj.hasOwnProperty('phaseShifterMonVal4')) {
        this.phaseShifterMonVal4 = initObj.phaseShifterMonVal4
      }
      else {
        this.phaseShifterMonVal4 = 0;
      }
      if (initObj.hasOwnProperty('txPsAmplitudeVal1')) {
        this.txPsAmplitudeVal1 = initObj.txPsAmplitudeVal1
      }
      else {
        this.txPsAmplitudeVal1 = 0;
      }
      if (initObj.hasOwnProperty('txPsAmplitudeVal2')) {
        this.txPsAmplitudeVal2 = initObj.txPsAmplitudeVal2
      }
      else {
        this.txPsAmplitudeVal2 = 0;
      }
      if (initObj.hasOwnProperty('txPsAmplitudeVal3')) {
        this.txPsAmplitudeVal3 = initObj.txPsAmplitudeVal3
      }
      else {
        this.txPsAmplitudeVal3 = 0;
      }
      if (initObj.hasOwnProperty('txPsAmplitudeVal4')) {
        this.txPsAmplitudeVal4 = initObj.txPsAmplitudeVal4
      }
      else {
        this.txPsAmplitudeVal4 = 0;
      }
      if (initObj.hasOwnProperty('txPsNoiseVal1')) {
        this.txPsNoiseVal1 = initObj.txPsNoiseVal1
      }
      else {
        this.txPsNoiseVal1 = 0;
      }
      if (initObj.hasOwnProperty('txPsNoiseVal2')) {
        this.txPsNoiseVal2 = initObj.txPsNoiseVal2
      }
      else {
        this.txPsNoiseVal2 = 0;
      }
      if (initObj.hasOwnProperty('txPsNoiseVal3')) {
        this.txPsNoiseVal3 = initObj.txPsNoiseVal3
      }
      else {
        this.txPsNoiseVal3 = 0;
      }
      if (initObj.hasOwnProperty('txPsNoiseVal4')) {
        this.txPsNoiseVal4 = initObj.txPsNoiseVal4
      }
      else {
        this.txPsNoiseVal4 = 0;
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
      if (initObj.hasOwnProperty('reserved3')) {
        this.reserved3 = initObj.reserved3
      }
      else {
        this.reserved3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlMonTxPhShiftRep
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
    // Serialize message field [phaseShifterMonVal1]
    bufferOffset = _serializer.uint16(obj.phaseShifterMonVal1, buffer, bufferOffset);
    // Serialize message field [phaseShifterMonVal2]
    bufferOffset = _serializer.uint16(obj.phaseShifterMonVal2, buffer, bufferOffset);
    // Serialize message field [phaseShifterMonVal3]
    bufferOffset = _serializer.uint16(obj.phaseShifterMonVal3, buffer, bufferOffset);
    // Serialize message field [phaseShifterMonVal4]
    bufferOffset = _serializer.uint16(obj.phaseShifterMonVal4, buffer, bufferOffset);
    // Serialize message field [txPsAmplitudeVal1]
    bufferOffset = _serializer.int16(obj.txPsAmplitudeVal1, buffer, bufferOffset);
    // Serialize message field [txPsAmplitudeVal2]
    bufferOffset = _serializer.int16(obj.txPsAmplitudeVal2, buffer, bufferOffset);
    // Serialize message field [txPsAmplitudeVal3]
    bufferOffset = _serializer.int16(obj.txPsAmplitudeVal3, buffer, bufferOffset);
    // Serialize message field [txPsAmplitudeVal4]
    bufferOffset = _serializer.int16(obj.txPsAmplitudeVal4, buffer, bufferOffset);
    // Serialize message field [txPsNoiseVal1]
    bufferOffset = _serializer.int8(obj.txPsNoiseVal1, buffer, bufferOffset);
    // Serialize message field [txPsNoiseVal2]
    bufferOffset = _serializer.int8(obj.txPsNoiseVal2, buffer, bufferOffset);
    // Serialize message field [txPsNoiseVal3]
    bufferOffset = _serializer.int8(obj.txPsNoiseVal3, buffer, bufferOffset);
    // Serialize message field [txPsNoiseVal4]
    bufferOffset = _serializer.int8(obj.txPsNoiseVal4, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint32(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [reserved3]
    bufferOffset = _serializer.uint32(obj.reserved3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonTxPhShiftRep
    let len;
    let data = new RlMonTxPhShiftRep(null);
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
    // Deserialize message field [phaseShifterMonVal1]
    data.phaseShifterMonVal1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [phaseShifterMonVal2]
    data.phaseShifterMonVal2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [phaseShifterMonVal3]
    data.phaseShifterMonVal3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [phaseShifterMonVal4]
    data.phaseShifterMonVal4 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [txPsAmplitudeVal1]
    data.txPsAmplitudeVal1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [txPsAmplitudeVal2]
    data.txPsAmplitudeVal2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [txPsAmplitudeVal3]
    data.txPsAmplitudeVal3 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [txPsAmplitudeVal4]
    data.txPsAmplitudeVal4 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [txPsNoiseVal1]
    data.txPsNoiseVal1 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [txPsNoiseVal2]
    data.txPsNoiseVal2 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [txPsNoiseVal3]
    data.txPsNoiseVal3 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [txPsNoiseVal4]
    data.txPsNoiseVal4 = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved3]
    data.reserved3 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonTxPhShiftRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c35e9ef88c30d781e09f2fb7d35ab829';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 statusFlags
    uint16 errorCode
    uint8 profIndex
    uint8 reserved0
    uint16 reserved1
    uint16 phaseShifterMonVal1
    uint16 phaseShifterMonVal2
    uint16 phaseShifterMonVal3
    uint16 phaseShifterMonVal4
    int16 txPsAmplitudeVal1
    int16 txPsAmplitudeVal2
    int16 txPsAmplitudeVal3
    int16 txPsAmplitudeVal4
    int8 txPsNoiseVal1
    int8 txPsNoiseVal2
    int8 txPsNoiseVal3
    int8 txPsNoiseVal4
    uint32 timeStamp
    uint32 reserved2
    uint32 reserved3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonTxPhShiftRep(null);
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

    if (msg.phaseShifterMonVal1 !== undefined) {
      resolved.phaseShifterMonVal1 = msg.phaseShifterMonVal1;
    }
    else {
      resolved.phaseShifterMonVal1 = 0
    }

    if (msg.phaseShifterMonVal2 !== undefined) {
      resolved.phaseShifterMonVal2 = msg.phaseShifterMonVal2;
    }
    else {
      resolved.phaseShifterMonVal2 = 0
    }

    if (msg.phaseShifterMonVal3 !== undefined) {
      resolved.phaseShifterMonVal3 = msg.phaseShifterMonVal3;
    }
    else {
      resolved.phaseShifterMonVal3 = 0
    }

    if (msg.phaseShifterMonVal4 !== undefined) {
      resolved.phaseShifterMonVal4 = msg.phaseShifterMonVal4;
    }
    else {
      resolved.phaseShifterMonVal4 = 0
    }

    if (msg.txPsAmplitudeVal1 !== undefined) {
      resolved.txPsAmplitudeVal1 = msg.txPsAmplitudeVal1;
    }
    else {
      resolved.txPsAmplitudeVal1 = 0
    }

    if (msg.txPsAmplitudeVal2 !== undefined) {
      resolved.txPsAmplitudeVal2 = msg.txPsAmplitudeVal2;
    }
    else {
      resolved.txPsAmplitudeVal2 = 0
    }

    if (msg.txPsAmplitudeVal3 !== undefined) {
      resolved.txPsAmplitudeVal3 = msg.txPsAmplitudeVal3;
    }
    else {
      resolved.txPsAmplitudeVal3 = 0
    }

    if (msg.txPsAmplitudeVal4 !== undefined) {
      resolved.txPsAmplitudeVal4 = msg.txPsAmplitudeVal4;
    }
    else {
      resolved.txPsAmplitudeVal4 = 0
    }

    if (msg.txPsNoiseVal1 !== undefined) {
      resolved.txPsNoiseVal1 = msg.txPsNoiseVal1;
    }
    else {
      resolved.txPsNoiseVal1 = 0
    }

    if (msg.txPsNoiseVal2 !== undefined) {
      resolved.txPsNoiseVal2 = msg.txPsNoiseVal2;
    }
    else {
      resolved.txPsNoiseVal2 = 0
    }

    if (msg.txPsNoiseVal3 !== undefined) {
      resolved.txPsNoiseVal3 = msg.txPsNoiseVal3;
    }
    else {
      resolved.txPsNoiseVal3 = 0
    }

    if (msg.txPsNoiseVal4 !== undefined) {
      resolved.txPsNoiseVal4 = msg.txPsNoiseVal4;
    }
    else {
      resolved.txPsNoiseVal4 = 0
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    if (msg.reserved3 !== undefined) {
      resolved.reserved3 = msg.reserved3;
    }
    else {
      resolved.reserved3 = 0
    }

    return resolved;
    }
};

module.exports = RlMonTxPhShiftRep;
