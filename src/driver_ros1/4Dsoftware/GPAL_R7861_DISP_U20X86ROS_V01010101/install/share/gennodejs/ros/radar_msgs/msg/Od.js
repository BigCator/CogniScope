// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Od {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_ID = null;
      this.age = null;
      this.measurement_status = null;
      this.motion_state = null;
      this.existance_confidence = null;
      this.pose = null;
      this.dimensions = null;
      this.velocity = null;
      this.acceleration = null;
      this.v2ground = null;
      this.pose_nearest = null;
      this.type = null;
      this.car_confidence = null;
      this.bike_confidence = null;
      this.ped_confidence = null;
      this.truck_confidence = null;
      this.signboard_confidence = null;
      this.ground_confidence = null;
      this.obstacle_confidence = null;
      this.EnrollPtsNum = null;
      this.NearestPtsX = null;
      this.NearestPtsY = null;
      this.NearestPtsZ = null;
      this.Reserved_D = null;
      this.Reserved_E = null;
      this.Reserved_F = null;
      this.Reserved_G = null;
      this.Reserved_H = null;
      this.Reserved_I = null;
      this.Reserved_J = null;
      this.Reserved_K = null;
      this.Reserved_L = null;
      this.Reserved_M = null;
      this.Reserved_N = null;
      this.Reserved_O = null;
      this.Reserved_P = null;
    }
    else {
      if (initObj.hasOwnProperty('object_ID')) {
        this.object_ID = initObj.object_ID
      }
      else {
        this.object_ID = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('measurement_status')) {
        this.measurement_status = initObj.measurement_status
      }
      else {
        this.measurement_status = 0;
      }
      if (initObj.hasOwnProperty('motion_state')) {
        this.motion_state = initObj.motion_state
      }
      else {
        this.motion_state = 0;
      }
      if (initObj.hasOwnProperty('existance_confidence')) {
        this.existance_confidence = initObj.existance_confidence
      }
      else {
        this.existance_confidence = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('v2ground')) {
        this.v2ground = initObj.v2ground
      }
      else {
        this.v2ground = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('pose_nearest')) {
        this.pose_nearest = initObj.pose_nearest
      }
      else {
        this.pose_nearest = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('car_confidence')) {
        this.car_confidence = initObj.car_confidence
      }
      else {
        this.car_confidence = 0;
      }
      if (initObj.hasOwnProperty('bike_confidence')) {
        this.bike_confidence = initObj.bike_confidence
      }
      else {
        this.bike_confidence = 0;
      }
      if (initObj.hasOwnProperty('ped_confidence')) {
        this.ped_confidence = initObj.ped_confidence
      }
      else {
        this.ped_confidence = 0;
      }
      if (initObj.hasOwnProperty('truck_confidence')) {
        this.truck_confidence = initObj.truck_confidence
      }
      else {
        this.truck_confidence = 0;
      }
      if (initObj.hasOwnProperty('signboard_confidence')) {
        this.signboard_confidence = initObj.signboard_confidence
      }
      else {
        this.signboard_confidence = 0;
      }
      if (initObj.hasOwnProperty('ground_confidence')) {
        this.ground_confidence = initObj.ground_confidence
      }
      else {
        this.ground_confidence = 0;
      }
      if (initObj.hasOwnProperty('obstacle_confidence')) {
        this.obstacle_confidence = initObj.obstacle_confidence
      }
      else {
        this.obstacle_confidence = 0;
      }
      if (initObj.hasOwnProperty('EnrollPtsNum')) {
        this.EnrollPtsNum = initObj.EnrollPtsNum
      }
      else {
        this.EnrollPtsNum = 0.0;
      }
      if (initObj.hasOwnProperty('NearestPtsX')) {
        this.NearestPtsX = initObj.NearestPtsX
      }
      else {
        this.NearestPtsX = 0.0;
      }
      if (initObj.hasOwnProperty('NearestPtsY')) {
        this.NearestPtsY = initObj.NearestPtsY
      }
      else {
        this.NearestPtsY = 0.0;
      }
      if (initObj.hasOwnProperty('NearestPtsZ')) {
        this.NearestPtsZ = initObj.NearestPtsZ
      }
      else {
        this.NearestPtsZ = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved_D')) {
        this.Reserved_D = initObj.Reserved_D
      }
      else {
        this.Reserved_D = 0.0;
      }
      if (initObj.hasOwnProperty('Reserved_E')) {
        this.Reserved_E = initObj.Reserved_E
      }
      else {
        this.Reserved_E = 0;
      }
      if (initObj.hasOwnProperty('Reserved_F')) {
        this.Reserved_F = initObj.Reserved_F
      }
      else {
        this.Reserved_F = 0;
      }
      if (initObj.hasOwnProperty('Reserved_G')) {
        this.Reserved_G = initObj.Reserved_G
      }
      else {
        this.Reserved_G = 0;
      }
      if (initObj.hasOwnProperty('Reserved_H')) {
        this.Reserved_H = initObj.Reserved_H
      }
      else {
        this.Reserved_H = 0;
      }
      if (initObj.hasOwnProperty('Reserved_I')) {
        this.Reserved_I = initObj.Reserved_I
      }
      else {
        this.Reserved_I = 0;
      }
      if (initObj.hasOwnProperty('Reserved_J')) {
        this.Reserved_J = initObj.Reserved_J
      }
      else {
        this.Reserved_J = 0;
      }
      if (initObj.hasOwnProperty('Reserved_K')) {
        this.Reserved_K = initObj.Reserved_K
      }
      else {
        this.Reserved_K = 0;
      }
      if (initObj.hasOwnProperty('Reserved_L')) {
        this.Reserved_L = initObj.Reserved_L
      }
      else {
        this.Reserved_L = 0;
      }
      if (initObj.hasOwnProperty('Reserved_M')) {
        this.Reserved_M = initObj.Reserved_M
      }
      else {
        this.Reserved_M = 0;
      }
      if (initObj.hasOwnProperty('Reserved_N')) {
        this.Reserved_N = initObj.Reserved_N
      }
      else {
        this.Reserved_N = 0;
      }
      if (initObj.hasOwnProperty('Reserved_O')) {
        this.Reserved_O = initObj.Reserved_O
      }
      else {
        this.Reserved_O = '';
      }
      if (initObj.hasOwnProperty('Reserved_P')) {
        this.Reserved_P = initObj.Reserved_P
      }
      else {
        this.Reserved_P = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Od
    // Serialize message field [object_ID]
    bufferOffset = _serializer.uint32(obj.object_ID, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint16(obj.age, buffer, bufferOffset);
    // Serialize message field [measurement_status]
    bufferOffset = _serializer.uint8(obj.measurement_status, buffer, bufferOffset);
    // Serialize message field [motion_state]
    bufferOffset = _serializer.uint8(obj.motion_state, buffer, bufferOffset);
    // Serialize message field [existance_confidence]
    bufferOffset = _serializer.uint8(obj.existance_confidence, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [v2ground]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.v2ground, buffer, bufferOffset);
    // Serialize message field [pose_nearest]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_nearest, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [car_confidence]
    bufferOffset = _serializer.uint8(obj.car_confidence, buffer, bufferOffset);
    // Serialize message field [bike_confidence]
    bufferOffset = _serializer.uint8(obj.bike_confidence, buffer, bufferOffset);
    // Serialize message field [ped_confidence]
    bufferOffset = _serializer.uint8(obj.ped_confidence, buffer, bufferOffset);
    // Serialize message field [truck_confidence]
    bufferOffset = _serializer.uint8(obj.truck_confidence, buffer, bufferOffset);
    // Serialize message field [signboard_confidence]
    bufferOffset = _serializer.uint8(obj.signboard_confidence, buffer, bufferOffset);
    // Serialize message field [ground_confidence]
    bufferOffset = _serializer.uint8(obj.ground_confidence, buffer, bufferOffset);
    // Serialize message field [obstacle_confidence]
    bufferOffset = _serializer.uint8(obj.obstacle_confidence, buffer, bufferOffset);
    // Serialize message field [EnrollPtsNum]
    bufferOffset = _serializer.float32(obj.EnrollPtsNum, buffer, bufferOffset);
    // Serialize message field [NearestPtsX]
    bufferOffset = _serializer.float32(obj.NearestPtsX, buffer, bufferOffset);
    // Serialize message field [NearestPtsY]
    bufferOffset = _serializer.float32(obj.NearestPtsY, buffer, bufferOffset);
    // Serialize message field [NearestPtsZ]
    bufferOffset = _serializer.float32(obj.NearestPtsZ, buffer, bufferOffset);
    // Serialize message field [Reserved_D]
    bufferOffset = _serializer.float32(obj.Reserved_D, buffer, bufferOffset);
    // Serialize message field [Reserved_E]
    bufferOffset = _serializer.uint32(obj.Reserved_E, buffer, bufferOffset);
    // Serialize message field [Reserved_F]
    bufferOffset = _serializer.uint32(obj.Reserved_F, buffer, bufferOffset);
    // Serialize message field [Reserved_G]
    bufferOffset = _serializer.int32(obj.Reserved_G, buffer, bufferOffset);
    // Serialize message field [Reserved_H]
    bufferOffset = _serializer.int32(obj.Reserved_H, buffer, bufferOffset);
    // Serialize message field [Reserved_I]
    bufferOffset = _serializer.uint16(obj.Reserved_I, buffer, bufferOffset);
    // Serialize message field [Reserved_J]
    bufferOffset = _serializer.uint16(obj.Reserved_J, buffer, bufferOffset);
    // Serialize message field [Reserved_K]
    bufferOffset = _serializer.int16(obj.Reserved_K, buffer, bufferOffset);
    // Serialize message field [Reserved_L]
    bufferOffset = _serializer.int16(obj.Reserved_L, buffer, bufferOffset);
    // Serialize message field [Reserved_M]
    bufferOffset = _serializer.uint8(obj.Reserved_M, buffer, bufferOffset);
    // Serialize message field [Reserved_N]
    bufferOffset = _serializer.uint8(obj.Reserved_N, buffer, bufferOffset);
    // Serialize message field [Reserved_O]
    bufferOffset = _serializer.string(obj.Reserved_O, buffer, bufferOffset);
    // Serialize message field [Reserved_P]
    bufferOffset = _serializer.string(obj.Reserved_P, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Od
    let len;
    let data = new Od(null);
    // Deserialize message field [object_ID]
    data.object_ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [measurement_status]
    data.measurement_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motion_state]
    data.motion_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [existance_confidence]
    data.existance_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [v2ground]
    data.v2ground = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_nearest]
    data.pose_nearest = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [car_confidence]
    data.car_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bike_confidence]
    data.bike_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ped_confidence]
    data.ped_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [truck_confidence]
    data.truck_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [signboard_confidence]
    data.signboard_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ground_confidence]
    data.ground_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obstacle_confidence]
    data.obstacle_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EnrollPtsNum]
    data.EnrollPtsNum = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [NearestPtsX]
    data.NearestPtsX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [NearestPtsY]
    data.NearestPtsY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [NearestPtsZ]
    data.NearestPtsZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved_D]
    data.Reserved_D = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Reserved_E]
    data.Reserved_E = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Reserved_F]
    data.Reserved_F = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Reserved_G]
    data.Reserved_G = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Reserved_H]
    data.Reserved_H = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Reserved_I]
    data.Reserved_I = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Reserved_J]
    data.Reserved_J = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Reserved_K]
    data.Reserved_K = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Reserved_L]
    data.Reserved_L = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Reserved_M]
    data.Reserved_M = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Reserved_N]
    data.Reserved_N = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Reserved_O]
    data.Reserved_O = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Reserved_P]
    data.Reserved_P = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Reserved_O);
    length += _getByteLength(object.Reserved_P);
    return length + 351;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/Od';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8abbf365d0b04a773bf2e6d9a6dd7b7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header    header               # Includes measurement timestamp and coordinate frame.
    uint32    object_ID            # object ID
    uint16    age                  # total frames from the object occurs
    uint8     measurement_status   # track status (0: measured; 1: new; 2: predicted)
    uint8     motion_state         # movement state ( 0: static; 1: dynamic)
    uint8     existance_confidence # existance confidence
    geometry_msgs/Pose              pose #central position x, y, z; roll=0, pitch=0, yaw to quaternion
    geometry_msgs/Vector3           dimensions #length, width, height
    geometry_msgs/Twist             velocity
    geometry_msgs/Twist             acceleration
    geometry_msgs/Twist             v2ground #velocity towards ground of x, y, z orientation
    geometry_msgs/Pose              pose_nearest #NearestPts x, y, z
    uint8     type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)
    uint8     car_confidence       # car confidence
    uint8     bike_confidence      # bike confidence
    uint8     ped_confidence       # pedestrian confidence
    uint8     truck_confidence     # truck confidence
    uint8     signboard_confidence # signboard confidence
    uint8     ground_confidence    # ground confidence
    uint8     obstacle_confidence  # obstacle confidence
    float32   EnrollPtsNum         # EnrollPtsNum
    float32   NearestPtsX          # NearestPtsX           
    float32   NearestPtsY          # NearestPtsY
    float32   NearestPtsZ          # NearestPtsZ
    float32   Reserved_D  
    uint32    Reserved_E          
    uint32    Reserved_F           
    int32     Reserved_G           
    int32     Reserved_H    
    uint16    Reserved_I   
    uint16    Reserved_J    
    int16     Reserved_K   
    int16     Reserved_L 
    uint8     Reserved_M  
    uint8     Reserved_N    
    string    Reserved_O
    string    Reserved_P
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Od(null);
    if (msg.object_ID !== undefined) {
      resolved.object_ID = msg.object_ID;
    }
    else {
      resolved.object_ID = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.measurement_status !== undefined) {
      resolved.measurement_status = msg.measurement_status;
    }
    else {
      resolved.measurement_status = 0
    }

    if (msg.motion_state !== undefined) {
      resolved.motion_state = msg.motion_state;
    }
    else {
      resolved.motion_state = 0
    }

    if (msg.existance_confidence !== undefined) {
      resolved.existance_confidence = msg.existance_confidence;
    }
    else {
      resolved.existance_confidence = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.dimensions !== undefined) {
      resolved.dimensions = geometry_msgs.msg.Vector3.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Twist.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Twist()
    }

    if (msg.v2ground !== undefined) {
      resolved.v2ground = geometry_msgs.msg.Twist.Resolve(msg.v2ground)
    }
    else {
      resolved.v2ground = new geometry_msgs.msg.Twist()
    }

    if (msg.pose_nearest !== undefined) {
      resolved.pose_nearest = geometry_msgs.msg.Pose.Resolve(msg.pose_nearest)
    }
    else {
      resolved.pose_nearest = new geometry_msgs.msg.Pose()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.car_confidence !== undefined) {
      resolved.car_confidence = msg.car_confidence;
    }
    else {
      resolved.car_confidence = 0
    }

    if (msg.bike_confidence !== undefined) {
      resolved.bike_confidence = msg.bike_confidence;
    }
    else {
      resolved.bike_confidence = 0
    }

    if (msg.ped_confidence !== undefined) {
      resolved.ped_confidence = msg.ped_confidence;
    }
    else {
      resolved.ped_confidence = 0
    }

    if (msg.truck_confidence !== undefined) {
      resolved.truck_confidence = msg.truck_confidence;
    }
    else {
      resolved.truck_confidence = 0
    }

    if (msg.signboard_confidence !== undefined) {
      resolved.signboard_confidence = msg.signboard_confidence;
    }
    else {
      resolved.signboard_confidence = 0
    }

    if (msg.ground_confidence !== undefined) {
      resolved.ground_confidence = msg.ground_confidence;
    }
    else {
      resolved.ground_confidence = 0
    }

    if (msg.obstacle_confidence !== undefined) {
      resolved.obstacle_confidence = msg.obstacle_confidence;
    }
    else {
      resolved.obstacle_confidence = 0
    }

    if (msg.EnrollPtsNum !== undefined) {
      resolved.EnrollPtsNum = msg.EnrollPtsNum;
    }
    else {
      resolved.EnrollPtsNum = 0.0
    }

    if (msg.NearestPtsX !== undefined) {
      resolved.NearestPtsX = msg.NearestPtsX;
    }
    else {
      resolved.NearestPtsX = 0.0
    }

    if (msg.NearestPtsY !== undefined) {
      resolved.NearestPtsY = msg.NearestPtsY;
    }
    else {
      resolved.NearestPtsY = 0.0
    }

    if (msg.NearestPtsZ !== undefined) {
      resolved.NearestPtsZ = msg.NearestPtsZ;
    }
    else {
      resolved.NearestPtsZ = 0.0
    }

    if (msg.Reserved_D !== undefined) {
      resolved.Reserved_D = msg.Reserved_D;
    }
    else {
      resolved.Reserved_D = 0.0
    }

    if (msg.Reserved_E !== undefined) {
      resolved.Reserved_E = msg.Reserved_E;
    }
    else {
      resolved.Reserved_E = 0
    }

    if (msg.Reserved_F !== undefined) {
      resolved.Reserved_F = msg.Reserved_F;
    }
    else {
      resolved.Reserved_F = 0
    }

    if (msg.Reserved_G !== undefined) {
      resolved.Reserved_G = msg.Reserved_G;
    }
    else {
      resolved.Reserved_G = 0
    }

    if (msg.Reserved_H !== undefined) {
      resolved.Reserved_H = msg.Reserved_H;
    }
    else {
      resolved.Reserved_H = 0
    }

    if (msg.Reserved_I !== undefined) {
      resolved.Reserved_I = msg.Reserved_I;
    }
    else {
      resolved.Reserved_I = 0
    }

    if (msg.Reserved_J !== undefined) {
      resolved.Reserved_J = msg.Reserved_J;
    }
    else {
      resolved.Reserved_J = 0
    }

    if (msg.Reserved_K !== undefined) {
      resolved.Reserved_K = msg.Reserved_K;
    }
    else {
      resolved.Reserved_K = 0
    }

    if (msg.Reserved_L !== undefined) {
      resolved.Reserved_L = msg.Reserved_L;
    }
    else {
      resolved.Reserved_L = 0
    }

    if (msg.Reserved_M !== undefined) {
      resolved.Reserved_M = msg.Reserved_M;
    }
    else {
      resolved.Reserved_M = 0
    }

    if (msg.Reserved_N !== undefined) {
      resolved.Reserved_N = msg.Reserved_N;
    }
    else {
      resolved.Reserved_N = 0
    }

    if (msg.Reserved_O !== undefined) {
      resolved.Reserved_O = msg.Reserved_O;
    }
    else {
      resolved.Reserved_O = ''
    }

    if (msg.Reserved_P !== undefined) {
      resolved.Reserved_P = msg.Reserved_P;
    }
    else {
      resolved.Reserved_P = ''
    }

    return resolved;
    }
};

module.exports = Od;
