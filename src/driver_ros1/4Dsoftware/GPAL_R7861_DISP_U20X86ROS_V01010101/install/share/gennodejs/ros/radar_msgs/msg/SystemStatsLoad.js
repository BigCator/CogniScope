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

class SystemStatsLoad {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loadValue = null;
    }
    else {
      if (initObj.hasOwnProperty('loadValue')) {
        this.loadValue = initObj.loadValue
      }
      else {
        this.loadValue = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatsLoad
    // Serialize message field [loadValue]
    bufferOffset = _serializer.float32(obj.loadValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatsLoad
    let len;
    let data = new SystemStatsLoad(null);
    // Deserialize message field [loadValue]
    data.loadValue = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemStatsLoad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd202161f3eaed8a4375480b6f4d9bb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header header               # Includes measurement timestamp and coordinate frame.
    # uint32      integerValue
    # uint32      fractionalValue
    float32     loadValue
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStatsLoad(null);
    if (msg.loadValue !== undefined) {
      resolved.loadValue = msg.loadValue;
    }
    else {
      resolved.loadValue = 0.0
    }

    return resolved;
    }
};

module.exports = SystemStatsLoad;
