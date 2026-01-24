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

class OccupiedGrid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.occupiedNum = null;
      this.grid_x_length = null;
      this.grid_y_length = null;
      this.grid_x = null;
      this.grid_y = null;
      this.reserved_a = null;
      this.reserved_b = null;
      this.reserved_c = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radarID')) {
        this.radarID = initObj.radarID
      }
      else {
        this.radarID = 0;
      }
      if (initObj.hasOwnProperty('frameCnt')) {
        this.frameCnt = initObj.frameCnt
      }
      else {
        this.frameCnt = 0;
      }
      if (initObj.hasOwnProperty('occupiedNum')) {
        this.occupiedNum = initObj.occupiedNum
      }
      else {
        this.occupiedNum = 0;
      }
      if (initObj.hasOwnProperty('grid_x_length')) {
        this.grid_x_length = initObj.grid_x_length
      }
      else {
        this.grid_x_length = 0.0;
      }
      if (initObj.hasOwnProperty('grid_y_length')) {
        this.grid_y_length = initObj.grid_y_length
      }
      else {
        this.grid_y_length = 0.0;
      }
      if (initObj.hasOwnProperty('grid_x')) {
        this.grid_x = initObj.grid_x
      }
      else {
        this.grid_x = [];
      }
      if (initObj.hasOwnProperty('grid_y')) {
        this.grid_y = initObj.grid_y
      }
      else {
        this.grid_y = [];
      }
      if (initObj.hasOwnProperty('reserved_a')) {
        this.reserved_a = initObj.reserved_a
      }
      else {
        this.reserved_a = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_b')) {
        this.reserved_b = initObj.reserved_b
      }
      else {
        this.reserved_b = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_c')) {
        this.reserved_c = initObj.reserved_c
      }
      else {
        this.reserved_c = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OccupiedGrid
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [occupiedNum]
    bufferOffset = _serializer.uint32(obj.occupiedNum, buffer, bufferOffset);
    // Serialize message field [grid_x_length]
    bufferOffset = _serializer.float32(obj.grid_x_length, buffer, bufferOffset);
    // Serialize message field [grid_y_length]
    bufferOffset = _serializer.float32(obj.grid_y_length, buffer, bufferOffset);
    // Serialize message field [grid_x]
    bufferOffset = _arraySerializer.float32(obj.grid_x, buffer, bufferOffset, null);
    // Serialize message field [grid_y]
    bufferOffset = _arraySerializer.float32(obj.grid_y, buffer, bufferOffset, null);
    // Serialize message field [reserved_a]
    bufferOffset = _serializer.float32(obj.reserved_a, buffer, bufferOffset);
    // Serialize message field [reserved_b]
    bufferOffset = _serializer.float32(obj.reserved_b, buffer, bufferOffset);
    // Serialize message field [reserved_c]
    bufferOffset = _serializer.float32(obj.reserved_c, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OccupiedGrid
    let len;
    let data = new OccupiedGrid(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [occupiedNum]
    data.occupiedNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [grid_x_length]
    data.grid_x_length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [grid_y_length]
    data.grid_y_length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [grid_x]
    data.grid_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [grid_y]
    data.grid_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reserved_a]
    data.reserved_a = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_b]
    data.reserved_b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_c]
    data.reserved_c = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.grid_x.length;
    length += 4 * object.grid_y.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/OccupiedGrid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fca44ea0183b5e4ef2b30eb2023b28ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header                   # Includes measurement timestamp and coordinate frame.
    uint32 radarID                  # radar ID
    uint32 frameCnt                 # frame cnt in radar
    uint32 occupiedNum              # number of grid
    float32 grid_x_length           # length of grid along x axis
    float32 grid_y_length           # length of grid along y axis
    float32[] grid_x                # Position x of grid, unit: m
    float32[] grid_y                # Position y of grid, unit: m
    float32 reserved_a
    float32 reserved_b
    float32 reserved_c
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
    const resolved = new OccupiedGrid(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radarID !== undefined) {
      resolved.radarID = msg.radarID;
    }
    else {
      resolved.radarID = 0
    }

    if (msg.frameCnt !== undefined) {
      resolved.frameCnt = msg.frameCnt;
    }
    else {
      resolved.frameCnt = 0
    }

    if (msg.occupiedNum !== undefined) {
      resolved.occupiedNum = msg.occupiedNum;
    }
    else {
      resolved.occupiedNum = 0
    }

    if (msg.grid_x_length !== undefined) {
      resolved.grid_x_length = msg.grid_x_length;
    }
    else {
      resolved.grid_x_length = 0.0
    }

    if (msg.grid_y_length !== undefined) {
      resolved.grid_y_length = msg.grid_y_length;
    }
    else {
      resolved.grid_y_length = 0.0
    }

    if (msg.grid_x !== undefined) {
      resolved.grid_x = msg.grid_x;
    }
    else {
      resolved.grid_x = []
    }

    if (msg.grid_y !== undefined) {
      resolved.grid_y = msg.grid_y;
    }
    else {
      resolved.grid_y = []
    }

    if (msg.reserved_a !== undefined) {
      resolved.reserved_a = msg.reserved_a;
    }
    else {
      resolved.reserved_a = 0.0
    }

    if (msg.reserved_b !== undefined) {
      resolved.reserved_b = msg.reserved_b;
    }
    else {
      resolved.reserved_b = 0.0
    }

    if (msg.reserved_c !== undefined) {
      resolved.reserved_c = msg.reserved_c;
    }
    else {
      resolved.reserved_c = 0.0
    }

    return resolved;
    }
};

module.exports = OccupiedGrid;
