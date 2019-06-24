// Auto-generated. Do not edit!

// (in-package control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControlDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.CurrentSpeed = null;
      this.TargetSpeed = null;
      this.SpeedError = null;
      this.AccelerationCmd = null;
      this.Curvature = null;
      this.LatError = null;
      this.DirError = null;
      this.SteeringAngleCmd = null;
      this.CurvatureContribution = null;
      this.LatContribution = null;
      this.DirContribution = null;
      this.CurrentPose = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('CurrentSpeed')) {
        this.CurrentSpeed = initObj.CurrentSpeed
      }
      else {
        this.CurrentSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('TargetSpeed')) {
        this.TargetSpeed = initObj.TargetSpeed
      }
      else {
        this.TargetSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('SpeedError')) {
        this.SpeedError = initObj.SpeedError
      }
      else {
        this.SpeedError = 0.0;
      }
      if (initObj.hasOwnProperty('AccelerationCmd')) {
        this.AccelerationCmd = initObj.AccelerationCmd
      }
      else {
        this.AccelerationCmd = 0.0;
      }
      if (initObj.hasOwnProperty('Curvature')) {
        this.Curvature = initObj.Curvature
      }
      else {
        this.Curvature = 0.0;
      }
      if (initObj.hasOwnProperty('LatError')) {
        this.LatError = initObj.LatError
      }
      else {
        this.LatError = 0.0;
      }
      if (initObj.hasOwnProperty('DirError')) {
        this.DirError = initObj.DirError
      }
      else {
        this.DirError = 0.0;
      }
      if (initObj.hasOwnProperty('SteeringAngleCmd')) {
        this.SteeringAngleCmd = initObj.SteeringAngleCmd
      }
      else {
        this.SteeringAngleCmd = 0.0;
      }
      if (initObj.hasOwnProperty('CurvatureContribution')) {
        this.CurvatureContribution = initObj.CurvatureContribution
      }
      else {
        this.CurvatureContribution = 0.0;
      }
      if (initObj.hasOwnProperty('LatContribution')) {
        this.LatContribution = initObj.LatContribution
      }
      else {
        this.LatContribution = 0.0;
      }
      if (initObj.hasOwnProperty('DirContribution')) {
        this.DirContribution = initObj.DirContribution
      }
      else {
        this.DirContribution = 0.0;
      }
      if (initObj.hasOwnProperty('CurrentPose')) {
        this.CurrentPose = initObj.CurrentPose
      }
      else {
        this.CurrentPose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlDebug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [CurrentSpeed]
    bufferOffset = _serializer.float64(obj.CurrentSpeed, buffer, bufferOffset);
    // Serialize message field [TargetSpeed]
    bufferOffset = _serializer.float64(obj.TargetSpeed, buffer, bufferOffset);
    // Serialize message field [SpeedError]
    bufferOffset = _serializer.float64(obj.SpeedError, buffer, bufferOffset);
    // Serialize message field [AccelerationCmd]
    bufferOffset = _serializer.float64(obj.AccelerationCmd, buffer, bufferOffset);
    // Serialize message field [Curvature]
    bufferOffset = _serializer.float64(obj.Curvature, buffer, bufferOffset);
    // Serialize message field [LatError]
    bufferOffset = _serializer.float64(obj.LatError, buffer, bufferOffset);
    // Serialize message field [DirError]
    bufferOffset = _serializer.float64(obj.DirError, buffer, bufferOffset);
    // Serialize message field [SteeringAngleCmd]
    bufferOffset = _serializer.float64(obj.SteeringAngleCmd, buffer, bufferOffset);
    // Serialize message field [CurvatureContribution]
    bufferOffset = _serializer.float64(obj.CurvatureContribution, buffer, bufferOffset);
    // Serialize message field [LatContribution]
    bufferOffset = _serializer.float64(obj.LatContribution, buffer, bufferOffset);
    // Serialize message field [DirContribution]
    bufferOffset = _serializer.float64(obj.DirContribution, buffer, bufferOffset);
    // Serialize message field [CurrentPose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.CurrentPose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlDebug
    let len;
    let data = new ControlDebug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [CurrentSpeed]
    data.CurrentSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [TargetSpeed]
    data.TargetSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SpeedError]
    data.SpeedError = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AccelerationCmd]
    data.AccelerationCmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Curvature]
    data.Curvature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LatError]
    data.LatError = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [DirError]
    data.DirError = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SteeringAngleCmd]
    data.SteeringAngleCmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [CurvatureContribution]
    data.CurvatureContribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LatContribution]
    data.LatContribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [DirContribution]
    data.DirContribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [CurrentPose]
    data.CurrentPose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control/ControlDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56d46489b2fb811d53877106c35e508e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 CurrentSpeed                     # m/s
    float64 TargetSpeed                      # m/s
    float64 SpeedError                       # m/s
    float64 AccelerationCmd                  # m/ss
    float64 Curvature                        # rad
    float64 LatError                         # m
    float64 DirError                         # rad
    float64 SteeringAngleCmd                 # rad
    float64 CurvatureContribution            # rad
    float64 LatContribution                  # rad
    float64 DirContribution                  # rad
    geometry_msgs/Pose CurrentPose
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlDebug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.CurrentSpeed !== undefined) {
      resolved.CurrentSpeed = msg.CurrentSpeed;
    }
    else {
      resolved.CurrentSpeed = 0.0
    }

    if (msg.TargetSpeed !== undefined) {
      resolved.TargetSpeed = msg.TargetSpeed;
    }
    else {
      resolved.TargetSpeed = 0.0
    }

    if (msg.SpeedError !== undefined) {
      resolved.SpeedError = msg.SpeedError;
    }
    else {
      resolved.SpeedError = 0.0
    }

    if (msg.AccelerationCmd !== undefined) {
      resolved.AccelerationCmd = msg.AccelerationCmd;
    }
    else {
      resolved.AccelerationCmd = 0.0
    }

    if (msg.Curvature !== undefined) {
      resolved.Curvature = msg.Curvature;
    }
    else {
      resolved.Curvature = 0.0
    }

    if (msg.LatError !== undefined) {
      resolved.LatError = msg.LatError;
    }
    else {
      resolved.LatError = 0.0
    }

    if (msg.DirError !== undefined) {
      resolved.DirError = msg.DirError;
    }
    else {
      resolved.DirError = 0.0
    }

    if (msg.SteeringAngleCmd !== undefined) {
      resolved.SteeringAngleCmd = msg.SteeringAngleCmd;
    }
    else {
      resolved.SteeringAngleCmd = 0.0
    }

    if (msg.CurvatureContribution !== undefined) {
      resolved.CurvatureContribution = msg.CurvatureContribution;
    }
    else {
      resolved.CurvatureContribution = 0.0
    }

    if (msg.LatContribution !== undefined) {
      resolved.LatContribution = msg.LatContribution;
    }
    else {
      resolved.LatContribution = 0.0
    }

    if (msg.DirContribution !== undefined) {
      resolved.DirContribution = msg.DirContribution;
    }
    else {
      resolved.DirContribution = 0.0
    }

    if (msg.CurrentPose !== undefined) {
      resolved.CurrentPose = geometry_msgs.msg.Pose.Resolve(msg.CurrentPose)
    }
    else {
      resolved.CurrentPose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = ControlDebug;
