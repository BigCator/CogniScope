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

class SystemStatePtpData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reserved = null;
      this.ptp_counter_flg = null;
      this.pulse_count = null;
      this.ptp_sec_counter = null;
      this.ptp_nsec = null;
      this.ptp_follow_sec = null;
      this.ptp_sec_counter_all = null;
    }
    else {
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('ptp_counter_flg')) {
        this.ptp_counter_flg = initObj.ptp_counter_flg
      }
      else {
        this.ptp_counter_flg = 0;
      }
      if (initObj.hasOwnProperty('pulse_count')) {
        this.pulse_count = initObj.pulse_count
      }
      else {
        this.pulse_count = 0;
      }
      if (initObj.hasOwnProperty('ptp_sec_counter')) {
        this.ptp_sec_counter = initObj.ptp_sec_counter
      }
      else {
        this.ptp_sec_counter = 0;
      }
      if (initObj.hasOwnProperty('ptp_nsec')) {
        this.ptp_nsec = initObj.ptp_nsec
      }
      else {
        this.ptp_nsec = 0;
      }
      if (initObj.hasOwnProperty('ptp_follow_sec')) {
        this.ptp_follow_sec = initObj.ptp_follow_sec
      }
      else {
        this.ptp_follow_sec = 0;
      }
      if (initObj.hasOwnProperty('ptp_sec_counter_all')) {
        this.ptp_sec_counter_all = initObj.ptp_sec_counter_all
      }
      else {
        this.ptp_sec_counter_all = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatePtpData
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [ptp_counter_flg]
    bufferOffset = _serializer.uint32(obj.ptp_counter_flg, buffer, bufferOffset);
    // Serialize message field [pulse_count]
    bufferOffset = _serializer.uint32(obj.pulse_count, buffer, bufferOffset);
    // Serialize message field [ptp_sec_counter]
    bufferOffset = _serializer.uint32(obj.ptp_sec_counter, buffer, bufferOffset);
    // Serialize message field [ptp_nsec]
    bufferOffset = _serializer.uint32(obj.ptp_nsec, buffer, bufferOffset);
    // Serialize message field [ptp_follow_sec]
    bufferOffset = _serializer.uint64(obj.ptp_follow_sec, buffer, bufferOffset);
    // Serialize message field [ptp_sec_counter_all]
    bufferOffset = _serializer.uint64(obj.ptp_sec_counter_all, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatePtpData
    let len;
    let data = new SystemStatePtpData(null);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ptp_counter_flg]
    data.ptp_counter_flg = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pulse_count]
    data.pulse_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ptp_sec_counter]
    data.ptp_sec_counter = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ptp_nsec]
    data.ptp_nsec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ptp_follow_sec]
    data.ptp_follow_sec = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [ptp_sec_counter_all]
    data.ptp_sec_counter_all = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemStatePtpData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a790bc086e65d9a32b7fb446144e5ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32      reserved
    uint32      ptp_counter_flg
    uint32      pulse_count
    uint32      ptp_sec_counter
    uint32      ptp_nsec
    uint64      ptp_follow_sec
    uint64      ptp_sec_counter_all
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStatePtpData(null);
    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.ptp_counter_flg !== undefined) {
      resolved.ptp_counter_flg = msg.ptp_counter_flg;
    }
    else {
      resolved.ptp_counter_flg = 0
    }

    if (msg.pulse_count !== undefined) {
      resolved.pulse_count = msg.pulse_count;
    }
    else {
      resolved.pulse_count = 0
    }

    if (msg.ptp_sec_counter !== undefined) {
      resolved.ptp_sec_counter = msg.ptp_sec_counter;
    }
    else {
      resolved.ptp_sec_counter = 0
    }

    if (msg.ptp_nsec !== undefined) {
      resolved.ptp_nsec = msg.ptp_nsec;
    }
    else {
      resolved.ptp_nsec = 0
    }

    if (msg.ptp_follow_sec !== undefined) {
      resolved.ptp_follow_sec = msg.ptp_follow_sec;
    }
    else {
      resolved.ptp_follow_sec = 0
    }

    if (msg.ptp_sec_counter_all !== undefined) {
      resolved.ptp_sec_counter_all = msg.ptp_sec_counter_all;
    }
    else {
      resolved.ptp_sec_counter_all = 0
    }

    return resolved;
    }
};

module.exports = SystemStatePtpData;
