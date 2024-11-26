# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mavros_msgs/MountConfig.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class MountConfig(genpy.Message):
  _md5sum = "9f23c23b92915eeef7f5b09d790a38e5"
  _type = "mavros_msgs/MountConfig"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# HilActuatorControls.msg
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
"""
  __slots__ = ['header','target_system','target_component','time_boot_ms','flags','quaternion','angular_velocity_x','angular_velocity_y','angular_velocity_z','failure_flags']
  _slot_types = ['std_msgs/Header','uint8','uint8','uint64','uint8','float32[4]','float32','float32','float32','uint64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,target_system,target_component,time_boot_ms,flags,quaternion,angular_velocity_x,angular_velocity_y,angular_velocity_z,failure_flags

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MountConfig, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.target_system is None:
        self.target_system = 0
      if self.target_component is None:
        self.target_component = 0
      if self.time_boot_ms is None:
        self.time_boot_ms = 0
      if self.flags is None:
        self.flags = 0
      if self.quaternion is None:
        self.quaternion = [0.] * 4
      if self.angular_velocity_x is None:
        self.angular_velocity_x = 0.
      if self.angular_velocity_y is None:
        self.angular_velocity_y = 0.
      if self.angular_velocity_z is None:
        self.angular_velocity_z = 0.
      if self.failure_flags is None:
        self.failure_flags = 0
    else:
      self.header = std_msgs.msg.Header()
      self.target_system = 0
      self.target_component = 0
      self.time_boot_ms = 0
      self.flags = 0
      self.quaternion = [0.] * 4
      self.angular_velocity_x = 0.
      self.angular_velocity_y = 0.
      self.angular_velocity_z = 0.
      self.failure_flags = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2BQB().pack(_x.target_system, _x.target_component, _x.time_boot_ms, _x.flags))
      buff.write(_get_struct_4f().pack(*self.quaternion))
      _x = self
      buff.write(_get_struct_3fQ().pack(_x.angular_velocity_x, _x.angular_velocity_y, _x.angular_velocity_z, _x.failure_flags))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.target_system, _x.target_component, _x.time_boot_ms, _x.flags,) = _get_struct_2BQB().unpack(str[start:end])
      start = end
      end += 16
      self.quaternion = _get_struct_4f().unpack(str[start:end])
      _x = self
      start = end
      end += 20
      (_x.angular_velocity_x, _x.angular_velocity_y, _x.angular_velocity_z, _x.failure_flags,) = _get_struct_3fQ().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2BQB().pack(_x.target_system, _x.target_component, _x.time_boot_ms, _x.flags))
      buff.write(self.quaternion.tostring())
      _x = self
      buff.write(_get_struct_3fQ().pack(_x.angular_velocity_x, _x.angular_velocity_y, _x.angular_velocity_z, _x.failure_flags))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.target_system, _x.target_component, _x.time_boot_ms, _x.flags,) = _get_struct_2BQB().unpack(str[start:end])
      start = end
      end += 16
      self.quaternion = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      _x = self
      start = end
      end += 20
      (_x.angular_velocity_x, _x.angular_velocity_y, _x.angular_velocity_z, _x.failure_flags,) = _get_struct_3fQ().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2BQB = None
def _get_struct_2BQB():
    global _struct_2BQB
    if _struct_2BQB is None:
        _struct_2BQB = struct.Struct("<2BQB")
    return _struct_2BQB
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3fQ = None
def _get_struct_3fQ():
    global _struct_3fQ
    if _struct_3fQ is None:
        _struct_3fQ = struct.Struct("<3fQ")
    return _struct_3fQ
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
