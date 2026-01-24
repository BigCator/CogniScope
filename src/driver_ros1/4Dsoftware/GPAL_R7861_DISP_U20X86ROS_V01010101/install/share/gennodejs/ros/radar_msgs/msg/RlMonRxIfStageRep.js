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

class RlMonRxIfStageRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.profIndex = null;
      this.reserved0 = null;
      this.lpfCutOffBandEdgeDroopValRx0 = null;
      this.hpfCutOffFreqEr = null;
      this.lpfCutOffStopBandAtten = null;
      this.rxIfaGainErVal = null;
      this.ifGainExp = null;
      this.reserved2 = null;
      this.lpfCutOffBandEdgeDroopValRx = null;
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
      if (initObj.hasOwnProperty('lpfCutOffBandEdgeDroopValRx0')) {
        this.lpfCutOffBandEdgeDroopValRx0 = initObj.lpfCutOffBandEdgeDroopValRx0
      }
      else {
        this.lpfCutOffBandEdgeDroopValRx0 = 0;
      }
      if (initObj.hasOwnProperty('hpfCutOffFreqEr')) {
        this.hpfCutOffFreqEr = initObj.hpfCutOffFreqEr
      }
      else {
        this.hpfCutOffFreqEr = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('lpfCutOffStopBandAtten')) {
        this.lpfCutOffStopBandAtten = initObj.lpfCutOffStopBandAtten
      }
      else {
        this.lpfCutOffStopBandAtten = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('rxIfaGainErVal')) {
        this.rxIfaGainErVal = initObj.rxIfaGainErVal
      }
      else {
        this.rxIfaGainErVal = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('ifGainExp')) {
        this.ifGainExp = initObj.ifGainExp
      }
      else {
        this.ifGainExp = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
      if (initObj.hasOwnProperty('lpfCutOffBandEdgeDroopValRx')) {
        this.lpfCutOffBandEdgeDroopValRx = initObj.lpfCutOffBandEdgeDroopValRx
      }
      else {
        this.lpfCutOffBandEdgeDroopValRx = new Array(6).fill(0);
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
    // Serializes a message object of type RlMonRxIfStageRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [profIndex]
    bufferOffset = _serializer.uint8(obj.profIndex, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [lpfCutOffBandEdgeDroopValRx0]
    bufferOffset = _serializer.int16(obj.lpfCutOffBandEdgeDroopValRx0, buffer, bufferOffset);
    // Check that the constant length array field [hpfCutOffFreqEr] has the right length
    if (obj.hpfCutOffFreqEr.length !== 8) {
      throw new Error('Unable to serialize array field hpfCutOffFreqEr - length must be 8')
    }
    // Serialize message field [hpfCutOffFreqEr]
    bufferOffset = _arraySerializer.int8(obj.hpfCutOffFreqEr, buffer, bufferOffset, 8);
    // Check that the constant length array field [lpfCutOffStopBandAtten] has the right length
    if (obj.lpfCutOffStopBandAtten.length !== 8) {
      throw new Error('Unable to serialize array field lpfCutOffStopBandAtten - length must be 8')
    }
    // Serialize message field [lpfCutOffStopBandAtten]
    bufferOffset = _arraySerializer.int8(obj.lpfCutOffStopBandAtten, buffer, bufferOffset, 8);
    // Check that the constant length array field [rxIfaGainErVal] has the right length
    if (obj.rxIfaGainErVal.length !== 8) {
      throw new Error('Unable to serialize array field rxIfaGainErVal - length must be 8')
    }
    // Serialize message field [rxIfaGainErVal]
    bufferOffset = _arraySerializer.int8(obj.rxIfaGainErVal, buffer, bufferOffset, 8);
    // Serialize message field [ifGainExp]
    bufferOffset = _serializer.int8(obj.ifGainExp, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint8(obj.reserved2, buffer, bufferOffset);
    // Check that the constant length array field [lpfCutOffBandEdgeDroopValRx] has the right length
    if (obj.lpfCutOffBandEdgeDroopValRx.length !== 6) {
      throw new Error('Unable to serialize array field lpfCutOffBandEdgeDroopValRx - length must be 6')
    }
    // Serialize message field [lpfCutOffBandEdgeDroopValRx]
    bufferOffset = _arraySerializer.int8(obj.lpfCutOffBandEdgeDroopValRx, buffer, bufferOffset, 6);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonRxIfStageRep
    let len;
    let data = new RlMonRxIfStageRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [profIndex]
    data.profIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lpfCutOffBandEdgeDroopValRx0]
    data.lpfCutOffBandEdgeDroopValRx0 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [hpfCutOffFreqEr]
    data.hpfCutOffFreqEr = _arrayDeserializer.int8(buffer, bufferOffset, 8)
    // Deserialize message field [lpfCutOffStopBandAtten]
    data.lpfCutOffStopBandAtten = _arrayDeserializer.int8(buffer, bufferOffset, 8)
    // Deserialize message field [rxIfaGainErVal]
    data.rxIfaGainErVal = _arrayDeserializer.int8(buffer, bufferOffset, 8)
    // Deserialize message field [ifGainExp]
    data.ifGainExp = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lpfCutOffBandEdgeDroopValRx]
    data.lpfCutOffBandEdgeDroopValRx = _arrayDeserializer.int8(buffer, bufferOffset, 6)
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonRxIfStageRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5939de1fd7d085daf586727b8763f7ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16      statusFlags
    uint16      errorCode
    uint8       profIndex
    uint8       reserved0
    int16       lpfCutOffBandEdgeDroopValRx0
    int8[8]     hpfCutOffFreqEr
    int8[8]     lpfCutOffStopBandAtten
    int8[8]     rxIfaGainErVal
    int8        ifGainExp
    uint8       reserved2
    int8[6]     lpfCutOffBandEdgeDroopValRx
    uint32      timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonRxIfStageRep(null);
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

    if (msg.lpfCutOffBandEdgeDroopValRx0 !== undefined) {
      resolved.lpfCutOffBandEdgeDroopValRx0 = msg.lpfCutOffBandEdgeDroopValRx0;
    }
    else {
      resolved.lpfCutOffBandEdgeDroopValRx0 = 0
    }

    if (msg.hpfCutOffFreqEr !== undefined) {
      resolved.hpfCutOffFreqEr = msg.hpfCutOffFreqEr;
    }
    else {
      resolved.hpfCutOffFreqEr = new Array(8).fill(0)
    }

    if (msg.lpfCutOffStopBandAtten !== undefined) {
      resolved.lpfCutOffStopBandAtten = msg.lpfCutOffStopBandAtten;
    }
    else {
      resolved.lpfCutOffStopBandAtten = new Array(8).fill(0)
    }

    if (msg.rxIfaGainErVal !== undefined) {
      resolved.rxIfaGainErVal = msg.rxIfaGainErVal;
    }
    else {
      resolved.rxIfaGainErVal = new Array(8).fill(0)
    }

    if (msg.ifGainExp !== undefined) {
      resolved.ifGainExp = msg.ifGainExp;
    }
    else {
      resolved.ifGainExp = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    if (msg.lpfCutOffBandEdgeDroopValRx !== undefined) {
      resolved.lpfCutOffBandEdgeDroopValRx = msg.lpfCutOffBandEdgeDroopValRx;
    }
    else {
      resolved.lpfCutOffBandEdgeDroopValRx = new Array(6).fill(0)
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

module.exports = RlMonRxIfStageRep;
