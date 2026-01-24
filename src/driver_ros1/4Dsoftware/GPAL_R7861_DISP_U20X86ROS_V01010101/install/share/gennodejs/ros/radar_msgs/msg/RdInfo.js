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

class RdInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frameID = null;
      this.cfarCount = null;
      this.targetNum = null;
      this.resetcnt = null;
      this.objNum = null;
      this.carSpeed = null;
      this.carYawRate = null;
      this.gearState = null;
      this.odTimeoutCnt = null;
      this.comProtV_I = null;
      this.comProtV_II = null;
      this.frameLostCnt = null;
      this.beforeAdcErrCnt = null;
      this.afterAdcErrCnt = null;
      this.udpFrameLostCnt = null;
      this.udpFreq = null;
      this.timeSyncStatus = null;
      this.velEstimate = null;
      this.gndK = null;
      this.gndB = null;
      this.pcl_time = null;
      this.od_time = null;
      this.RdFrameLostCnt = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
      if (initObj.hasOwnProperty('targetNum')) {
        this.targetNum = initObj.targetNum
      }
      else {
        this.targetNum = 0;
      }
      if (initObj.hasOwnProperty('resetcnt')) {
        this.resetcnt = initObj.resetcnt
      }
      else {
        this.resetcnt = 0;
      }
      if (initObj.hasOwnProperty('objNum')) {
        this.objNum = initObj.objNum
      }
      else {
        this.objNum = 0;
      }
      if (initObj.hasOwnProperty('carSpeed')) {
        this.carSpeed = initObj.carSpeed
      }
      else {
        this.carSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('carYawRate')) {
        this.carYawRate = initObj.carYawRate
      }
      else {
        this.carYawRate = 0.0;
      }
      if (initObj.hasOwnProperty('gearState')) {
        this.gearState = initObj.gearState
      }
      else {
        this.gearState = 0;
      }
      if (initObj.hasOwnProperty('odTimeoutCnt')) {
        this.odTimeoutCnt = initObj.odTimeoutCnt
      }
      else {
        this.odTimeoutCnt = 0;
      }
      if (initObj.hasOwnProperty('comProtV_I')) {
        this.comProtV_I = initObj.comProtV_I
      }
      else {
        this.comProtV_I = 0;
      }
      if (initObj.hasOwnProperty('comProtV_II')) {
        this.comProtV_II = initObj.comProtV_II
      }
      else {
        this.comProtV_II = 0;
      }
      if (initObj.hasOwnProperty('frameLostCnt')) {
        this.frameLostCnt = initObj.frameLostCnt
      }
      else {
        this.frameLostCnt = 0;
      }
      if (initObj.hasOwnProperty('beforeAdcErrCnt')) {
        this.beforeAdcErrCnt = initObj.beforeAdcErrCnt
      }
      else {
        this.beforeAdcErrCnt = 0;
      }
      if (initObj.hasOwnProperty('afterAdcErrCnt')) {
        this.afterAdcErrCnt = initObj.afterAdcErrCnt
      }
      else {
        this.afterAdcErrCnt = 0;
      }
      if (initObj.hasOwnProperty('udpFrameLostCnt')) {
        this.udpFrameLostCnt = initObj.udpFrameLostCnt
      }
      else {
        this.udpFrameLostCnt = 0;
      }
      if (initObj.hasOwnProperty('udpFreq')) {
        this.udpFreq = initObj.udpFreq
      }
      else {
        this.udpFreq = 0.0;
      }
      if (initObj.hasOwnProperty('timeSyncStatus')) {
        this.timeSyncStatus = initObj.timeSyncStatus
      }
      else {
        this.timeSyncStatus = 0;
      }
      if (initObj.hasOwnProperty('velEstimate')) {
        this.velEstimate = initObj.velEstimate
      }
      else {
        this.velEstimate = 0.0;
      }
      if (initObj.hasOwnProperty('gndK')) {
        this.gndK = initObj.gndK
      }
      else {
        this.gndK = 0.0;
      }
      if (initObj.hasOwnProperty('gndB')) {
        this.gndB = initObj.gndB
      }
      else {
        this.gndB = 0.0;
      }
      if (initObj.hasOwnProperty('pcl_time')) {
        this.pcl_time = initObj.pcl_time
      }
      else {
        this.pcl_time = 0.0;
      }
      if (initObj.hasOwnProperty('od_time')) {
        this.od_time = initObj.od_time
      }
      else {
        this.od_time = 0.0;
      }
      if (initObj.hasOwnProperty('RdFrameLostCnt')) {
        this.RdFrameLostCnt = initObj.RdFrameLostCnt
      }
      else {
        this.RdFrameLostCnt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RdInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frameID]
    bufferOffset = _serializer.uint32(obj.frameID, buffer, bufferOffset);
    // Serialize message field [cfarCount]
    bufferOffset = _serializer.uint32(obj.cfarCount, buffer, bufferOffset);
    // Serialize message field [targetNum]
    bufferOffset = _serializer.uint32(obj.targetNum, buffer, bufferOffset);
    // Serialize message field [resetcnt]
    bufferOffset = _serializer.int16(obj.resetcnt, buffer, bufferOffset);
    // Serialize message field [objNum]
    bufferOffset = _serializer.uint32(obj.objNum, buffer, bufferOffset);
    // Serialize message field [carSpeed]
    bufferOffset = _serializer.float32(obj.carSpeed, buffer, bufferOffset);
    // Serialize message field [carYawRate]
    bufferOffset = _serializer.float32(obj.carYawRate, buffer, bufferOffset);
    // Serialize message field [gearState]
    bufferOffset = _serializer.uint16(obj.gearState, buffer, bufferOffset);
    // Serialize message field [odTimeoutCnt]
    bufferOffset = _serializer.int16(obj.odTimeoutCnt, buffer, bufferOffset);
    // Serialize message field [comProtV_I]
    bufferOffset = _serializer.uint16(obj.comProtV_I, buffer, bufferOffset);
    // Serialize message field [comProtV_II]
    bufferOffset = _serializer.uint16(obj.comProtV_II, buffer, bufferOffset);
    // Serialize message field [frameLostCnt]
    bufferOffset = _serializer.uint16(obj.frameLostCnt, buffer, bufferOffset);
    // Serialize message field [beforeAdcErrCnt]
    bufferOffset = _serializer.uint16(obj.beforeAdcErrCnt, buffer, bufferOffset);
    // Serialize message field [afterAdcErrCnt]
    bufferOffset = _serializer.uint16(obj.afterAdcErrCnt, buffer, bufferOffset);
    // Serialize message field [udpFrameLostCnt]
    bufferOffset = _serializer.uint32(obj.udpFrameLostCnt, buffer, bufferOffset);
    // Serialize message field [udpFreq]
    bufferOffset = _serializer.float32(obj.udpFreq, buffer, bufferOffset);
    // Serialize message field [timeSyncStatus]
    bufferOffset = _serializer.uint16(obj.timeSyncStatus, buffer, bufferOffset);
    // Serialize message field [velEstimate]
    bufferOffset = _serializer.float32(obj.velEstimate, buffer, bufferOffset);
    // Serialize message field [gndK]
    bufferOffset = _serializer.float32(obj.gndK, buffer, bufferOffset);
    // Serialize message field [gndB]
    bufferOffset = _serializer.float32(obj.gndB, buffer, bufferOffset);
    // Serialize message field [pcl_time]
    bufferOffset = _serializer.float32(obj.pcl_time, buffer, bufferOffset);
    // Serialize message field [od_time]
    bufferOffset = _serializer.float32(obj.od_time, buffer, bufferOffset);
    // Serialize message field [RdFrameLostCnt]
    bufferOffset = _serializer.uint32(obj.RdFrameLostCnt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RdInfo
    let len;
    let data = new RdInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frameID]
    data.frameID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cfarCount]
    data.cfarCount = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [targetNum]
    data.targetNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [resetcnt]
    data.resetcnt = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [objNum]
    data.objNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [carSpeed]
    data.carSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carYawRate]
    data.carYawRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gearState]
    data.gearState = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [odTimeoutCnt]
    data.odTimeoutCnt = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [comProtV_I]
    data.comProtV_I = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [comProtV_II]
    data.comProtV_II = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [frameLostCnt]
    data.frameLostCnt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [beforeAdcErrCnt]
    data.beforeAdcErrCnt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [afterAdcErrCnt]
    data.afterAdcErrCnt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpFrameLostCnt]
    data.udpFrameLostCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [udpFreq]
    data.udpFreq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeSyncStatus]
    data.timeSyncStatus = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [velEstimate]
    data.velEstimate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gndK]
    data.gndK = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gndB]
    data.gndB = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pcl_time]
    data.pcl_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [od_time]
    data.od_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RdFrameLostCnt]
    data.RdFrameLostCnt = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RdInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '990a952bd164911e0965074cc0babe8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header  header              # Includes measurement timestamp and coordinate frame.
    uint32  frameID
    uint32  cfarCount           # cfar count
    uint32  targetNum           # targets Num
    int16   resetcnt            # reset count
    uint32  objNum              # object number of this frame
    float32 carSpeed            # ego car speed
    float32 carYawRate          # ego car yaw rate
    uint16  gearState           # ego car gear state
    int16   odTimeoutCnt
    uint16  comProtV_I
    uint16  comProtV_II
    uint16  frameLostCnt        # frame lost count checked by ROS sw
    uint16  beforeAdcErrCnt
    uint16  afterAdcErrCnt
    uint32  udpFrameLostCnt     # counter of lost frames
    float32 udpFreq             # frames frequency in Hz
    uint16  timeSyncStatus      # status of time synchronization
    float32 velEstimate         # estimated car speed, m/s
    float32 gndK
    float32 gndB
    float32 pcl_time            # duration of od process (ms)
    float32 od_time             # duration of od process (ms)
    uint32  RdFrameLostCnt      # frame lost count in radar
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
    const resolved = new RdInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    if (msg.targetNum !== undefined) {
      resolved.targetNum = msg.targetNum;
    }
    else {
      resolved.targetNum = 0
    }

    if (msg.resetcnt !== undefined) {
      resolved.resetcnt = msg.resetcnt;
    }
    else {
      resolved.resetcnt = 0
    }

    if (msg.objNum !== undefined) {
      resolved.objNum = msg.objNum;
    }
    else {
      resolved.objNum = 0
    }

    if (msg.carSpeed !== undefined) {
      resolved.carSpeed = msg.carSpeed;
    }
    else {
      resolved.carSpeed = 0.0
    }

    if (msg.carYawRate !== undefined) {
      resolved.carYawRate = msg.carYawRate;
    }
    else {
      resolved.carYawRate = 0.0
    }

    if (msg.gearState !== undefined) {
      resolved.gearState = msg.gearState;
    }
    else {
      resolved.gearState = 0
    }

    if (msg.odTimeoutCnt !== undefined) {
      resolved.odTimeoutCnt = msg.odTimeoutCnt;
    }
    else {
      resolved.odTimeoutCnt = 0
    }

    if (msg.comProtV_I !== undefined) {
      resolved.comProtV_I = msg.comProtV_I;
    }
    else {
      resolved.comProtV_I = 0
    }

    if (msg.comProtV_II !== undefined) {
      resolved.comProtV_II = msg.comProtV_II;
    }
    else {
      resolved.comProtV_II = 0
    }

    if (msg.frameLostCnt !== undefined) {
      resolved.frameLostCnt = msg.frameLostCnt;
    }
    else {
      resolved.frameLostCnt = 0
    }

    if (msg.beforeAdcErrCnt !== undefined) {
      resolved.beforeAdcErrCnt = msg.beforeAdcErrCnt;
    }
    else {
      resolved.beforeAdcErrCnt = 0
    }

    if (msg.afterAdcErrCnt !== undefined) {
      resolved.afterAdcErrCnt = msg.afterAdcErrCnt;
    }
    else {
      resolved.afterAdcErrCnt = 0
    }

    if (msg.udpFrameLostCnt !== undefined) {
      resolved.udpFrameLostCnt = msg.udpFrameLostCnt;
    }
    else {
      resolved.udpFrameLostCnt = 0
    }

    if (msg.udpFreq !== undefined) {
      resolved.udpFreq = msg.udpFreq;
    }
    else {
      resolved.udpFreq = 0.0
    }

    if (msg.timeSyncStatus !== undefined) {
      resolved.timeSyncStatus = msg.timeSyncStatus;
    }
    else {
      resolved.timeSyncStatus = 0
    }

    if (msg.velEstimate !== undefined) {
      resolved.velEstimate = msg.velEstimate;
    }
    else {
      resolved.velEstimate = 0.0
    }

    if (msg.gndK !== undefined) {
      resolved.gndK = msg.gndK;
    }
    else {
      resolved.gndK = 0.0
    }

    if (msg.gndB !== undefined) {
      resolved.gndB = msg.gndB;
    }
    else {
      resolved.gndB = 0.0
    }

    if (msg.pcl_time !== undefined) {
      resolved.pcl_time = msg.pcl_time;
    }
    else {
      resolved.pcl_time = 0.0
    }

    if (msg.od_time !== undefined) {
      resolved.od_time = msg.od_time;
    }
    else {
      resolved.od_time = 0.0
    }

    if (msg.RdFrameLostCnt !== undefined) {
      resolved.RdFrameLostCnt = msg.RdFrameLostCnt;
    }
    else {
      resolved.RdFrameLostCnt = 0
    }

    return resolved;
    }
};

module.exports = RdInfo;
