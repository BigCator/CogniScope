// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SystemStateTemp = require('./SystemStateTemp.js');
let SystemStatsLoad = require('./SystemStatsLoad.js');
let SystemStatsheap = require('./SystemStatsheap.js');
let SystemStatsheapArr = require('./SystemStatsheapArr.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStateWoPtp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.temp = null;
      this.voltage = null;
      this.freq = null;
      this.load = null;
      this.primaryHeap = null;
      this.heapArr = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = new Array(5).fill(new SystemStateTemp());
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = new Array(10).fill(new SystemStatsLoad());
      }
      if (initObj.hasOwnProperty('primaryHeap')) {
        this.primaryHeap = initObj.primaryHeap
      }
      else {
        this.primaryHeap = new Array(4).fill(new SystemStatsheap());
      }
      if (initObj.hasOwnProperty('heapArr')) {
        this.heapArr = initObj.heapArr
      }
      else {
        this.heapArr = new Array(9).fill(new SystemStatsheapArr());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStateWoPtp
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [temp] has the right length
    if (obj.temp.length !== 5) {
      throw new Error('Unable to serialize array field temp - length must be 5')
    }
    // Serialize message field [temp]
    obj.temp.forEach((val) => {
      bufferOffset = SystemStateTemp.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [voltage] has the right length
    if (obj.voltage.length !== 5) {
      throw new Error('Unable to serialize array field voltage - length must be 5')
    }
    // Serialize message field [voltage]
    bufferOffset = _arraySerializer.float32(obj.voltage, buffer, bufferOffset, 5);
    // Check that the constant length array field [freq] has the right length
    if (obj.freq.length !== 10) {
      throw new Error('Unable to serialize array field freq - length must be 10')
    }
    // Serialize message field [freq]
    bufferOffset = _arraySerializer.uint32(obj.freq, buffer, bufferOffset, 10);
    // Check that the constant length array field [load] has the right length
    if (obj.load.length !== 10) {
      throw new Error('Unable to serialize array field load - length must be 10')
    }
    // Serialize message field [load]
    obj.load.forEach((val) => {
      bufferOffset = SystemStatsLoad.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [primaryHeap] has the right length
    if (obj.primaryHeap.length !== 4) {
      throw new Error('Unable to serialize array field primaryHeap - length must be 4')
    }
    // Serialize message field [primaryHeap]
    obj.primaryHeap.forEach((val) => {
      bufferOffset = SystemStatsheap.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [heapArr] has the right length
    if (obj.heapArr.length !== 9) {
      throw new Error('Unable to serialize array field heapArr - length must be 9')
    }
    // Serialize message field [heapArr]
    obj.heapArr.forEach((val) => {
      bufferOffset = SystemStatsheapArr.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStateWoPtp
    let len;
    let data = new SystemStateWoPtp(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [temp]
    len = 5;
    data.temp = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.temp[i] = SystemStateTemp.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [voltage]
    data.voltage = _arrayDeserializer.float32(buffer, bufferOffset, 5)
    // Deserialize message field [freq]
    data.freq = _arrayDeserializer.uint32(buffer, bufferOffset, 10)
    // Deserialize message field [load]
    len = 10;
    data.load = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.load[i] = SystemStatsLoad.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [primaryHeap]
    len = 4;
    data.primaryHeap = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.primaryHeap[i] = SystemStatsheap.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [heapArr]
    len = 9;
    data.heapArr = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.heapArr[i] = SystemStatsheapArr.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 244;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemStateWoPtp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2347aeac5c0a8642643083e21097b3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header                      header  # Includes measurement timestamp and coordinate frame.
    SystemStateTemp[5]          temp
    float32[5]                  voltage
    uint32[10]                  freq
    SystemStatsLoad[10]         load
    SystemStatsheap[4]          primaryHeap
    SystemStatsheapArr[9]       heapArr
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
    
    ================================================================================
    MSG: radar_msgs/SystemStateTemp
    # Header header               # Includes measurement timestamp and coordinate frame.
    float32       minTemp
    float32       maxTemp
    ================================================================================
    MSG: radar_msgs/SystemStatsLoad
    # Header header               # Includes measurement timestamp and coordinate frame.
    # uint32      integerValue
    # uint32      fractionalValue
    float32     loadValue
    ================================================================================
    MSG: radar_msgs/SystemStatsheap
    # Header header               # Includes measurement timestamp and coordinate frame.
    uint32       heapSize
    uint32       freeSize
    ================================================================================
    MSG: radar_msgs/SystemStatsheapArr
    # Header header           # Includes measurement timestamp and coordinate frame.
    SystemStatsheap[2]     heap
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStateWoPtp(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.temp !== undefined) {
      resolved.temp = new Array(5)
      for (let i = 0; i < resolved.temp.length; ++i) {
        if (msg.temp.length > i) {
          resolved.temp[i] = SystemStateTemp.Resolve(msg.temp[i]);
        }
        else {
          resolved.temp[i] = new SystemStateTemp();
        }
      }
    }
    else {
      resolved.temp = new Array(5).fill(new SystemStateTemp())
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = new Array(5).fill(0)
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = new Array(10).fill(0)
    }

    if (msg.load !== undefined) {
      resolved.load = new Array(10)
      for (let i = 0; i < resolved.load.length; ++i) {
        if (msg.load.length > i) {
          resolved.load[i] = SystemStatsLoad.Resolve(msg.load[i]);
        }
        else {
          resolved.load[i] = new SystemStatsLoad();
        }
      }
    }
    else {
      resolved.load = new Array(10).fill(new SystemStatsLoad())
    }

    if (msg.primaryHeap !== undefined) {
      resolved.primaryHeap = new Array(4)
      for (let i = 0; i < resolved.primaryHeap.length; ++i) {
        if (msg.primaryHeap.length > i) {
          resolved.primaryHeap[i] = SystemStatsheap.Resolve(msg.primaryHeap[i]);
        }
        else {
          resolved.primaryHeap[i] = new SystemStatsheap();
        }
      }
    }
    else {
      resolved.primaryHeap = new Array(4).fill(new SystemStatsheap())
    }

    if (msg.heapArr !== undefined) {
      resolved.heapArr = new Array(9)
      for (let i = 0; i < resolved.heapArr.length; ++i) {
        if (msg.heapArr.length > i) {
          resolved.heapArr[i] = SystemStatsheapArr.Resolve(msg.heapArr[i]);
        }
        else {
          resolved.heapArr[i] = new SystemStatsheapArr();
        }
      }
    }
    else {
      resolved.heapArr = new Array(9).fill(new SystemStatsheapArr())
    }

    return resolved;
    }
};

module.exports = SystemStateWoPtp;
