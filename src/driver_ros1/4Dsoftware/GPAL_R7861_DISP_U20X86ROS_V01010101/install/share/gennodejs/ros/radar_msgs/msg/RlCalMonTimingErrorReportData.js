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

class RlCalMonTimingErrorReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timingFailCode = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('timingFailCode')) {
        this.timingFailCode = initObj.timingFailCode
      }
      else {
        this.timingFailCode = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlCalMonTimingErrorReportData
    // Serialize message field [timingFailCode]
    bufferOffset = _serializer.uint16(obj.timingFailCode, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint16(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlCalMonTimingErrorReportData
    let len;
    let data = new RlCalMonTimingErrorReportData(null);
    // Deserialize message field [timingFailCode]
    data.timingFailCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlCalMonTimingErrorReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba804855ea66876247a3184393cfedc9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 timingFailCode
    uint16 reserved
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlCalMonTimingErrorReportData(null);
    if (msg.timingFailCode !== undefined) {
      resolved.timingFailCode = msg.timingFailCode;
    }
    else {
      resolved.timingFailCode = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = RlCalMonTimingErrorReportData;
