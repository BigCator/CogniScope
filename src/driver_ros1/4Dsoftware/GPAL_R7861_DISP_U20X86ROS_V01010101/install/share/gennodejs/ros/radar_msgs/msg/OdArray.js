// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Od = require('./Od.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OdArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.objNum = null;
      this.odArray = null;
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
      if (initObj.hasOwnProperty('odArray')) {
        this.odArray = initObj.odArray
      }
      else {
        this.odArray = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [objNum]
    bufferOffset = _serializer.uint32(obj.objNum, buffer, bufferOffset);
    // Serialize message field [odArray]
    // Serialize the length for message field [odArray]
    bufferOffset = _serializer.uint32(obj.odArray.length, buffer, bufferOffset);
    obj.odArray.forEach((val) => {
      bufferOffset = Od.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdArray
    let len;
    let data = new OdArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [objNum]
    data.objNum = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [odArray]
    // Deserialize array length for message field [odArray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.odArray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.odArray[i] = Od.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.odArray.forEach((val) => {
      length += Od.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/OdArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efbe1652c996ab4b9be091c4010e6a53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header    header               # Includes measurement timestamp and coordinate frame.
    uint32    radarID              # radar ID
    uint32    frameCnt             # frame cnt in radar
    uint32    objNum               # object number of this frame
    Od[]      odArray              # array of tracking objects
    
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
    MSG: radar_msgs/Od
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
    const resolved = new OdArray(null);
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

    if (msg.odArray !== undefined) {
      resolved.odArray = new Array(msg.odArray.length);
      for (let i = 0; i < resolved.odArray.length; ++i) {
        resolved.odArray[i] = Od.Resolve(msg.odArray[i]);
      }
    }
    else {
      resolved.odArray = []
    }

    return resolved;
    }
};

module.exports = OdArray;
