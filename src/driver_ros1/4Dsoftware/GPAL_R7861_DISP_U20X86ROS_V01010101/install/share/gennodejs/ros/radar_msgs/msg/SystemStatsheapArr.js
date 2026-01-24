// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SystemStatsheap = require('./SystemStatsheap.js');

//-----------------------------------------------------------

class SystemStatsheapArr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heap = null;
    }
    else {
      if (initObj.hasOwnProperty('heap')) {
        this.heap = initObj.heap
      }
      else {
        this.heap = new Array(2).fill(new SystemStatsheap());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatsheapArr
    // Check that the constant length array field [heap] has the right length
    if (obj.heap.length !== 2) {
      throw new Error('Unable to serialize array field heap - length must be 2')
    }
    // Serialize message field [heap]
    obj.heap.forEach((val) => {
      bufferOffset = SystemStatsheap.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatsheapArr
    let len;
    let data = new SystemStatsheapArr(null);
    // Deserialize message field [heap]
    len = 2;
    data.heap = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.heap[i] = SystemStatsheap.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemStatsheapArr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96720ee170c50ff6e79e38467eec2737';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header header           # Includes measurement timestamp and coordinate frame.
    SystemStatsheap[2]     heap
    ================================================================================
    MSG: radar_msgs/SystemStatsheap
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
    const resolved = new SystemStatsheapArr(null);
    if (msg.heap !== undefined) {
      resolved.heap = new Array(2)
      for (let i = 0; i < resolved.heap.length; ++i) {
        if (msg.heap.length > i) {
          resolved.heap[i] = SystemStatsheap.Resolve(msg.heap[i]);
        }
        else {
          resolved.heap[i] = new SystemStatsheap();
        }
      }
    }
    else {
      resolved.heap = new Array(2).fill(new SystemStatsheap())
    }

    return resolved;
    }
};

module.exports = SystemStatsheapArr;
