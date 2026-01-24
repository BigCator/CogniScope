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

class RadarTarget {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.type = null;
      this.targetNum = null;
      this.polarState = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.v = null;
      this.azimuth = null;
      this.elevation = null;
      this.snr = null;
      this.power = null;
      this.valid_flg = null;
      this.existance_probability = null;
      this.motion_state = null;
      this.detection_class = null;
      this.reset_cnt = null;
      this.odTimeoutCnt = null;
      this.reserved_a = null;
      this.reserved_b = null;
      this.reserved_c = null;
      this.reserved_d = null;
      this.reserved_e = null;
      this.reserved_f = null;
      this.reserved_g = null;
      this.reserved_h = null;
      this.reserved_i = null;
      this.reserved_j = null;
      this.reserved_k = null;
      this.reserved_l = null;
      this.reserved_m = null;
      this.reserved_n = null;
      this.reserved_o = null;
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('targetNum')) {
        this.targetNum = initObj.targetNum
      }
      else {
        this.targetNum = 0;
      }
      if (initObj.hasOwnProperty('polarState')) {
        this.polarState = initObj.polarState
      }
      else {
        this.polarState = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = [];
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
      if (initObj.hasOwnProperty('elevation')) {
        this.elevation = initObj.elevation
      }
      else {
        this.elevation = [];
      }
      if (initObj.hasOwnProperty('snr')) {
        this.snr = initObj.snr
      }
      else {
        this.snr = [];
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = [];
      }
      if (initObj.hasOwnProperty('valid_flg')) {
        this.valid_flg = initObj.valid_flg
      }
      else {
        this.valid_flg = [];
      }
      if (initObj.hasOwnProperty('existance_probability')) {
        this.existance_probability = initObj.existance_probability
      }
      else {
        this.existance_probability = [];
      }
      if (initObj.hasOwnProperty('motion_state')) {
        this.motion_state = initObj.motion_state
      }
      else {
        this.motion_state = [];
      }
      if (initObj.hasOwnProperty('detection_class')) {
        this.detection_class = initObj.detection_class
      }
      else {
        this.detection_class = [];
      }
      if (initObj.hasOwnProperty('reset_cnt')) {
        this.reset_cnt = initObj.reset_cnt
      }
      else {
        this.reset_cnt = [];
      }
      if (initObj.hasOwnProperty('odTimeoutCnt')) {
        this.odTimeoutCnt = initObj.odTimeoutCnt
      }
      else {
        this.odTimeoutCnt = [];
      }
      if (initObj.hasOwnProperty('reserved_a')) {
        this.reserved_a = initObj.reserved_a
      }
      else {
        this.reserved_a = [];
      }
      if (initObj.hasOwnProperty('reserved_b')) {
        this.reserved_b = initObj.reserved_b
      }
      else {
        this.reserved_b = [];
      }
      if (initObj.hasOwnProperty('reserved_c')) {
        this.reserved_c = initObj.reserved_c
      }
      else {
        this.reserved_c = [];
      }
      if (initObj.hasOwnProperty('reserved_d')) {
        this.reserved_d = initObj.reserved_d
      }
      else {
        this.reserved_d = [];
      }
      if (initObj.hasOwnProperty('reserved_e')) {
        this.reserved_e = initObj.reserved_e
      }
      else {
        this.reserved_e = [];
      }
      if (initObj.hasOwnProperty('reserved_f')) {
        this.reserved_f = initObj.reserved_f
      }
      else {
        this.reserved_f = [];
      }
      if (initObj.hasOwnProperty('reserved_g')) {
        this.reserved_g = initObj.reserved_g
      }
      else {
        this.reserved_g = [];
      }
      if (initObj.hasOwnProperty('reserved_h')) {
        this.reserved_h = initObj.reserved_h
      }
      else {
        this.reserved_h = [];
      }
      if (initObj.hasOwnProperty('reserved_i')) {
        this.reserved_i = initObj.reserved_i
      }
      else {
        this.reserved_i = [];
      }
      if (initObj.hasOwnProperty('reserved_j')) {
        this.reserved_j = initObj.reserved_j
      }
      else {
        this.reserved_j = [];
      }
      if (initObj.hasOwnProperty('reserved_k')) {
        this.reserved_k = initObj.reserved_k
      }
      else {
        this.reserved_k = [];
      }
      if (initObj.hasOwnProperty('reserved_l')) {
        this.reserved_l = initObj.reserved_l
      }
      else {
        this.reserved_l = [];
      }
      if (initObj.hasOwnProperty('reserved_m')) {
        this.reserved_m = initObj.reserved_m
      }
      else {
        this.reserved_m = [];
      }
      if (initObj.hasOwnProperty('reserved_n')) {
        this.reserved_n = initObj.reserved_n
      }
      else {
        this.reserved_n = [];
      }
      if (initObj.hasOwnProperty('reserved_o')) {
        this.reserved_o = initObj.reserved_o
      }
      else {
        this.reserved_o = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarTarget
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint32(obj.type, buffer, bufferOffset);
    // Serialize message field [targetNum]
    bufferOffset = _serializer.uint32(obj.targetNum, buffer, bufferOffset);
    // Serialize message field [polarState]
    bufferOffset = _serializer.uint32(obj.polarState, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [z]
    bufferOffset = _arraySerializer.float32(obj.z, buffer, bufferOffset, null);
    // Serialize message field [v]
    bufferOffset = _arraySerializer.float32(obj.v, buffer, bufferOffset, null);
    // Serialize message field [azimuth]
    bufferOffset = _arraySerializer.float32(obj.azimuth, buffer, bufferOffset, null);
    // Serialize message field [elevation]
    bufferOffset = _arraySerializer.float32(obj.elevation, buffer, bufferOffset, null);
    // Serialize message field [snr]
    bufferOffset = _arraySerializer.float32(obj.snr, buffer, bufferOffset, null);
    // Serialize message field [power]
    bufferOffset = _arraySerializer.float32(obj.power, buffer, bufferOffset, null);
    // Serialize message field [valid_flg]
    bufferOffset = _arraySerializer.uint16(obj.valid_flg, buffer, bufferOffset, null);
    // Serialize message field [existance_probability]
    bufferOffset = _arraySerializer.uint16(obj.existance_probability, buffer, bufferOffset, null);
    // Serialize message field [motion_state]
    bufferOffset = _arraySerializer.uint16(obj.motion_state, buffer, bufferOffset, null);
    // Serialize message field [detection_class]
    bufferOffset = _arraySerializer.uint16(obj.detection_class, buffer, bufferOffset, null);
    // Serialize message field [reset_cnt]
    bufferOffset = _arraySerializer.uint16(obj.reset_cnt, buffer, bufferOffset, null);
    // Serialize message field [odTimeoutCnt]
    bufferOffset = _arraySerializer.int16(obj.odTimeoutCnt, buffer, bufferOffset, null);
    // Serialize message field [reserved_a]
    bufferOffset = _arraySerializer.uint16(obj.reserved_a, buffer, bufferOffset, null);
    // Serialize message field [reserved_b]
    bufferOffset = _arraySerializer.uint16(obj.reserved_b, buffer, bufferOffset, null);
    // Serialize message field [reserved_c]
    bufferOffset = _arraySerializer.uint16(obj.reserved_c, buffer, bufferOffset, null);
    // Serialize message field [reserved_d]
    bufferOffset = _arraySerializer.uint16(obj.reserved_d, buffer, bufferOffset, null);
    // Serialize message field [reserved_e]
    bufferOffset = _arraySerializer.uint16(obj.reserved_e, buffer, bufferOffset, null);
    // Serialize message field [reserved_f]
    bufferOffset = _arraySerializer.int16(obj.reserved_f, buffer, bufferOffset, null);
    // Serialize message field [reserved_g]
    bufferOffset = _arraySerializer.int16(obj.reserved_g, buffer, bufferOffset, null);
    // Serialize message field [reserved_h]
    bufferOffset = _arraySerializer.int16(obj.reserved_h, buffer, bufferOffset, null);
    // Serialize message field [reserved_i]
    bufferOffset = _arraySerializer.int16(obj.reserved_i, buffer, bufferOffset, null);
    // Serialize message field [reserved_j]
    bufferOffset = _arraySerializer.int16(obj.reserved_j, buffer, bufferOffset, null);
    // Serialize message field [reserved_k]
    bufferOffset = _arraySerializer.float32(obj.reserved_k, buffer, bufferOffset, null);
    // Serialize message field [reserved_l]
    bufferOffset = _arraySerializer.float32(obj.reserved_l, buffer, bufferOffset, null);
    // Serialize message field [reserved_m]
    bufferOffset = _arraySerializer.float32(obj.reserved_m, buffer, bufferOffset, null);
    // Serialize message field [reserved_n]
    bufferOffset = _arraySerializer.float32(obj.reserved_n, buffer, bufferOffset, null);
    // Serialize message field [reserved_o]
    bufferOffset = _arraySerializer.float32(obj.reserved_o, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarTarget
    let len;
    let data = new RadarTarget(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [targetNum]
    data.targetNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [polarState]
    data.polarState = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z]
    data.z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v]
    data.v = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [azimuth]
    data.azimuth = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [elevation]
    data.elevation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [snr]
    data.snr = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [power]
    data.power = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [valid_flg]
    data.valid_flg = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [existance_probability]
    data.existance_probability = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [motion_state]
    data.motion_state = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [detection_class]
    data.detection_class = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [reset_cnt]
    data.reset_cnt = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [odTimeoutCnt]
    data.odTimeoutCnt = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_a]
    data.reserved_a = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_b]
    data.reserved_b = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_c]
    data.reserved_c = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_d]
    data.reserved_d = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_e]
    data.reserved_e = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_f]
    data.reserved_f = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_g]
    data.reserved_g = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_h]
    data.reserved_h = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_i]
    data.reserved_i = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_j]
    data.reserved_j = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [reserved_k]
    data.reserved_k = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reserved_l]
    data.reserved_l = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reserved_m]
    data.reserved_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reserved_n]
    data.reserved_n = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reserved_o]
    data.reserved_o = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.z.length;
    length += 4 * object.v.length;
    length += 4 * object.azimuth.length;
    length += 4 * object.elevation.length;
    length += 4 * object.snr.length;
    length += 4 * object.power.length;
    length += 2 * object.valid_flg.length;
    length += 2 * object.existance_probability.length;
    length += 2 * object.motion_state.length;
    length += 2 * object.detection_class.length;
    length += 2 * object.reset_cnt.length;
    length += 2 * object.odTimeoutCnt.length;
    length += 2 * object.reserved_a.length;
    length += 2 * object.reserved_b.length;
    length += 2 * object.reserved_c.length;
    length += 2 * object.reserved_d.length;
    length += 2 * object.reserved_e.length;
    length += 2 * object.reserved_f.length;
    length += 2 * object.reserved_g.length;
    length += 2 * object.reserved_h.length;
    length += 2 * object.reserved_i.length;
    length += 2 * object.reserved_j.length;
    length += 4 * object.reserved_k.length;
    length += 4 * object.reserved_l.length;
    length += 4 * object.reserved_m.length;
    length += 4 * object.reserved_n.length;
    length += 4 * object.reserved_o.length;
    return length + 136;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RadarTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39cd070d450863c20128f17e660772a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header                   # Includes measurement timestamp and coordinate frame.
    uint32 radarID                  # radar ID
    uint32 frameCnt                 # frame cnt in radar
    uint32 type                     # default type = 1
    uint32 targetNum                # targets Num
    uint32 polarState               # true---数据是以极坐标方式提供,false---数据是以笛卡尔坐标系
    float32[] x                     # Position x, unit: m
    float32[] y                     # Position y, unit: m
    float32[] z                     # Position z, unit: m
    float32[] v                     # target velocity, unit: m/s
    float32[] azimuth               # target azimuth, unit: degree
    float32[] elevation             # target elevation, unit: degree
    float32[] snr                   # target snr, unit: dB
    float32[] power                 # target power, unit: dB
    uint16[] valid_flg              # target valid=0, target invalid=tbd
    uint16[] existance_probability  # 0 ~ 100
    uint16[] motion_state           # 0:static, 1:dynamic
    uint16[] detection_class        # 0 = NoClassification, 1 = Noise, 2 = Ground, 3 = TraversableUnder, 4 = Obstacle, 255 = Invalid
    uint16[] reset_cnt              # counter of radar reset times
    int16[] odTimeoutCnt            # counter of od process timeout
    uint16[] reserved_a             # temporarily set as frame lost cnt
    uint16[] reserved_b             
    uint16[] reserved_c             # temporarily set as pcl with extreme value and azimuth/elevation flag
    uint16[] reserved_d             
    uint16[] reserved_e             
    int16[] reserved_f              # temporarily set as before adc error cnt
    int16[] reserved_g              # temporarily set as after adc error cnt
    int16[] reserved_h              # temporarily set as extreme point flag
    int16[] reserved_i              # temporarily set as extreme value number
    int16[] reserved_j              # temporarily set as profile 0/1 flag
    float32[] reserved_k
    float32[] reserved_l
    float32[] reserved_m
    float32[] reserved_n
    float32[] reserved_o
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
    const resolved = new RadarTarget(null);
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

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.targetNum !== undefined) {
      resolved.targetNum = msg.targetNum;
    }
    else {
      resolved.targetNum = 0
    }

    if (msg.polarState !== undefined) {
      resolved.polarState = msg.polarState;
    }
    else {
      resolved.polarState = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = []
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

    if (msg.elevation !== undefined) {
      resolved.elevation = msg.elevation;
    }
    else {
      resolved.elevation = []
    }

    if (msg.snr !== undefined) {
      resolved.snr = msg.snr;
    }
    else {
      resolved.snr = []
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = []
    }

    if (msg.valid_flg !== undefined) {
      resolved.valid_flg = msg.valid_flg;
    }
    else {
      resolved.valid_flg = []
    }

    if (msg.existance_probability !== undefined) {
      resolved.existance_probability = msg.existance_probability;
    }
    else {
      resolved.existance_probability = []
    }

    if (msg.motion_state !== undefined) {
      resolved.motion_state = msg.motion_state;
    }
    else {
      resolved.motion_state = []
    }

    if (msg.detection_class !== undefined) {
      resolved.detection_class = msg.detection_class;
    }
    else {
      resolved.detection_class = []
    }

    if (msg.reset_cnt !== undefined) {
      resolved.reset_cnt = msg.reset_cnt;
    }
    else {
      resolved.reset_cnt = []
    }

    if (msg.odTimeoutCnt !== undefined) {
      resolved.odTimeoutCnt = msg.odTimeoutCnt;
    }
    else {
      resolved.odTimeoutCnt = []
    }

    if (msg.reserved_a !== undefined) {
      resolved.reserved_a = msg.reserved_a;
    }
    else {
      resolved.reserved_a = []
    }

    if (msg.reserved_b !== undefined) {
      resolved.reserved_b = msg.reserved_b;
    }
    else {
      resolved.reserved_b = []
    }

    if (msg.reserved_c !== undefined) {
      resolved.reserved_c = msg.reserved_c;
    }
    else {
      resolved.reserved_c = []
    }

    if (msg.reserved_d !== undefined) {
      resolved.reserved_d = msg.reserved_d;
    }
    else {
      resolved.reserved_d = []
    }

    if (msg.reserved_e !== undefined) {
      resolved.reserved_e = msg.reserved_e;
    }
    else {
      resolved.reserved_e = []
    }

    if (msg.reserved_f !== undefined) {
      resolved.reserved_f = msg.reserved_f;
    }
    else {
      resolved.reserved_f = []
    }

    if (msg.reserved_g !== undefined) {
      resolved.reserved_g = msg.reserved_g;
    }
    else {
      resolved.reserved_g = []
    }

    if (msg.reserved_h !== undefined) {
      resolved.reserved_h = msg.reserved_h;
    }
    else {
      resolved.reserved_h = []
    }

    if (msg.reserved_i !== undefined) {
      resolved.reserved_i = msg.reserved_i;
    }
    else {
      resolved.reserved_i = []
    }

    if (msg.reserved_j !== undefined) {
      resolved.reserved_j = msg.reserved_j;
    }
    else {
      resolved.reserved_j = []
    }

    if (msg.reserved_k !== undefined) {
      resolved.reserved_k = msg.reserved_k;
    }
    else {
      resolved.reserved_k = []
    }

    if (msg.reserved_l !== undefined) {
      resolved.reserved_l = msg.reserved_l;
    }
    else {
      resolved.reserved_l = []
    }

    if (msg.reserved_m !== undefined) {
      resolved.reserved_m = msg.reserved_m;
    }
    else {
      resolved.reserved_m = []
    }

    if (msg.reserved_n !== undefined) {
      resolved.reserved_n = msg.reserved_n;
    }
    else {
      resolved.reserved_n = []
    }

    if (msg.reserved_o !== undefined) {
      resolved.reserved_o = msg.reserved_o;
    }
    else {
      resolved.reserved_o = []
    }

    return resolved;
    }
};

module.exports = RadarTarget;
