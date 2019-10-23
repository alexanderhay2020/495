// Auto-generated. Do not edit!

// (in-package crazy_turtle.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let turtlesim = _finder('turtlesim');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SwitchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mixed_up = null;
    }
    else {
      if (initObj.hasOwnProperty('mixed_up')) {
        this.mixed_up = initObj.mixed_up
      }
      else {
        this.mixed_up = new turtlesim.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchRequest
    // Serialize message field [mixed_up]
    bufferOffset = turtlesim.msg.Pose.serialize(obj.mixed_up, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchRequest
    let len;
    let data = new SwitchRequest(null);
    // Deserialize message field [mixed_up]
    data.mixed_up = turtlesim.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazy_turtle/SwitchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd72720c2aaa137dbd21147e3b93a9daf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    turtlesim/Pose mixed_up
    
    ================================================================================
    MSG: turtlesim/Pose
    float32 x
    float32 y
    float32 theta
    
    float32 linear_velocity
    float32 angular_velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchRequest(null);
    if (msg.mixed_up !== undefined) {
      resolved.mixed_up = turtlesim.msg.Pose.Resolve(msg.mixed_up)
    }
    else {
      resolved.mixed_up = new turtlesim.msg.Pose()
    }

    return resolved;
    }
};

class SwitchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchResponse
    let len;
    let data = new SwitchResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'crazy_turtle/SwitchResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '209f516d3eb691f0663e25cb750d67c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchResponse(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SwitchRequest,
  Response: SwitchResponse,
  md5sum() { return '3670ec1bdb46b88fbbe4d15e91105ba7'; },
  datatype() { return 'crazy_turtle/Switch'; }
};
