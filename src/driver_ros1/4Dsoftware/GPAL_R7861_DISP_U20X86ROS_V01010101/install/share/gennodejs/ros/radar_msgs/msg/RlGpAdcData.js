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

class RlGpAdcData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.min = null;
      this.max = null;
      this.avg = null;
    }
    else {
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0;
      }
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = 0;
      }
      if (initObj.hasOwnProperty('avg')) {
        this.avg = initObj.avg
      }
      else {
        this.avg = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlGpAdcData
    // Serialize message field [min]
    bufferOffset = _serializer.uint16(obj.min, buffer, bufferOffset);
    // Serialize message field [max]
    bufferOffset = _serializer.uint16(obj.max, buffer, bufferOffset);
    // Serialize message field [avg]
    bufferOffset = _serializer.uint16(obj.avg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlGpAdcData
    let len;
    let data = new RlGpAdcData(null);
    // Deserialize message field [min]
    data.min = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max]
    data.max = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [avg]
    data.avg = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlGpAdcData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d3fd228e22a7d51e758f16247dffdea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 min
    uint16 max
    uint16 avg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlGpAdcData(null);
    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0
    }

    if (msg.max !== undefined) {
      resolved.max = msg.max;
    }
    else {
      resolved.max = 0
    }

    if (msg.avg !== undefined) {
      resolved.avg = msg.avg;
    }
    else {
      resolved.avg = 0
    }

    return resolved;
    }
};

module.exports = RlGpAdcData;
