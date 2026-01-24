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

class RlAnalogFaultReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.faultType = null;
      this.reserved0 = null;
      this.reserved1 = null;
      this.faultSig = null;
      this.reserved2 = null;
    }
    else {
      if (initObj.hasOwnProperty('faultType')) {
        this.faultType = initObj.faultType
      }
      else {
        this.faultType = 0;
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
      if (initObj.hasOwnProperty('faultSig')) {
        this.faultSig = initObj.faultSig
      }
      else {
        this.faultSig = 0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlAnalogFaultReportData
    // Serialize message field [faultType]
    bufferOffset = _serializer.uint8(obj.faultType, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint8(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint16(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [faultSig]
    bufferOffset = _serializer.uint32(obj.faultSig, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.uint32(obj.reserved2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlAnalogFaultReportData
    let len;
    let data = new RlAnalogFaultReportData(null);
    // Deserialize message field [faultType]
    data.faultType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [faultSig]
    data.faultSig = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlAnalogFaultReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86377d145b029d12a69d2725d0e11a16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   faultType
    uint8   reserved0
    uint16  reserved1
    uint32  faultSig
    uint32  reserved2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlAnalogFaultReportData(null);
    if (msg.faultType !== undefined) {
      resolved.faultType = msg.faultType;
    }
    else {
      resolved.faultType = 0
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

    if (msg.faultSig !== undefined) {
      resolved.faultSig = msg.faultSig;
    }
    else {
      resolved.faultSig = 0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0
    }

    return resolved;
    }
};

module.exports = RlAnalogFaultReportData;
