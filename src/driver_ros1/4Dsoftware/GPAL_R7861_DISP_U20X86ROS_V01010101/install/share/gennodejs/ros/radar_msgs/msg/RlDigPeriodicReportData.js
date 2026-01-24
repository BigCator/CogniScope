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

class RlDigPeriodicReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digMonPeriodicStatus = null;
      this.timeStamp = null;
    }
    else {
      if (initObj.hasOwnProperty('digMonPeriodicStatus')) {
        this.digMonPeriodicStatus = initObj.digMonPeriodicStatus
      }
      else {
        this.digMonPeriodicStatus = 0;
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
    // Serializes a message object of type RlDigPeriodicReportData
    // Serialize message field [digMonPeriodicStatus]
    bufferOffset = _serializer.uint32(obj.digMonPeriodicStatus, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlDigPeriodicReportData
    let len;
    let data = new RlDigPeriodicReportData(null);
    // Deserialize message field [digMonPeriodicStatus]
    data.digMonPeriodicStatus = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlDigPeriodicReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '262409da3005a90bd0e6dbfcde33642a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 digMonPeriodicStatus
    uint32 timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlDigPeriodicReportData(null);
    if (msg.digMonPeriodicStatus !== undefined) {
      resolved.digMonPeriodicStatus = msg.digMonPeriodicStatus;
    }
    else {
      resolved.digMonPeriodicStatus = 0
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

module.exports = RlDigPeriodicReportData;
