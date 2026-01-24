// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackingObj = require('./TrackingObj.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackingObjArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objNum = null;
      this.tracking_obj = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objNum')) {
        this.objNum = initObj.objNum
      }
      else {
        this.objNum = 0;
      }
      if (initObj.hasOwnProperty('tracking_obj')) {
        this.tracking_obj = initObj.tracking_obj
      }
      else {
        this.tracking_obj = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackingObjArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objNum]
    bufferOffset = _serializer.int32(obj.objNum, buffer, bufferOffset);
    // Serialize message field [tracking_obj]
    // Serialize the length for message field [tracking_obj]
    bufferOffset = _serializer.uint32(obj.tracking_obj.length, buffer, bufferOffset);
    obj.tracking_obj.forEach((val) => {
      bufferOffset = TrackingObj.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingObjArray
    let len;
    let data = new TrackingObjArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objNum]
    data.objNum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tracking_obj]
    // Deserialize array length for message field [tracking_obj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracking_obj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracking_obj[i] = TrackingObj.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.tracking_obj.forEach((val) => {
      length += TrackingObj.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/TrackingObjArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b34bff7537df64fb479e0b5fde04d870';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header          header               # Includes measurement timestamp and coordinate frame.
    int32           objNum               # quantity of objects
    TrackingObj[]   tracking_obj         # array of tracking objects
    
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
    MSG: radar_msgs/TrackingObj
    Header    header               # Includes measurement timestamp and coordinate frame.
    uint32    radarID              # radar ID
    uint32    frameCnt             # frame cnt in radar
    uint32    objNum               # object number of this frame
    uint32[]  object_ID            # object ID
    uint16[]  age                  # total frames from the object occurs
    uint8[]   measurement_status   # track status (0: measured; 1: new; 2: predicted)
    uint8[]   motion_state         # movement state ( 0: static; 1: dynamic)
    uint8[]   existance_confidence # existance confidence
    float32[] position_x           # x value of central point
    float32[] position_y           # y value of central point
    float32[] position_z           # z value of central point
    float32[] velocity_x           # relative velocity of x orientation
    float32[] velocity_y           # relative velocity of y orientation
    float32[] velocity_z           # relative velocity of z orientation
    float32[] acceleration_x       # relative acceleration of x orientation
    float32[] acceleration_y       # relative acceleration of y orientation
    float32[] acceleration_z       # relative acceleration of z orientation
    float32[] v2ground_x           # velocity towards ground of x orientation
    float32[] v2ground_y           # velocity towards ground of y orientation
    float32[] v2ground_z           # velocity towards ground of z orientation
    float32[] orientation          # yaw, unit: degree
    uint8[]   type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)
    uint8[]  car_confidence       # car confidence
    uint8[]   bike_confidence      # bike confidence
    uint8[]   ped_confidence       # pedestrian confidence
    uint8[]   truck_confidence     # truck confidence
    uint8[]   signboard_confidence # signboard confidence
    uint8[]   ground_confidence    # ground confidence
    uint8[]   obstacle_confidence  # obstacle confidence
    float32[] length               # length
    float32[] width                # width
    float32[] height               # height
    float32[] od_process_time      # EnrollPtsNum
    float32[] Reserved_B           # NearestPtsX
    float32[] Reserved_C           # NearestPtsY
    float32[] Reserved_D           # NearestPtsZ
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackingObjArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objNum !== undefined) {
      resolved.objNum = msg.objNum;
    }
    else {
      resolved.objNum = 0
    }

    if (msg.tracking_obj !== undefined) {
      resolved.tracking_obj = new Array(msg.tracking_obj.length);
      for (let i = 0; i < resolved.tracking_obj.length; ++i) {
        resolved.tracking_obj[i] = TrackingObj.Resolve(msg.tracking_obj[i]);
      }
    }
    else {
      resolved.tracking_obj = []
    }

    return resolved;
    }
};

module.exports = TrackingObjArray;
