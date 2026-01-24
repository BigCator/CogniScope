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

class RlMonSynthFreqNonLiveRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.profIndex0 = null;
      this.reserved0 = null;
      this.reserved1 = null;
      this.maxFreqErVal0 = null;
      this.freqFailCnt0 = null;
      this.maxFreqFailTime0 = null;
      this.reserved2 = null;
      this.profIndex1 = null;
      this.reserved3 = null;
      this.reserved4 = null;
      this.maxFreqErVal1 = null;
      this.freqFailCnt1 = null;
      this.maxFreqFailTime1 = null;
      this.reserved5 = null;
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
      if (initObj.hasOwnProperty('profIndex0')) {
        this.profIndex0 = initObj.profIndex0
      }
      else {
        this.profIndex0 = 0;
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
      if (initObj.hasOwnProperty('maxFreqErVal0')) {
        this.maxFreqErVal0 = initObj.maxFreqErVal0
      }
      else {
        this.maxFreqErVal0 = 0;
      }
      if (initObj.hasOwnProperty('freqFailCnt0')) {
        this.freqFailCnt0 = initObj.freqFailCnt0
      }
      else {
        this.freqFailCnt0 = 0;
      }
      if (initObj.hasOwnProperty('maxFreqFailTime0')) {
        this.maxFreqFailTime0 = initObj.maxFreqFailTime0
      }
      else {
        this.maxFreqFailTime0 = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
      if (initObj.hasOwnProperty('profIndex1')) {
        this.profIndex1 = initObj.profIndex1
      }
      else {
        this.profIndex1 = 0;
      }
      if (initObj.hasOwnProperty('reserved3')) {
        this.reserved3 = initObj.reserved3
      }
      else {
        this.reserved3 = 0;
      }
      if (initObj.hasOwnProperty('reserved4')) {
        this.reserved4 = initObj.reserved4
      }
      else {
        this.reserved4 = 0;
      }
      if (initObj.hasOwnProperty('maxFreqErVal1')) {
        this.maxFreqErVal1 = initObj.maxFreqErVal1
      }
      else {
        this.maxFreqErVal1 = 0;
      }
      if (initObj.hasOwnProperty('freqFailCnt1')) {
        this.freqFailCnt1 = initObj.freqFailCnt1
      }
      else {
        this.freqFailCnt1 = 0;
      }
      if (initObj.hasOwnProperty('maxFreqFailTime1')) {
        this.maxFreqFailTime1 = initObj.maxFreqFailTime1
      }
      else {
        this.maxFreqFailTime1 = 0;
      }
      if (initObj.hasOwnProperty('reserved5')) {
        this.reserved5 = initObj.reserved5
      }
      else {
        this.reserved5 = 0;
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
    // Serializes a message object of type RlMonSynthFreqNonLiveRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [profIndex0]
    bufferOffset = _serializer.uint8(obj.profIndex0, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint16(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [maxFreqErVal0]
    bufferOffset = _serializer.int32(obj.maxFreqErVal0, buffer, bufferOffset);
    // Serialize message field [freqFailCnt0]
    bufferOffset = _serializer.uint32(obj.freqFailCnt0, buffer, bufferOffset);
    // Serialize message field [maxFreqFailTime0]
    bufferOffset = _serializer.uint32(obj.maxFreqFailTime0, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint32(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [profIndex1]
    bufferOffset = _serializer.uint8(obj.profIndex1, buffer, bufferOffset);
    // Serialize message field [reserved3]
    bufferOffset = _serializer.uint8(obj.reserved3, buffer, bufferOffset);
    // Serialize message field [reserved4]
    bufferOffset = _serializer.uint16(obj.reserved4, buffer, bufferOffset);
    // Serialize message field [maxFreqErVal1]
    bufferOffset = _serializer.int32(obj.maxFreqErVal1, buffer, bufferOffset);
    // Serialize message field [freqFailCnt1]
    bufferOffset = _serializer.uint32(obj.freqFailCnt1, buffer, bufferOffset);
    // Serialize message field [maxFreqFailTime1]
    bufferOffset = _serializer.uint32(obj.maxFreqFailTime1, buffer, bufferOffset);
    // Serialize message field [reserved5]
    bufferOffset = _serializer.uint32(obj.reserved5, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonSynthFreqNonLiveRep
    let len;
    let data = new RlMonSynthFreqNonLiveRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [profIndex0]
    data.profIndex0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maxFreqErVal0]
    data.maxFreqErVal0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [freqFailCnt0]
    data.freqFailCnt0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [maxFreqFailTime0]
    data.maxFreqFailTime0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [profIndex1]
    data.profIndex1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved3]
    data.reserved3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved4]
    data.reserved4 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [maxFreqErVal1]
    data.maxFreqErVal1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [freqFailCnt1]
    data.freqFailCnt1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [maxFreqFailTime1]
    data.maxFreqFailTime1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved5]
    data.reserved5 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonSynthFreqNonLiveRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0edbc23d8d4e3fb8b9ba98fa67b4c6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 statusFlags
    uint16 errorCode
    uint8 profIndex0
    uint8 reserved0
    uint16 reserved1
    int32 maxFreqErVal0
    uint32 freqFailCnt0
    uint32 maxFreqFailTime0
    uint32 reserved2
    uint8 profIndex1
    uint8 reserved3
    uint16 reserved4
    int32 maxFreqErVal1
    uint32 freqFailCnt1
    uint32 maxFreqFailTime1
    uint32 reserved5
    uint32 timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonSynthFreqNonLiveRep(null);
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

    if (msg.profIndex0 !== undefined) {
      resolved.profIndex0 = msg.profIndex0;
    }
    else {
      resolved.profIndex0 = 0
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

    if (msg.maxFreqErVal0 !== undefined) {
      resolved.maxFreqErVal0 = msg.maxFreqErVal0;
    }
    else {
      resolved.maxFreqErVal0 = 0
    }

    if (msg.freqFailCnt0 !== undefined) {
      resolved.freqFailCnt0 = msg.freqFailCnt0;
    }
    else {
      resolved.freqFailCnt0 = 0
    }

    if (msg.maxFreqFailTime0 !== undefined) {
      resolved.maxFreqFailTime0 = msg.maxFreqFailTime0;
    }
    else {
      resolved.maxFreqFailTime0 = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    if (msg.profIndex1 !== undefined) {
      resolved.profIndex1 = msg.profIndex1;
    }
    else {
      resolved.profIndex1 = 0
    }

    if (msg.reserved3 !== undefined) {
      resolved.reserved3 = msg.reserved3;
    }
    else {
      resolved.reserved3 = 0
    }

    if (msg.reserved4 !== undefined) {
      resolved.reserved4 = msg.reserved4;
    }
    else {
      resolved.reserved4 = 0
    }

    if (msg.maxFreqErVal1 !== undefined) {
      resolved.maxFreqErVal1 = msg.maxFreqErVal1;
    }
    else {
      resolved.maxFreqErVal1 = 0
    }

    if (msg.freqFailCnt1 !== undefined) {
      resolved.freqFailCnt1 = msg.freqFailCnt1;
    }
    else {
      resolved.freqFailCnt1 = 0
    }

    if (msg.maxFreqFailTime1 !== undefined) {
      resolved.maxFreqFailTime1 = msg.maxFreqFailTime1;
    }
    else {
      resolved.maxFreqFailTime1 = 0
    }

    if (msg.reserved5 !== undefined) {
      resolved.reserved5 = msg.reserved5;
    }
    else {
      resolved.reserved5 = 0
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

module.exports = RlMonSynthFreqNonLiveRep;
