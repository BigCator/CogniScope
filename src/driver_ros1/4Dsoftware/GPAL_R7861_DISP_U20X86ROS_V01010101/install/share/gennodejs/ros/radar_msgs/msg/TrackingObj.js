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

class TrackingObj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.objNum = null;
      this.object_ID = null;
      this.age = null;
      this.measurement_status = null;
      this.motion_state = null;
      this.existance_confidence = null;
      this.position_x = null;
      this.position_y = null;
      this.position_z = null;
      this.velocity_x = null;
      this.velocity_y = null;
      this.velocity_z = null;
      this.acceleration_x = null;
      this.acceleration_y = null;
      this.acceleration_z = null;
      this.v2ground_x = null;
      this.v2ground_y = null;
      this.v2ground_z = null;
      this.orientation = null;
      this.type = null;
      this.car_confidence = null;
      this.bike_confidence = null;
      this.ped_confidence = null;
      this.truck_confidence = null;
      this.signboard_confidence = null;
      this.ground_confidence = null;
      this.obstacle_confidence = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.od_process_time = null;
      this.Reserved_B = null;
      this.Reserved_C = null;
      this.Reserved_D = null;
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
      if (initObj.hasOwnProperty('objNum')) {
        this.objNum = initObj.objNum
      }
      else {
        this.objNum = 0;
      }
      if (initObj.hasOwnProperty('object_ID')) {
        this.object_ID = initObj.object_ID
      }
      else {
        this.object_ID = [];
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = [];
      }
      if (initObj.hasOwnProperty('measurement_status')) {
        this.measurement_status = initObj.measurement_status
      }
      else {
        this.measurement_status = [];
      }
      if (initObj.hasOwnProperty('motion_state')) {
        this.motion_state = initObj.motion_state
      }
      else {
        this.motion_state = [];
      }
      if (initObj.hasOwnProperty('existance_confidence')) {
        this.existance_confidence = initObj.existance_confidence
      }
      else {
        this.existance_confidence = [];
      }
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = [];
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = [];
      }
      if (initObj.hasOwnProperty('position_z')) {
        this.position_z = initObj.position_z
      }
      else {
        this.position_z = [];
      }
      if (initObj.hasOwnProperty('velocity_x')) {
        this.velocity_x = initObj.velocity_x
      }
      else {
        this.velocity_x = [];
      }
      if (initObj.hasOwnProperty('velocity_y')) {
        this.velocity_y = initObj.velocity_y
      }
      else {
        this.velocity_y = [];
      }
      if (initObj.hasOwnProperty('velocity_z')) {
        this.velocity_z = initObj.velocity_z
      }
      else {
        this.velocity_z = [];
      }
      if (initObj.hasOwnProperty('acceleration_x')) {
        this.acceleration_x = initObj.acceleration_x
      }
      else {
        this.acceleration_x = [];
      }
      if (initObj.hasOwnProperty('acceleration_y')) {
        this.acceleration_y = initObj.acceleration_y
      }
      else {
        this.acceleration_y = [];
      }
      if (initObj.hasOwnProperty('acceleration_z')) {
        this.acceleration_z = initObj.acceleration_z
      }
      else {
        this.acceleration_z = [];
      }
      if (initObj.hasOwnProperty('v2ground_x')) {
        this.v2ground_x = initObj.v2ground_x
      }
      else {
        this.v2ground_x = [];
      }
      if (initObj.hasOwnProperty('v2ground_y')) {
        this.v2ground_y = initObj.v2ground_y
      }
      else {
        this.v2ground_y = [];
      }
      if (initObj.hasOwnProperty('v2ground_z')) {
        this.v2ground_z = initObj.v2ground_z
      }
      else {
        this.v2ground_z = [];
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = [];
      }
      if (initObj.hasOwnProperty('car_confidence')) {
        this.car_confidence = initObj.car_confidence
      }
      else {
        this.car_confidence = [];
      }
      if (initObj.hasOwnProperty('bike_confidence')) {
        this.bike_confidence = initObj.bike_confidence
      }
      else {
        this.bike_confidence = [];
      }
      if (initObj.hasOwnProperty('ped_confidence')) {
        this.ped_confidence = initObj.ped_confidence
      }
      else {
        this.ped_confidence = [];
      }
      if (initObj.hasOwnProperty('truck_confidence')) {
        this.truck_confidence = initObj.truck_confidence
      }
      else {
        this.truck_confidence = [];
      }
      if (initObj.hasOwnProperty('signboard_confidence')) {
        this.signboard_confidence = initObj.signboard_confidence
      }
      else {
        this.signboard_confidence = [];
      }
      if (initObj.hasOwnProperty('ground_confidence')) {
        this.ground_confidence = initObj.ground_confidence
      }
      else {
        this.ground_confidence = [];
      }
      if (initObj.hasOwnProperty('obstacle_confidence')) {
        this.obstacle_confidence = initObj.obstacle_confidence
      }
      else {
        this.obstacle_confidence = [];
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = [];
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = [];
      }
      if (initObj.hasOwnProperty('od_process_time')) {
        this.od_process_time = initObj.od_process_time
      }
      else {
        this.od_process_time = [];
      }
      if (initObj.hasOwnProperty('Reserved_B')) {
        this.Reserved_B = initObj.Reserved_B
      }
      else {
        this.Reserved_B = [];
      }
      if (initObj.hasOwnProperty('Reserved_C')) {
        this.Reserved_C = initObj.Reserved_C
      }
      else {
        this.Reserved_C = [];
      }
      if (initObj.hasOwnProperty('Reserved_D')) {
        this.Reserved_D = initObj.Reserved_D
      }
      else {
        this.Reserved_D = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackingObj
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [objNum]
    bufferOffset = _serializer.uint32(obj.objNum, buffer, bufferOffset);
    // Serialize message field [object_ID]
    bufferOffset = _arraySerializer.uint32(obj.object_ID, buffer, bufferOffset, null);
    // Serialize message field [age]
    bufferOffset = _arraySerializer.uint16(obj.age, buffer, bufferOffset, null);
    // Serialize message field [measurement_status]
    bufferOffset = _arraySerializer.uint8(obj.measurement_status, buffer, bufferOffset, null);
    // Serialize message field [motion_state]
    bufferOffset = _arraySerializer.uint8(obj.motion_state, buffer, bufferOffset, null);
    // Serialize message field [existance_confidence]
    bufferOffset = _arraySerializer.uint8(obj.existance_confidence, buffer, bufferOffset, null);
    // Serialize message field [position_x]
    bufferOffset = _arraySerializer.float32(obj.position_x, buffer, bufferOffset, null);
    // Serialize message field [position_y]
    bufferOffset = _arraySerializer.float32(obj.position_y, buffer, bufferOffset, null);
    // Serialize message field [position_z]
    bufferOffset = _arraySerializer.float32(obj.position_z, buffer, bufferOffset, null);
    // Serialize message field [velocity_x]
    bufferOffset = _arraySerializer.float32(obj.velocity_x, buffer, bufferOffset, null);
    // Serialize message field [velocity_y]
    bufferOffset = _arraySerializer.float32(obj.velocity_y, buffer, bufferOffset, null);
    // Serialize message field [velocity_z]
    bufferOffset = _arraySerializer.float32(obj.velocity_z, buffer, bufferOffset, null);
    // Serialize message field [acceleration_x]
    bufferOffset = _arraySerializer.float32(obj.acceleration_x, buffer, bufferOffset, null);
    // Serialize message field [acceleration_y]
    bufferOffset = _arraySerializer.float32(obj.acceleration_y, buffer, bufferOffset, null);
    // Serialize message field [acceleration_z]
    bufferOffset = _arraySerializer.float32(obj.acceleration_z, buffer, bufferOffset, null);
    // Serialize message field [v2ground_x]
    bufferOffset = _arraySerializer.float32(obj.v2ground_x, buffer, bufferOffset, null);
    // Serialize message field [v2ground_y]
    bufferOffset = _arraySerializer.float32(obj.v2ground_y, buffer, bufferOffset, null);
    // Serialize message field [v2ground_z]
    bufferOffset = _arraySerializer.float32(obj.v2ground_z, buffer, bufferOffset, null);
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _arraySerializer.uint8(obj.type, buffer, bufferOffset, null);
    // Serialize message field [car_confidence]
    bufferOffset = _arraySerializer.uint8(obj.car_confidence, buffer, bufferOffset, null);
    // Serialize message field [bike_confidence]
    bufferOffset = _arraySerializer.uint8(obj.bike_confidence, buffer, bufferOffset, null);
    // Serialize message field [ped_confidence]
    bufferOffset = _arraySerializer.uint8(obj.ped_confidence, buffer, bufferOffset, null);
    // Serialize message field [truck_confidence]
    bufferOffset = _arraySerializer.uint8(obj.truck_confidence, buffer, bufferOffset, null);
    // Serialize message field [signboard_confidence]
    bufferOffset = _arraySerializer.uint8(obj.signboard_confidence, buffer, bufferOffset, null);
    // Serialize message field [ground_confidence]
    bufferOffset = _arraySerializer.uint8(obj.ground_confidence, buffer, bufferOffset, null);
    // Serialize message field [obstacle_confidence]
    bufferOffset = _arraySerializer.uint8(obj.obstacle_confidence, buffer, bufferOffset, null);
    // Serialize message field [length]
    bufferOffset = _arraySerializer.float32(obj.length, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _arraySerializer.float32(obj.width, buffer, bufferOffset, null);
    // Serialize message field [height]
    bufferOffset = _arraySerializer.float32(obj.height, buffer, bufferOffset, null);
    // Serialize message field [od_process_time]
    bufferOffset = _arraySerializer.float32(obj.od_process_time, buffer, bufferOffset, null);
    // Serialize message field [Reserved_B]
    bufferOffset = _arraySerializer.float32(obj.Reserved_B, buffer, bufferOffset, null);
    // Serialize message field [Reserved_C]
    bufferOffset = _arraySerializer.float32(obj.Reserved_C, buffer, bufferOffset, null);
    // Serialize message field [Reserved_D]
    bufferOffset = _arraySerializer.float32(obj.Reserved_D, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingObj
    let len;
    let data = new TrackingObj(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [objNum]
    data.objNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [object_ID]
    data.object_ID = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [age]
    data.age = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [measurement_status]
    data.measurement_status = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [motion_state]
    data.motion_state = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [existance_confidence]
    data.existance_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [position_x]
    data.position_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [position_y]
    data.position_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [position_z]
    data.position_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocity_x]
    data.velocity_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocity_y]
    data.velocity_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocity_z]
    data.velocity_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [acceleration_x]
    data.acceleration_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [acceleration_y]
    data.acceleration_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [acceleration_z]
    data.acceleration_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v2ground_x]
    data.v2ground_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v2ground_y]
    data.v2ground_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v2ground_z]
    data.v2ground_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [car_confidence]
    data.car_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [bike_confidence]
    data.bike_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [ped_confidence]
    data.ped_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [truck_confidence]
    data.truck_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [signboard_confidence]
    data.signboard_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [ground_confidence]
    data.ground_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [obstacle_confidence]
    data.obstacle_confidence = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [length]
    data.length = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [height]
    data.height = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [od_process_time]
    data.od_process_time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [Reserved_B]
    data.Reserved_B = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [Reserved_C]
    data.Reserved_C = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [Reserved_D]
    data.Reserved_D = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.object_ID.length;
    length += 2 * object.age.length;
    length += object.measurement_status.length;
    length += object.motion_state.length;
    length += object.existance_confidence.length;
    length += 4 * object.position_x.length;
    length += 4 * object.position_y.length;
    length += 4 * object.position_z.length;
    length += 4 * object.velocity_x.length;
    length += 4 * object.velocity_y.length;
    length += 4 * object.velocity_z.length;
    length += 4 * object.acceleration_x.length;
    length += 4 * object.acceleration_y.length;
    length += 4 * object.acceleration_z.length;
    length += 4 * object.v2ground_x.length;
    length += 4 * object.v2ground_y.length;
    length += 4 * object.v2ground_z.length;
    length += 4 * object.orientation.length;
    length += object.type.length;
    length += object.car_confidence.length;
    length += object.bike_confidence.length;
    length += object.ped_confidence.length;
    length += object.truck_confidence.length;
    length += object.signboard_confidence.length;
    length += object.ground_confidence.length;
    length += object.obstacle_confidence.length;
    length += 4 * object.length.length;
    length += 4 * object.width.length;
    length += 4 * object.height.length;
    length += 4 * object.od_process_time.length;
    length += 4 * object.Reserved_B.length;
    length += 4 * object.Reserved_C.length;
    length += 4 * object.Reserved_D.length;
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/TrackingObj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4472a3692f65b382d654abf0488be272';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrackingObj(null);
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

    if (msg.objNum !== undefined) {
      resolved.objNum = msg.objNum;
    }
    else {
      resolved.objNum = 0
    }

    if (msg.object_ID !== undefined) {
      resolved.object_ID = msg.object_ID;
    }
    else {
      resolved.object_ID = []
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = []
    }

    if (msg.measurement_status !== undefined) {
      resolved.measurement_status = msg.measurement_status;
    }
    else {
      resolved.measurement_status = []
    }

    if (msg.motion_state !== undefined) {
      resolved.motion_state = msg.motion_state;
    }
    else {
      resolved.motion_state = []
    }

    if (msg.existance_confidence !== undefined) {
      resolved.existance_confidence = msg.existance_confidence;
    }
    else {
      resolved.existance_confidence = []
    }

    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = []
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = []
    }

    if (msg.position_z !== undefined) {
      resolved.position_z = msg.position_z;
    }
    else {
      resolved.position_z = []
    }

    if (msg.velocity_x !== undefined) {
      resolved.velocity_x = msg.velocity_x;
    }
    else {
      resolved.velocity_x = []
    }

    if (msg.velocity_y !== undefined) {
      resolved.velocity_y = msg.velocity_y;
    }
    else {
      resolved.velocity_y = []
    }

    if (msg.velocity_z !== undefined) {
      resolved.velocity_z = msg.velocity_z;
    }
    else {
      resolved.velocity_z = []
    }

    if (msg.acceleration_x !== undefined) {
      resolved.acceleration_x = msg.acceleration_x;
    }
    else {
      resolved.acceleration_x = []
    }

    if (msg.acceleration_y !== undefined) {
      resolved.acceleration_y = msg.acceleration_y;
    }
    else {
      resolved.acceleration_y = []
    }

    if (msg.acceleration_z !== undefined) {
      resolved.acceleration_z = msg.acceleration_z;
    }
    else {
      resolved.acceleration_z = []
    }

    if (msg.v2ground_x !== undefined) {
      resolved.v2ground_x = msg.v2ground_x;
    }
    else {
      resolved.v2ground_x = []
    }

    if (msg.v2ground_y !== undefined) {
      resolved.v2ground_y = msg.v2ground_y;
    }
    else {
      resolved.v2ground_y = []
    }

    if (msg.v2ground_z !== undefined) {
      resolved.v2ground_z = msg.v2ground_z;
    }
    else {
      resolved.v2ground_z = []
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = []
    }

    if (msg.car_confidence !== undefined) {
      resolved.car_confidence = msg.car_confidence;
    }
    else {
      resolved.car_confidence = []
    }

    if (msg.bike_confidence !== undefined) {
      resolved.bike_confidence = msg.bike_confidence;
    }
    else {
      resolved.bike_confidence = []
    }

    if (msg.ped_confidence !== undefined) {
      resolved.ped_confidence = msg.ped_confidence;
    }
    else {
      resolved.ped_confidence = []
    }

    if (msg.truck_confidence !== undefined) {
      resolved.truck_confidence = msg.truck_confidence;
    }
    else {
      resolved.truck_confidence = []
    }

    if (msg.signboard_confidence !== undefined) {
      resolved.signboard_confidence = msg.signboard_confidence;
    }
    else {
      resolved.signboard_confidence = []
    }

    if (msg.ground_confidence !== undefined) {
      resolved.ground_confidence = msg.ground_confidence;
    }
    else {
      resolved.ground_confidence = []
    }

    if (msg.obstacle_confidence !== undefined) {
      resolved.obstacle_confidence = msg.obstacle_confidence;
    }
    else {
      resolved.obstacle_confidence = []
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = []
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = []
    }

    if (msg.od_process_time !== undefined) {
      resolved.od_process_time = msg.od_process_time;
    }
    else {
      resolved.od_process_time = []
    }

    if (msg.Reserved_B !== undefined) {
      resolved.Reserved_B = msg.Reserved_B;
    }
    else {
      resolved.Reserved_B = []
    }

    if (msg.Reserved_C !== undefined) {
      resolved.Reserved_C = msg.Reserved_C;
    }
    else {
      resolved.Reserved_C = []
    }

    if (msg.Reserved_D !== undefined) {
      resolved.Reserved_D = msg.Reserved_D;
    }
    else {
      resolved.Reserved_D = []
    }

    return resolved;
    }
};

module.exports = TrackingObj;
