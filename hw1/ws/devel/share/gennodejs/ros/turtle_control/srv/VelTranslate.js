// Auto-generated. Do not edit!

// (in-package turtle_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let TurtleVel = require('../msg/TurtleVel.js');

//-----------------------------------------------------------

class VelTranslateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TurtleVel = null;
    }
    else {
      if (initObj.hasOwnProperty('TurtleVel')) {
        this.TurtleVel = initObj.TurtleVel
      }
      else {
        this.TurtleVel = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelTranslateRequest
    // Serialize message field [TurtleVel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.TurtleVel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelTranslateRequest
    let len;
    let data = new VelTranslateRequest(null);
    // Deserialize message field [TurtleVel]
    data.TurtleVel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/VelTranslateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f25cc1d17aaca32f6344c8f3ce37b1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist TurtleVel
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelTranslateRequest(null);
    if (msg.TurtleVel !== undefined) {
      resolved.TurtleVel = geometry_msgs.msg.Twist.Resolve(msg.TurtleVel)
    }
    else {
      resolved.TurtleVel = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

class VelTranslateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TurtleVelReturn = null;
    }
    else {
      if (initObj.hasOwnProperty('TurtleVelReturn')) {
        this.TurtleVelReturn = initObj.TurtleVelReturn
      }
      else {
        this.TurtleVelReturn = new TurtleVel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelTranslateResponse
    // Serialize message field [TurtleVelReturn]
    bufferOffset = TurtleVel.serialize(obj.TurtleVelReturn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelTranslateResponse
    let len;
    let data = new VelTranslateResponse(null);
    // Deserialize message field [TurtleVelReturn]
    data.TurtleVelReturn = TurtleVel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/VelTranslateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1695ba1358130d545c755713e7ca52b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TurtleVel TurtleVelReturn
    
    
    ================================================================================
    MSG: turtle_control/TurtleVel
    float32 linear # linear velocity of turtle
    float32 angular # angular velocity of turtle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelTranslateResponse(null);
    if (msg.TurtleVelReturn !== undefined) {
      resolved.TurtleVelReturn = TurtleVel.Resolve(msg.TurtleVelReturn)
    }
    else {
      resolved.TurtleVelReturn = new TurtleVel()
    }

    return resolved;
    }
};

module.exports = {
  Request: VelTranslateRequest,
  Response: VelTranslateResponse,
  md5sum() { return '0b2d8c5b37cf4fe9f75f19f798d7275b'; },
  datatype() { return 'turtle_control/VelTranslate'; }
};
