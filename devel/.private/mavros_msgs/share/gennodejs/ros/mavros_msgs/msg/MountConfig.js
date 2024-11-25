// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MountConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.target_system = null;
      this.target_component = null;
      this.time_boot_ms = null;
      this.flags = null;
      this.quaternion = null;
      this.angular_velocity_x = null;
      this.angular_velocity_y = null;
      this.angular_velocity_z = null;
      this.failure_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('target_system')) {
        this.target_system = initObj.target_system
      }
      else {
        this.target_system = 0;
      }
      if (initObj.hasOwnProperty('target_component')) {
        this.target_component = initObj.target_component
      }
      else {
        this.target_component = 0;
      }
      if (initObj.hasOwnProperty('time_boot_ms')) {
        this.time_boot_ms = initObj.time_boot_ms
      }
      else {
        this.time_boot_ms = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('quaternion')) {
        this.quaternion = initObj.quaternion
      }
      else {
        this.quaternion = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('angular_velocity_x')) {
        this.angular_velocity_x = initObj.angular_velocity_x
      }
      else {
        this.angular_velocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_y')) {
        this.angular_velocity_y = initObj.angular_velocity_y
      }
      else {
        this.angular_velocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_z')) {
        this.angular_velocity_z = initObj.angular_velocity_z
      }
      else {
        this.angular_velocity_z = 0.0;
      }
      if (initObj.hasOwnProperty('failure_flags')) {
        this.failure_flags = initObj.failure_flags
      }
      else {
        this.failure_flags = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MountConfig
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [target_system]
    bufferOffset = _serializer.uint8(obj.target_system, buffer, bufferOffset);
    // Serialize message field [target_component]
    bufferOffset = _serializer.uint8(obj.target_component, buffer, bufferOffset);
    // Serialize message field [time_boot_ms]
    bufferOffset = _serializer.uint64(obj.time_boot_ms, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Check that the constant length array field [quaternion] has the right length
    if (obj.quaternion.length !== 4) {
      throw new Error('Unable to serialize array field quaternion - length must be 4')
    }
    // Serialize message field [quaternion]
    bufferOffset = _arraySerializer.float32(obj.quaternion, buffer, bufferOffset, 4);
    // Serialize message field [angular_velocity_x]
    bufferOffset = _serializer.float32(obj.angular_velocity_x, buffer, bufferOffset);
    // Serialize message field [angular_velocity_y]
    bufferOffset = _serializer.float32(obj.angular_velocity_y, buffer, bufferOffset);
    // Serialize message field [angular_velocity_z]
    bufferOffset = _serializer.float32(obj.angular_velocity_z, buffer, bufferOffset);
    // Serialize message field [failure_flags]
    bufferOffset = _serializer.uint64(obj.failure_flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MountConfig
    let len;
    let data = new MountConfig(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_system]
    data.target_system = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_component]
    data.target_component = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_boot_ms]
    data.time_boot_ms = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [quaternion]
    data.quaternion = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [angular_velocity_x]
    data.angular_velocity_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_y]
    data.angular_velocity_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_z]
    data.angular_velocity_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [failure_flags]
    data.failure_flags = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/MountConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f23c23b92915eeef7f5b09d790a38e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # HilActuatorControls.msg
    #
    # ROS representation of MAVLink HIL_ACTUATOR_CONTROLS
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#GIMBAL_DEVICE_ATTITUDE_STATUS
    std_msgs/Header header
    uint8 target_system 
    uint8 target_component
    uint64 time_boot_ms
    uint8  flags
    float32[4] quaternion
    float32 angular_velocity_x
    float32 angular_velocity_y
    float32 angular_velocity_z
    uint64 failure_flags
    
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
    const resolved = new MountConfig(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.target_system !== undefined) {
      resolved.target_system = msg.target_system;
    }
    else {
      resolved.target_system = 0
    }

    if (msg.target_component !== undefined) {
      resolved.target_component = msg.target_component;
    }
    else {
      resolved.target_component = 0
    }

    if (msg.time_boot_ms !== undefined) {
      resolved.time_boot_ms = msg.time_boot_ms;
    }
    else {
      resolved.time_boot_ms = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.quaternion !== undefined) {
      resolved.quaternion = msg.quaternion;
    }
    else {
      resolved.quaternion = new Array(4).fill(0)
    }

    if (msg.angular_velocity_x !== undefined) {
      resolved.angular_velocity_x = msg.angular_velocity_x;
    }
    else {
      resolved.angular_velocity_x = 0.0
    }

    if (msg.angular_velocity_y !== undefined) {
      resolved.angular_velocity_y = msg.angular_velocity_y;
    }
    else {
      resolved.angular_velocity_y = 0.0
    }

    if (msg.angular_velocity_z !== undefined) {
      resolved.angular_velocity_z = msg.angular_velocity_z;
    }
    else {
      resolved.angular_velocity_z = 0.0
    }

    if (msg.failure_flags !== undefined) {
      resolved.failure_flags = msg.failure_flags;
    }
    else {
      resolved.failure_flags = 0
    }

    return resolved;
    }
};

module.exports = MountConfig;
