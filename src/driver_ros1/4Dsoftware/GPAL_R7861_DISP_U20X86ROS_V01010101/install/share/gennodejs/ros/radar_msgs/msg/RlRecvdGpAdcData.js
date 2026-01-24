// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RlGpAdcData = require('./RlGpAdcData.js');

//-----------------------------------------------------------

class RlRecvdGpAdcData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor = null;
      this.reserved0 = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = new Array(6).fill(new RlGpAdcData());
      }
      if (initObj.hasOwnProperty('reserved0')) {
        this.reserved0 = initObj.reserved0
      }
      else {
        this.reserved0 = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlRecvdGpAdcData
    // Check that the constant length array field [sensor] has the right length
    if (obj.sensor.length !== 6) {
      throw new Error('Unable to serialize array field sensor - length must be 6')
    }
    // Serialize message field [sensor]
    obj.sensor.forEach((val) => {
      bufferOffset = RlGpAdcData.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reserved0] has the right length
    if (obj.reserved0.length !== 4) {
      throw new Error('Unable to serialize array field reserved0 - length must be 4')
    }
    // Serialize message field [reserved0]
    bufferOffset = _arraySerializer.uint16(obj.reserved0, buffer, bufferOffset, 4);
    // Check that the constant length array field [reserved1] has the right length
    if (obj.reserved1.length !== 7) {
      throw new Error('Unable to serialize array field reserved1 - length must be 7')
    }
    // Serialize message field [reserved1]
    bufferOffset = _arraySerializer.uint32(obj.reserved1, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlRecvdGpAdcData
    let len;
    let data = new RlRecvdGpAdcData(null);
    // Deserialize message field [sensor]
    len = 6;
    data.sensor = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensor[i] = RlGpAdcData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved0]
    data.reserved0 = _arrayDeserializer.uint16(buffer, bufferOffset, 4)
    // Deserialize message field [reserved1]
    data.reserved1 = _arrayDeserializer.uint32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlRecvdGpAdcData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c77259e6e9e4b7d6f098acf35b1c17dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RlGpAdcData[6]  sensor
    uint16[4]       reserved0
    uint32[7]       reserved1
    ================================================================================
    MSG: radar_msgs/RlGpAdcData
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
    const resolved = new RlRecvdGpAdcData(null);
    if (msg.sensor !== undefined) {
      resolved.sensor = new Array(6)
      for (let i = 0; i < resolved.sensor.length; ++i) {
        if (msg.sensor.length > i) {
          resolved.sensor[i] = RlGpAdcData.Resolve(msg.sensor[i]);
        }
        else {
          resolved.sensor[i] = new RlGpAdcData();
        }
      }
    }
    else {
      resolved.sensor = new Array(6).fill(new RlGpAdcData())
    }

    if (msg.reserved0 !== undefined) {
      resolved.reserved0 = msg.reserved0;
    }
    else {
      resolved.reserved0 = new Array(4).fill(0)
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = RlRecvdGpAdcData;
