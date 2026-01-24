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

class FloatVecType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.width = null;
      this.height = null;
      this.frameID = null;
      this.cfarCount = null;
      this.cfarObj = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('frameID')) {
        this.frameID = initObj.frameID
      }
      else {
        this.frameID = 0;
      }
      if (initObj.hasOwnProperty('cfarCount')) {
        this.cfarCount = initObj.cfarCount
      }
      else {
        this.cfarCount = 0;
      }
      if (initObj.hasOwnProperty('cfarObj')) {
        this.cfarObj = initObj.cfarObj
      }
      else {
        this.cfarObj = [];
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FloatVecType
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [frameID]
    bufferOffset = _serializer.uint32(obj.frameID, buffer, bufferOffset);
    // Serialize message field [cfarCount]
    bufferOffset = _serializer.uint32(obj.cfarCount, buffer, bufferOffset);
    // Serialize message field [cfarObj]
    bufferOffset = _arraySerializer.uint16(obj.cfarObj, buffer, bufferOffset, null);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FloatVecType
    let len;
    let data = new FloatVecType(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameID]
    data.frameID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cfarCount]
    data.cfarCount = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cfarObj]
    data.cfarObj = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.cfarObj.length;
    length += 4 * object.data.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/FloatVecType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '158c8739358cbaf79a1f129713cd7329';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header           # Includes measurement timestamp and coordinate frame.
    uint32 width
    uint32 height
    uint32 frameID
    uint32 cfarCount
    uint16[] cfarObj
    float32[] data           # target snr
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
    const resolved = new FloatVecType(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.frameID !== undefined) {
      resolved.frameID = msg.frameID;
    }
    else {
      resolved.frameID = 0
    }

    if (msg.cfarCount !== undefined) {
      resolved.cfarCount = msg.cfarCount;
    }
    else {
      resolved.cfarCount = 0
    }

    if (msg.cfarObj !== undefined) {
      resolved.cfarObj = msg.cfarObj;
    }
    else {
      resolved.cfarObj = []
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = FloatVecType;
