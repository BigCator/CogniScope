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

class RadarFeature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.targetNum = null;
      this.d = null;
      this.v = null;
      this.azimuth = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('targetNum')) {
        this.targetNum = initObj.targetNum
      }
      else {
        this.targetNum = 0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = [];
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = [];
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarFeature
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [targetNum]
    bufferOffset = _serializer.uint32(obj.targetNum, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _arraySerializer.float32(obj.d, buffer, bufferOffset, null);
    // Serialize message field [v]
    bufferOffset = _arraySerializer.float32(obj.v, buffer, bufferOffset, null);
    // Serialize message field [azimuth]
    bufferOffset = _arraySerializer.float32(obj.azimuth, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarFeature
    let len;
    let data = new RadarFeature(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [targetNum]
    data.targetNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v]
    data.v = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [azimuth]
    data.azimuth = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.d.length;
    length += 4 * object.v.length;
    length += 4 * object.azimuth.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RadarFeature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7ad55b5738dc6964897be14d4580716';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header           # Includes measurement timestamp and coordinate frame.
    uint32 targetNum        # targets Num
    float32[] d             # distance
    float32[] v             # target velocity
    float32[] azimuth            # target azimuth
    
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
    const resolved = new RadarFeature(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.targetNum !== undefined) {
      resolved.targetNum = msg.targetNum;
    }
    else {
      resolved.targetNum = 0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = []
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = []
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = []
    }

    return resolved;
    }
};

module.exports = RadarFeature;
