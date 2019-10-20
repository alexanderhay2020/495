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
      this.twist = null;
    }
    else {
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelTranslateRequest
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelTranslateRequest
    let len;
    let data = new VelTranslateRequest(null);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
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
    return 'a787b2802160dcc7fe02d089e10afe56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist twist
    
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
    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

class VelTranslateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tvel = null;
    }
    else {
      if (initObj.hasOwnProperty('tvel')) {
        this.tvel = initObj.tvel
      }
      else {
        this.tvel = new TurtleVel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelTranslateResponse
    // Serialize message field [tvel]
    bufferOffset = TurtleVel.serialize(obj.tvel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelTranslateResponse
    let len;
    let data = new VelTranslateResponse(null);
    // Deserialize message field [tvel]
    data.tvel = TurtleVel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtle_control/VelTranslateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae4e0c534fe257c1d76823237c4eaf28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TurtleVel tvel
    
    ================================================================================
    MSG: turtle_control/TurtleVel
    float64 linear # linear velocity
    float64 angular # angular velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelTranslateResponse(null);
    if (msg.tvel !== undefined) {
      resolved.tvel = TurtleVel.Resolve(msg.tvel)
    }
    else {
      resolved.tvel = new TurtleVel()
    }

    return resolved;
    }
};

module.exports = {
  Request: VelTranslateRequest,
  Response: VelTranslateResponse,
  md5sum() { return 'd19b4868d4bdb68c53ab457836748ae8'; },
  datatype() { return 'turtle_control/VelTranslate'; }
};
