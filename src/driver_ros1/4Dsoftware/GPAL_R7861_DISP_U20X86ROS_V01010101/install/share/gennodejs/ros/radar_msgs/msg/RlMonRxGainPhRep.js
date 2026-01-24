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

class RlMonRxGainPhRep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusFlags = null;
      this.errorCode = null;
      this.profIndex = null;
      this.loopbackPowerRF1 = null;
      this.loopbackPowerRF2 = null;
      this.loopbackPowerRF3 = null;
      this.rxGainVal = null;
      this.rxPhaseVal = null;
      this.rxNoisePower1 = null;
      this.rxNoisePower2 = null;
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
      if (initObj.hasOwnProperty('loopbackPowerRF1')) {
        this.loopbackPowerRF1 = initObj.loopbackPowerRF1
      }
      else {
        this.loopbackPowerRF1 = 0;
      }
      if (initObj.hasOwnProperty('loopbackPowerRF2')) {
        this.loopbackPowerRF2 = initObj.loopbackPowerRF2
      }
      else {
        this.loopbackPowerRF2 = 0;
      }
      if (initObj.hasOwnProperty('loopbackPowerRF3')) {
        this.loopbackPowerRF3 = initObj.loopbackPowerRF3
      }
      else {
        this.loopbackPowerRF3 = 0;
      }
      if (initObj.hasOwnProperty('rxGainVal')) {
        this.rxGainVal = initObj.rxGainVal
      }
      else {
        this.rxGainVal = new Array(12).fill(0);
      }
      if (initObj.hasOwnProperty('rxPhaseVal')) {
        this.rxPhaseVal = initObj.rxPhaseVal
      }
      else {
        this.rxPhaseVal = new Array(12).fill(0);
      }
      if (initObj.hasOwnProperty('rxNoisePower1')) {
        this.rxNoisePower1 = initObj.rxNoisePower1
      }
      else {
        this.rxNoisePower1 = 0;
      }
      if (initObj.hasOwnProperty('rxNoisePower2')) {
        this.rxNoisePower2 = initObj.rxNoisePower2
      }
      else {
        this.rxNoisePower2 = 0;
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
    // Serializes a message object of type RlMonRxGainPhRep
    // Serialize message field [statusFlags]
    bufferOffset = _serializer.uint16(obj.statusFlags, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [profIndex]
    bufferOffset = _serializer.uint8(obj.profIndex, buffer, bufferOffset);
    // Serialize message field [loopbackPowerRF1]
    bufferOffset = _serializer.uint8(obj.loopbackPowerRF1, buffer, bufferOffset);
    // Serialize message field [loopbackPowerRF2]
    bufferOffset = _serializer.uint8(obj.loopbackPowerRF2, buffer, bufferOffset);
    // Serialize message field [loopbackPowerRF3]
    bufferOffset = _serializer.uint8(obj.loopbackPowerRF3, buffer, bufferOffset);
    // Check that the constant length array field [rxGainVal] has the right length
    if (obj.rxGainVal.length !== 12) {
      throw new Error('Unable to serialize array field rxGainVal - length must be 12')
    }
    // Serialize message field [rxGainVal]
    bufferOffset = _arraySerializer.uint16(obj.rxGainVal, buffer, bufferOffset, 12);
    // Check that the constant length array field [rxPhaseVal] has the right length
    if (obj.rxPhaseVal.length !== 12) {
      throw new Error('Unable to serialize array field rxPhaseVal - length must be 12')
    }
    // Serialize message field [rxPhaseVal]
    bufferOffset = _arraySerializer.uint16(obj.rxPhaseVal, buffer, bufferOffset, 12);
    // Serialize message field [rxNoisePower1]
    bufferOffset = _serializer.uint32(obj.rxNoisePower1, buffer, bufferOffset);
    // Serialize message field [rxNoisePower2]
    bufferOffset = _serializer.uint32(obj.rxNoisePower2, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonRxGainPhRep
    let len;
    let data = new RlMonRxGainPhRep(null);
    // Deserialize message field [statusFlags]
    data.statusFlags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [profIndex]
    data.profIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [loopbackPowerRF1]
    data.loopbackPowerRF1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [loopbackPowerRF2]
    data.loopbackPowerRF2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [loopbackPowerRF3]
    data.loopbackPowerRF3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rxGainVal]
    data.rxGainVal = _arrayDeserializer.uint16(buffer, bufferOffset, 12)
    // Deserialize message field [rxPhaseVal]
    data.rxPhaseVal = _arrayDeserializer.uint16(buffer, bufferOffset, 12)
    // Deserialize message field [rxNoisePower1]
    data.rxNoisePower1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rxNoisePower2]
    data.rxNoisePower2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonRxGainPhRep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f089091924cc998599ccbe78b8cddb04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16      statusFlags
    uint16      errorCode
    uint8       profIndex
    uint8       loopbackPowerRF1
    uint8       loopbackPowerRF2
    uint8       loopbackPowerRF3
    uint16[12]  rxGainVal
    uint16[12]  rxPhaseVal
    uint32      rxNoisePower1
    uint32      rxNoisePower2
    uint32      timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonRxGainPhRep(null);
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

    if (msg.loopbackPowerRF1 !== undefined) {
      resolved.loopbackPowerRF1 = msg.loopbackPowerRF1;
    }
    else {
      resolved.loopbackPowerRF1 = 0
    }

    if (msg.loopbackPowerRF2 !== undefined) {
      resolved.loopbackPowerRF2 = msg.loopbackPowerRF2;
    }
    else {
      resolved.loopbackPowerRF2 = 0
    }

    if (msg.loopbackPowerRF3 !== undefined) {
      resolved.loopbackPowerRF3 = msg.loopbackPowerRF3;
    }
    else {
      resolved.loopbackPowerRF3 = 0
    }

    if (msg.rxGainVal !== undefined) {
      resolved.rxGainVal = msg.rxGainVal;
    }
    else {
      resolved.rxGainVal = new Array(12).fill(0)
    }

    if (msg.rxPhaseVal !== undefined) {
      resolved.rxPhaseVal = msg.rxPhaseVal;
    }
    else {
      resolved.rxPhaseVal = new Array(12).fill(0)
    }

    if (msg.rxNoisePower1 !== undefined) {
      resolved.rxNoisePower1 = msg.rxNoisePower1;
    }
    else {
      resolved.rxNoisePower1 = 0
    }

    if (msg.rxNoisePower2 !== undefined) {
      resolved.rxNoisePower2 = msg.rxNoisePower2;
    }
    else {
      resolved.rxNoisePower2 = 0
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

module.exports = RlMonRxGainPhRep;
