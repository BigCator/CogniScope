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

class ProcessStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.captureTime = null;
      this.frameLostCnt = null;
      this.adcErrCnt = null;
      this.reserved_a = null;
      this.reserved_b = null;
      this.time1DFFT = null;
      this.reserved_c = null;
      this.reserved_d = null;
      this.reserved_e = null;
      this.reserved_f = null;
      this.time2DFFT = null;
      this.reserved_g = null;
      this.reserved_h = null;
      this.reserved_i = null;
      this.reserved_j = null;
      this.timeRDMap = null;
      this.reserved_k = null;
      this.reserved_l = null;
      this.reserved_m = null;
      this.reserved_n = null;
      this.timeCfar = null;
      this.reserved_o = null;
      this.reserved_p = null;
      this.reserved_q = null;
      this.reserved_r = null;
      this.timeDOA = null;
      this.reserved_s = null;
      this.reserved_t = null;
      this.reserved_u = null;
      this.reserved_v = null;
      this.timePCL = null;
      this.reserved_w = null;
      this.reserved_x = null;
      this.reserved_y = null;
      this.reserved_z = null;
      this.timeOD = null;
      this.odTimeoutCnt = null;
      this.selfCaliStatus = null;
      this.reserved_aa = null;
      this.reserved_ab = null;
      this.reserved_ac = null;
      this.reserved_ad = null;
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
      if (initObj.hasOwnProperty('captureTime')) {
        this.captureTime = initObj.captureTime
      }
      else {
        this.captureTime = 0.0;
      }
      if (initObj.hasOwnProperty('frameLostCnt')) {
        this.frameLostCnt = initObj.frameLostCnt
      }
      else {
        this.frameLostCnt = 0;
      }
      if (initObj.hasOwnProperty('adcErrCnt')) {
        this.adcErrCnt = initObj.adcErrCnt
      }
      else {
        this.adcErrCnt = 0;
      }
      if (initObj.hasOwnProperty('reserved_a')) {
        this.reserved_a = initObj.reserved_a
      }
      else {
        this.reserved_a = 0;
      }
      if (initObj.hasOwnProperty('reserved_b')) {
        this.reserved_b = initObj.reserved_b
      }
      else {
        this.reserved_b = 0;
      }
      if (initObj.hasOwnProperty('time1DFFT')) {
        this.time1DFFT = initObj.time1DFFT
      }
      else {
        this.time1DFFT = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_c')) {
        this.reserved_c = initObj.reserved_c
      }
      else {
        this.reserved_c = 0;
      }
      if (initObj.hasOwnProperty('reserved_d')) {
        this.reserved_d = initObj.reserved_d
      }
      else {
        this.reserved_d = 0;
      }
      if (initObj.hasOwnProperty('reserved_e')) {
        this.reserved_e = initObj.reserved_e
      }
      else {
        this.reserved_e = 0;
      }
      if (initObj.hasOwnProperty('reserved_f')) {
        this.reserved_f = initObj.reserved_f
      }
      else {
        this.reserved_f = 0;
      }
      if (initObj.hasOwnProperty('time2DFFT')) {
        this.time2DFFT = initObj.time2DFFT
      }
      else {
        this.time2DFFT = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_g')) {
        this.reserved_g = initObj.reserved_g
      }
      else {
        this.reserved_g = 0;
      }
      if (initObj.hasOwnProperty('reserved_h')) {
        this.reserved_h = initObj.reserved_h
      }
      else {
        this.reserved_h = 0;
      }
      if (initObj.hasOwnProperty('reserved_i')) {
        this.reserved_i = initObj.reserved_i
      }
      else {
        this.reserved_i = 0;
      }
      if (initObj.hasOwnProperty('reserved_j')) {
        this.reserved_j = initObj.reserved_j
      }
      else {
        this.reserved_j = 0;
      }
      if (initObj.hasOwnProperty('timeRDMap')) {
        this.timeRDMap = initObj.timeRDMap
      }
      else {
        this.timeRDMap = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_k')) {
        this.reserved_k = initObj.reserved_k
      }
      else {
        this.reserved_k = 0;
      }
      if (initObj.hasOwnProperty('reserved_l')) {
        this.reserved_l = initObj.reserved_l
      }
      else {
        this.reserved_l = 0;
      }
      if (initObj.hasOwnProperty('reserved_m')) {
        this.reserved_m = initObj.reserved_m
      }
      else {
        this.reserved_m = 0;
      }
      if (initObj.hasOwnProperty('reserved_n')) {
        this.reserved_n = initObj.reserved_n
      }
      else {
        this.reserved_n = 0;
      }
      if (initObj.hasOwnProperty('timeCfar')) {
        this.timeCfar = initObj.timeCfar
      }
      else {
        this.timeCfar = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_o')) {
        this.reserved_o = initObj.reserved_o
      }
      else {
        this.reserved_o = 0;
      }
      if (initObj.hasOwnProperty('reserved_p')) {
        this.reserved_p = initObj.reserved_p
      }
      else {
        this.reserved_p = 0;
      }
      if (initObj.hasOwnProperty('reserved_q')) {
        this.reserved_q = initObj.reserved_q
      }
      else {
        this.reserved_q = 0;
      }
      if (initObj.hasOwnProperty('reserved_r')) {
        this.reserved_r = initObj.reserved_r
      }
      else {
        this.reserved_r = 0;
      }
      if (initObj.hasOwnProperty('timeDOA')) {
        this.timeDOA = initObj.timeDOA
      }
      else {
        this.timeDOA = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_s')) {
        this.reserved_s = initObj.reserved_s
      }
      else {
        this.reserved_s = 0;
      }
      if (initObj.hasOwnProperty('reserved_t')) {
        this.reserved_t = initObj.reserved_t
      }
      else {
        this.reserved_t = 0;
      }
      if (initObj.hasOwnProperty('reserved_u')) {
        this.reserved_u = initObj.reserved_u
      }
      else {
        this.reserved_u = 0;
      }
      if (initObj.hasOwnProperty('reserved_v')) {
        this.reserved_v = initObj.reserved_v
      }
      else {
        this.reserved_v = 0;
      }
      if (initObj.hasOwnProperty('timePCL')) {
        this.timePCL = initObj.timePCL
      }
      else {
        this.timePCL = 0.0;
      }
      if (initObj.hasOwnProperty('reserved_w')) {
        this.reserved_w = initObj.reserved_w
      }
      else {
        this.reserved_w = 0;
      }
      if (initObj.hasOwnProperty('reserved_x')) {
        this.reserved_x = initObj.reserved_x
      }
      else {
        this.reserved_x = 0;
      }
      if (initObj.hasOwnProperty('reserved_y')) {
        this.reserved_y = initObj.reserved_y
      }
      else {
        this.reserved_y = 0;
      }
      if (initObj.hasOwnProperty('reserved_z')) {
        this.reserved_z = initObj.reserved_z
      }
      else {
        this.reserved_z = 0;
      }
      if (initObj.hasOwnProperty('timeOD')) {
        this.timeOD = initObj.timeOD
      }
      else {
        this.timeOD = 0.0;
      }
      if (initObj.hasOwnProperty('odTimeoutCnt')) {
        this.odTimeoutCnt = initObj.odTimeoutCnt
      }
      else {
        this.odTimeoutCnt = 0;
      }
      if (initObj.hasOwnProperty('selfCaliStatus')) {
        this.selfCaliStatus = initObj.selfCaliStatus
      }
      else {
        this.selfCaliStatus = 0;
      }
      if (initObj.hasOwnProperty('reserved_aa')) {
        this.reserved_aa = initObj.reserved_aa
      }
      else {
        this.reserved_aa = 0;
      }
      if (initObj.hasOwnProperty('reserved_ab')) {
        this.reserved_ab = initObj.reserved_ab
      }
      else {
        this.reserved_ab = 0;
      }
      if (initObj.hasOwnProperty('reserved_ac')) {
        this.reserved_ac = initObj.reserved_ac
      }
      else {
        this.reserved_ac = 0;
      }
      if (initObj.hasOwnProperty('reserved_ad')) {
        this.reserved_ad = initObj.reserved_ad
      }
      else {
        this.reserved_ad = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [captureTime]
    bufferOffset = _serializer.float32(obj.captureTime, buffer, bufferOffset);
    // Serialize message field [frameLostCnt]
    bufferOffset = _serializer.uint32(obj.frameLostCnt, buffer, bufferOffset);
    // Serialize message field [adcErrCnt]
    bufferOffset = _serializer.uint32(obj.adcErrCnt, buffer, bufferOffset);
    // Serialize message field [reserved_a]
    bufferOffset = _serializer.uint32(obj.reserved_a, buffer, bufferOffset);
    // Serialize message field [reserved_b]
    bufferOffset = _serializer.uint32(obj.reserved_b, buffer, bufferOffset);
    // Serialize message field [time1DFFT]
    bufferOffset = _serializer.float32(obj.time1DFFT, buffer, bufferOffset);
    // Serialize message field [reserved_c]
    bufferOffset = _serializer.uint32(obj.reserved_c, buffer, bufferOffset);
    // Serialize message field [reserved_d]
    bufferOffset = _serializer.uint32(obj.reserved_d, buffer, bufferOffset);
    // Serialize message field [reserved_e]
    bufferOffset = _serializer.uint32(obj.reserved_e, buffer, bufferOffset);
    // Serialize message field [reserved_f]
    bufferOffset = _serializer.uint32(obj.reserved_f, buffer, bufferOffset);
    // Serialize message field [time2DFFT]
    bufferOffset = _serializer.float32(obj.time2DFFT, buffer, bufferOffset);
    // Serialize message field [reserved_g]
    bufferOffset = _serializer.uint32(obj.reserved_g, buffer, bufferOffset);
    // Serialize message field [reserved_h]
    bufferOffset = _serializer.uint32(obj.reserved_h, buffer, bufferOffset);
    // Serialize message field [reserved_i]
    bufferOffset = _serializer.uint32(obj.reserved_i, buffer, bufferOffset);
    // Serialize message field [reserved_j]
    bufferOffset = _serializer.uint32(obj.reserved_j, buffer, bufferOffset);
    // Serialize message field [timeRDMap]
    bufferOffset = _serializer.float32(obj.timeRDMap, buffer, bufferOffset);
    // Serialize message field [reserved_k]
    bufferOffset = _serializer.uint32(obj.reserved_k, buffer, bufferOffset);
    // Serialize message field [reserved_l]
    bufferOffset = _serializer.uint32(obj.reserved_l, buffer, bufferOffset);
    // Serialize message field [reserved_m]
    bufferOffset = _serializer.uint32(obj.reserved_m, buffer, bufferOffset);
    // Serialize message field [reserved_n]
    bufferOffset = _serializer.uint32(obj.reserved_n, buffer, bufferOffset);
    // Serialize message field [timeCfar]
    bufferOffset = _serializer.float32(obj.timeCfar, buffer, bufferOffset);
    // Serialize message field [reserved_o]
    bufferOffset = _serializer.uint32(obj.reserved_o, buffer, bufferOffset);
    // Serialize message field [reserved_p]
    bufferOffset = _serializer.uint32(obj.reserved_p, buffer, bufferOffset);
    // Serialize message field [reserved_q]
    bufferOffset = _serializer.uint32(obj.reserved_q, buffer, bufferOffset);
    // Serialize message field [reserved_r]
    bufferOffset = _serializer.uint32(obj.reserved_r, buffer, bufferOffset);
    // Serialize message field [timeDOA]
    bufferOffset = _serializer.float32(obj.timeDOA, buffer, bufferOffset);
    // Serialize message field [reserved_s]
    bufferOffset = _serializer.uint32(obj.reserved_s, buffer, bufferOffset);
    // Serialize message field [reserved_t]
    bufferOffset = _serializer.uint32(obj.reserved_t, buffer, bufferOffset);
    // Serialize message field [reserved_u]
    bufferOffset = _serializer.uint32(obj.reserved_u, buffer, bufferOffset);
    // Serialize message field [reserved_v]
    bufferOffset = _serializer.uint32(obj.reserved_v, buffer, bufferOffset);
    // Serialize message field [timePCL]
    bufferOffset = _serializer.float32(obj.timePCL, buffer, bufferOffset);
    // Serialize message field [reserved_w]
    bufferOffset = _serializer.uint32(obj.reserved_w, buffer, bufferOffset);
    // Serialize message field [reserved_x]
    bufferOffset = _serializer.uint32(obj.reserved_x, buffer, bufferOffset);
    // Serialize message field [reserved_y]
    bufferOffset = _serializer.uint32(obj.reserved_y, buffer, bufferOffset);
    // Serialize message field [reserved_z]
    bufferOffset = _serializer.uint32(obj.reserved_z, buffer, bufferOffset);
    // Serialize message field [timeOD]
    bufferOffset = _serializer.float32(obj.timeOD, buffer, bufferOffset);
    // Serialize message field [odTimeoutCnt]
    bufferOffset = _serializer.uint32(obj.odTimeoutCnt, buffer, bufferOffset);
    // Serialize message field [selfCaliStatus]
    bufferOffset = _serializer.int32(obj.selfCaliStatus, buffer, bufferOffset);
    // Serialize message field [reserved_aa]
    bufferOffset = _serializer.uint32(obj.reserved_aa, buffer, bufferOffset);
    // Serialize message field [reserved_ab]
    bufferOffset = _serializer.uint32(obj.reserved_ab, buffer, bufferOffset);
    // Serialize message field [reserved_ac]
    bufferOffset = _serializer.uint32(obj.reserved_ac, buffer, bufferOffset);
    // Serialize message field [reserved_ad]
    bufferOffset = _serializer.uint32(obj.reserved_ad, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessStatus
    let len;
    let data = new ProcessStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [captureTime]
    data.captureTime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frameLostCnt]
    data.frameLostCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [adcErrCnt]
    data.adcErrCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_a]
    data.reserved_a = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_b]
    data.reserved_b = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time1DFFT]
    data.time1DFFT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_c]
    data.reserved_c = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_d]
    data.reserved_d = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_e]
    data.reserved_e = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_f]
    data.reserved_f = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time2DFFT]
    data.time2DFFT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_g]
    data.reserved_g = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_h]
    data.reserved_h = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_i]
    data.reserved_i = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_j]
    data.reserved_j = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeRDMap]
    data.timeRDMap = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_k]
    data.reserved_k = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_l]
    data.reserved_l = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_m]
    data.reserved_m = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_n]
    data.reserved_n = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeCfar]
    data.timeCfar = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_o]
    data.reserved_o = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_p]
    data.reserved_p = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_q]
    data.reserved_q = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_r]
    data.reserved_r = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeDOA]
    data.timeDOA = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_s]
    data.reserved_s = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_t]
    data.reserved_t = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_u]
    data.reserved_u = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_v]
    data.reserved_v = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timePCL]
    data.timePCL = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved_w]
    data.reserved_w = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_x]
    data.reserved_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_y]
    data.reserved_y = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_z]
    data.reserved_z = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timeOD]
    data.timeOD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odTimeoutCnt]
    data.odTimeoutCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [selfCaliStatus]
    data.selfCaliStatus = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved_aa]
    data.reserved_aa = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_ab]
    data.reserved_ab = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_ac]
    data.reserved_ac = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reserved_ad]
    data.reserved_ad = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 176;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/ProcessStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b68402e7d30a9e6144470a4717d74aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header                   # Includes measurement timestamp and coordinate frame.
    uint32 radarID                  # radar ID
    uint32 frameCnt                 # frame cnt in radar
    float32 captureTime              # LSB=ms
    uint32 frameLostCnt             
    uint32 adcErrCnt       
    uint32 reserved_a
    uint32 reserved_b
    float32 time1DFFT                # LSB=ms
    uint32 reserved_c
    uint32 reserved_d
    uint32 reserved_e
    uint32 reserved_f
    float32 time2DFFT                # LSB=ms
    uint32 reserved_g
    uint32 reserved_h
    uint32 reserved_i
    uint32 reserved_j
    float32 timeRDMap                # LSB=ms
    uint32 reserved_k
    uint32 reserved_l
    uint32 reserved_m
    uint32 reserved_n
    float32 timeCfar                 # LSB=ms
    uint32 reserved_o
    uint32 reserved_p
    uint32 reserved_q
    uint32 reserved_r
    float32 timeDOA                  # LSB=ms
    uint32 reserved_s
    uint32 reserved_t
    uint32 reserved_u
    uint32 reserved_v
    float32 timePCL                  # LSB=ms
    uint32 reserved_w                # velocity Estimated
    uint32 reserved_x                # ground K
    uint32 reserved_y                # ground B
    uint32 reserved_z                # pcl delay time, LSB = 0.1ms
    float32 timeOD                   # LSB=ms
    uint32 odTimeoutCnt             
    int32  selfCaliStatus           # 0: cali fails; 1: pre-cali; 1~99: calibrating(in process); 100: cali success
    uint32 reserved_aa              # od delay time, LSB = 0.1ms
    uint32 reserved_ab
    uint32 reserved_ac
    uint32 reserved_ad
    
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
    const resolved = new ProcessStatus(null);
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

    if (msg.captureTime !== undefined) {
      resolved.captureTime = msg.captureTime;
    }
    else {
      resolved.captureTime = 0.0
    }

    if (msg.frameLostCnt !== undefined) {
      resolved.frameLostCnt = msg.frameLostCnt;
    }
    else {
      resolved.frameLostCnt = 0
    }

    if (msg.adcErrCnt !== undefined) {
      resolved.adcErrCnt = msg.adcErrCnt;
    }
    else {
      resolved.adcErrCnt = 0
    }

    if (msg.reserved_a !== undefined) {
      resolved.reserved_a = msg.reserved_a;
    }
    else {
      resolved.reserved_a = 0
    }

    if (msg.reserved_b !== undefined) {
      resolved.reserved_b = msg.reserved_b;
    }
    else {
      resolved.reserved_b = 0
    }

    if (msg.time1DFFT !== undefined) {
      resolved.time1DFFT = msg.time1DFFT;
    }
    else {
      resolved.time1DFFT = 0.0
    }

    if (msg.reserved_c !== undefined) {
      resolved.reserved_c = msg.reserved_c;
    }
    else {
      resolved.reserved_c = 0
    }

    if (msg.reserved_d !== undefined) {
      resolved.reserved_d = msg.reserved_d;
    }
    else {
      resolved.reserved_d = 0
    }

    if (msg.reserved_e !== undefined) {
      resolved.reserved_e = msg.reserved_e;
    }
    else {
      resolved.reserved_e = 0
    }

    if (msg.reserved_f !== undefined) {
      resolved.reserved_f = msg.reserved_f;
    }
    else {
      resolved.reserved_f = 0
    }

    if (msg.time2DFFT !== undefined) {
      resolved.time2DFFT = msg.time2DFFT;
    }
    else {
      resolved.time2DFFT = 0.0
    }

    if (msg.reserved_g !== undefined) {
      resolved.reserved_g = msg.reserved_g;
    }
    else {
      resolved.reserved_g = 0
    }

    if (msg.reserved_h !== undefined) {
      resolved.reserved_h = msg.reserved_h;
    }
    else {
      resolved.reserved_h = 0
    }

    if (msg.reserved_i !== undefined) {
      resolved.reserved_i = msg.reserved_i;
    }
    else {
      resolved.reserved_i = 0
    }

    if (msg.reserved_j !== undefined) {
      resolved.reserved_j = msg.reserved_j;
    }
    else {
      resolved.reserved_j = 0
    }

    if (msg.timeRDMap !== undefined) {
      resolved.timeRDMap = msg.timeRDMap;
    }
    else {
      resolved.timeRDMap = 0.0
    }

    if (msg.reserved_k !== undefined) {
      resolved.reserved_k = msg.reserved_k;
    }
    else {
      resolved.reserved_k = 0
    }

    if (msg.reserved_l !== undefined) {
      resolved.reserved_l = msg.reserved_l;
    }
    else {
      resolved.reserved_l = 0
    }

    if (msg.reserved_m !== undefined) {
      resolved.reserved_m = msg.reserved_m;
    }
    else {
      resolved.reserved_m = 0
    }

    if (msg.reserved_n !== undefined) {
      resolved.reserved_n = msg.reserved_n;
    }
    else {
      resolved.reserved_n = 0
    }

    if (msg.timeCfar !== undefined) {
      resolved.timeCfar = msg.timeCfar;
    }
    else {
      resolved.timeCfar = 0.0
    }

    if (msg.reserved_o !== undefined) {
      resolved.reserved_o = msg.reserved_o;
    }
    else {
      resolved.reserved_o = 0
    }

    if (msg.reserved_p !== undefined) {
      resolved.reserved_p = msg.reserved_p;
    }
    else {
      resolved.reserved_p = 0
    }

    if (msg.reserved_q !== undefined) {
      resolved.reserved_q = msg.reserved_q;
    }
    else {
      resolved.reserved_q = 0
    }

    if (msg.reserved_r !== undefined) {
      resolved.reserved_r = msg.reserved_r;
    }
    else {
      resolved.reserved_r = 0
    }

    if (msg.timeDOA !== undefined) {
      resolved.timeDOA = msg.timeDOA;
    }
    else {
      resolved.timeDOA = 0.0
    }

    if (msg.reserved_s !== undefined) {
      resolved.reserved_s = msg.reserved_s;
    }
    else {
      resolved.reserved_s = 0
    }

    if (msg.reserved_t !== undefined) {
      resolved.reserved_t = msg.reserved_t;
    }
    else {
      resolved.reserved_t = 0
    }

    if (msg.reserved_u !== undefined) {
      resolved.reserved_u = msg.reserved_u;
    }
    else {
      resolved.reserved_u = 0
    }

    if (msg.reserved_v !== undefined) {
      resolved.reserved_v = msg.reserved_v;
    }
    else {
      resolved.reserved_v = 0
    }

    if (msg.timePCL !== undefined) {
      resolved.timePCL = msg.timePCL;
    }
    else {
      resolved.timePCL = 0.0
    }

    if (msg.reserved_w !== undefined) {
      resolved.reserved_w = msg.reserved_w;
    }
    else {
      resolved.reserved_w = 0
    }

    if (msg.reserved_x !== undefined) {
      resolved.reserved_x = msg.reserved_x;
    }
    else {
      resolved.reserved_x = 0
    }

    if (msg.reserved_y !== undefined) {
      resolved.reserved_y = msg.reserved_y;
    }
    else {
      resolved.reserved_y = 0
    }

    if (msg.reserved_z !== undefined) {
      resolved.reserved_z = msg.reserved_z;
    }
    else {
      resolved.reserved_z = 0
    }

    if (msg.timeOD !== undefined) {
      resolved.timeOD = msg.timeOD;
    }
    else {
      resolved.timeOD = 0.0
    }

    if (msg.odTimeoutCnt !== undefined) {
      resolved.odTimeoutCnt = msg.odTimeoutCnt;
    }
    else {
      resolved.odTimeoutCnt = 0
    }

    if (msg.selfCaliStatus !== undefined) {
      resolved.selfCaliStatus = msg.selfCaliStatus;
    }
    else {
      resolved.selfCaliStatus = 0
    }

    if (msg.reserved_aa !== undefined) {
      resolved.reserved_aa = msg.reserved_aa;
    }
    else {
      resolved.reserved_aa = 0
    }

    if (msg.reserved_ab !== undefined) {
      resolved.reserved_ab = msg.reserved_ab;
    }
    else {
      resolved.reserved_ab = 0
    }

    if (msg.reserved_ac !== undefined) {
      resolved.reserved_ac = msg.reserved_ac;
    }
    else {
      resolved.reserved_ac = 0
    }

    if (msg.reserved_ad !== undefined) {
      resolved.reserved_ad = msg.reserved_ad;
    }
    else {
      resolved.reserved_ad = 0
    }

    return resolved;
    }
};

module.exports = ProcessStatus;
