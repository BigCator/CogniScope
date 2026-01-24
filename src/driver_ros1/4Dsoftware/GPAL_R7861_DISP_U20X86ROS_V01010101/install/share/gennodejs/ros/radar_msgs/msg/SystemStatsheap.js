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

class SystemStatsheap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heapSize = null;
      this.freeSize = null;
    }
    else {
      if (initObj.hasOwnProperty('heapSize')) {
        this.heapSize = initObj.heapSize
      }
      else {
        this.heapSize = 0;
      }
      if (initObj.hasOwnProperty('freeSize')) {
        this.freeSize = initObj.freeSize
      }
      else {
        this.freeSize = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatsheap
    // Serialize message field [heapSize]
    bufferOffset = _serializer.uint32(obj.heapSize, buffer, bufferOffset);
    // Serialize message field [freeSize]
    bufferOffset = _serializer.uint32(obj.freeSize, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatsheap
    let len;
    let data = new SystemStatsheap(null);
    // Deserialize message field [heapSize]
    data.heapSize = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [freeSize]
    data.freeSize = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemStatsheap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03640949b9fee0e6971efd5dfb6ef3a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header header               # Includes measurement timestamp and coordinate frame.
    uint32       heapSize
    uint32       freeSize
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStatsheap(null);
    if (msg.heapSize !== undefined) {
      resolved.heapSize = msg.heapSize;
    }
    else {
      resolved.heapSize = 0
    }

    if (msg.freeSize !== undefined) {
      resolved.freeSize = msg.freeSize;
    }
    else {
      resolved.freeSize = 0
    }

    return resolved;
    }
};

module.exports = SystemStatsheap;
