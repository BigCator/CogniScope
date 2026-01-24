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

class RlDigLatentFaultReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digMonLatentFault = null;
    }
    else {
      if (initObj.hasOwnProperty('digMonLatentFault')) {
        this.digMonLatentFault = initObj.digMonLatentFault
      }
      else {
        this.digMonLatentFault = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RlDigLatentFaultReportData
    // Serialize message field [digMonLatentFault]
    bufferOffset = _serializer.uint32(obj.digMonLatentFault, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RlDigLatentFaultReportData
    let len;
    let data = new RlDigLatentFaultReportData(null);
    // Deserialize message field [digMonLatentFault]
    data.digMonLatentFault = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RlDigLatentFaultReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d9a5ff36b3bc2ccb74cffbea92268ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32  digMonLatentFault
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RlDigLatentFaultReportData(null);
    if (msg.digMonLatentFault !== undefined) {
      resolved.digMonLatentFault = msg.digMonLatentFault;
    }
    else {
      resolved.digMonLatentFault = 0
    }

    return resolved;
    }
};

module.exports = RlDigLatentFaultReportData;
