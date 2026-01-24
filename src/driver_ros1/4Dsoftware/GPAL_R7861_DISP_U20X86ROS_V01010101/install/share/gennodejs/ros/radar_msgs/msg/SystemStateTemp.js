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

class SystemStateTemp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.minTemp = null;
      this.maxTemp = null;
    }
    else {
      if (initObj.hasOwnProperty('minTemp')) {
        this.minTemp = initObj.minTemp
      }
      else {
        this.minTemp = 0.0;
      }
      if (initObj.hasOwnProperty('maxTemp')) {
        this.maxTemp = initObj.maxTemp
      }
      else {
        this.maxTemp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStateTemp
    // Serialize message field [minTemp]
    bufferOffset = _serializer.float32(obj.minTemp, buffer, bufferOffset);
    // Serialize message field [maxTemp]
    bufferOffset = _serializer.float32(obj.maxTemp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStateTemp
    let len;
    let data = new SystemStateTemp(null);
    // Deserialize message field [minTemp]
    data.minTemp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxTemp]
    data.maxTemp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemStateTemp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84095672e2b3817830f10d33f98fc691';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header header               # Includes measurement timestamp and coordinate frame.
    float32       minTemp
    float32       maxTemp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStateTemp(null);
    if (msg.minTemp !== undefined) {
      resolved.minTemp = msg.minTemp;
    }
    else {
      resolved.minTemp = 0.0
    }

    if (msg.maxTemp !== undefined) {
      resolved.maxTemp = msg.maxTemp;
    }
    else {
      resolved.maxTemp = 0.0
    }

    return resolved;
    }
};

module.exports = SystemStateTemp;
