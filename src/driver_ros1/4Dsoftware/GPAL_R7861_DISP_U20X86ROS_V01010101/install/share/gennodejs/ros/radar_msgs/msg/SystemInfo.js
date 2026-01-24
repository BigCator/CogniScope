// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.productCode = null;
      this.productVersion = null;
      this.compileDate = null;
      this.compileTime = null;
      this.reserve = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('productCode')) {
        this.productCode = initObj.productCode
      }
      else {
        this.productCode = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('productVersion')) {
        this.productVersion = initObj.productVersion
      }
      else {
        this.productVersion = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('compileDate')) {
        this.compileDate = initObj.compileDate
      }
      else {
        this.compileDate = new Array(12).fill(0);
      }
      if (initObj.hasOwnProperty('compileTime')) {
        this.compileTime = initObj.compileTime
      }
      else {
        this.compileTime = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('reserve')) {
        this.reserve = initObj.reserve
      }
      else {
        this.reserve = new Array(32).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [productCode] has the right length
    if (obj.productCode.length !== 16) {
      throw new Error('Unable to serialize array field productCode - length must be 16')
    }
    // Serialize message field [productCode]
    bufferOffset = _arraySerializer.char(obj.productCode, buffer, bufferOffset, 16);
    // Check that the constant length array field [productVersion] has the right length
    if (obj.productVersion.length !== 16) {
      throw new Error('Unable to serialize array field productVersion - length must be 16')
    }
    // Serialize message field [productVersion]
    bufferOffset = _arraySerializer.char(obj.productVersion, buffer, bufferOffset, 16);
    // Check that the constant length array field [compileDate] has the right length
    if (obj.compileDate.length !== 12) {
      throw new Error('Unable to serialize array field compileDate - length must be 12')
    }
    // Serialize message field [compileDate]
    bufferOffset = _arraySerializer.char(obj.compileDate, buffer, bufferOffset, 12);
    // Check that the constant length array field [compileTime] has the right length
    if (obj.compileTime.length !== 16) {
      throw new Error('Unable to serialize array field compileTime - length must be 16')
    }
    // Serialize message field [compileTime]
    bufferOffset = _arraySerializer.char(obj.compileTime, buffer, bufferOffset, 16);
    // Check that the constant length array field [reserve] has the right length
    if (obj.reserve.length !== 32) {
      throw new Error('Unable to serialize array field reserve - length must be 32')
    }
    // Serialize message field [reserve]
    bufferOffset = _arraySerializer.char(obj.reserve, buffer, bufferOffset, 32);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemInfo
    let len;
    let data = new SystemInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [productCode]
    data.productCode = _arrayDeserializer.char(buffer, bufferOffset, 16)
    // Deserialize message field [productVersion]
    data.productVersion = _arrayDeserializer.char(buffer, bufferOffset, 16)
    // Deserialize message field [compileDate]
    data.compileDate = _arrayDeserializer.char(buffer, bufferOffset, 12)
    // Deserialize message field [compileTime]
    data.compileTime = _arrayDeserializer.char(buffer, bufferOffset, 16)
    // Deserialize message field [reserve]
    data.reserve = _arrayDeserializer.char(buffer, bufferOffset, 32)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bef89192e7f73b8458e893ef8d30db1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header               # Includes measurement timestamp and coordinate frame.
    char[16] productCode            # productCode
    char[16] productVersion         # productVersion
    char[12] compileDate            # compileDate
    char[16] compileTime            # compileTime
    char[32] reserve                # reserve   
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.productCode !== undefined) {
      resolved.productCode = msg.productCode;
    }
    else {
      resolved.productCode = new Array(16).fill(0)
    }

    if (msg.productVersion !== undefined) {
      resolved.productVersion = msg.productVersion;
    }
    else {
      resolved.productVersion = new Array(16).fill(0)
    }

    if (msg.compileDate !== undefined) {
      resolved.compileDate = msg.compileDate;
    }
    else {
      resolved.compileDate = new Array(12).fill(0)
    }

    if (msg.compileTime !== undefined) {
      resolved.compileTime = msg.compileTime;
    }
    else {
      resolved.compileTime = new Array(16).fill(0)
    }

    if (msg.reserve !== undefined) {
      resolved.reserve = msg.reserve;
    }
    else {
      resolved.reserve = new Array(32).fill(0)
    }

    return resolved;
    }
};

module.exports = SystemInfo;
