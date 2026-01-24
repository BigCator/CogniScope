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

class RlMonReportHdrData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fttiCount = null;
      this.avgTemp = null;
      this.reserved0 = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('fttiCount')) {
        this.fttiCount = initObj.fttiCount
      }
      else {
        this.fttiCount = 0;
      }
      if (initObj.hasOwnProperty('avgTemp')) {
        this.avgTemp = initObj.avgTemp
      }
      else {
        this.avgTemp = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlMonReportHdrData
    // Serialize message field [fttiCount]
    bufferOffset = _serializer.uint32(obj.fttiCount, buffer, bufferOffset);
    // Serialize message field [avgTemp]
    bufferOffset = _serializer.uint16(obj.avgTemp, buffer, bufferOffset);
    // Serialize message field [reserved0]
    bufferOffset = _serializer.uint16(obj.reserved0, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.uint32(obj.reserved1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlMonReportHdrData
    let len;
    let data = new RlMonReportHdrData(null);
    // Deserialize message field [fttiCount]
    data.fttiCount = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [avgTemp]
    data.avgTemp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved0]
    data.reserved0 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlMonReportHdrData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98626e73845bccc896ca0d734491f4f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32  fttiCount
    uint16  avgTemp
    uint16  reserved0
    uint32  reserved1
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlMonReportHdrData(null);
    if (msg.fttiCount !== undefined) {
      resolved.fttiCount = msg.fttiCount;
    }
    else {
      resolved.fttiCount = 0
    }

    if (msg.avgTemp !== undefined) {
      resolved.avgTemp = msg.avgTemp;
    }
    else {
      resolved.avgTemp = 0
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

    return resolved;
    }
};

module.exports = RlMonReportHdrData;
