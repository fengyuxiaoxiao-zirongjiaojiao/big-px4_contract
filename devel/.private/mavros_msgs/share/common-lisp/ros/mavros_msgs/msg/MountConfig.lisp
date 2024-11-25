; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude MountConfig.msg.html

(cl:defclass <MountConfig> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target_system
    :reader target_system
    :initarg :target_system
    :type cl:fixnum
    :initform 0)
   (target_component
    :reader target_component
    :initarg :target_component
    :type cl:fixnum
    :initform 0)
   (time_boot_ms
    :reader time_boot_ms
    :initarg :time_boot_ms
    :type cl:integer
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (quaternion
    :reader quaternion
    :initarg :quaternion
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (angular_velocity_x
    :reader angular_velocity_x
    :initarg :angular_velocity_x
    :type cl:float
    :initform 0.0)
   (angular_velocity_y
    :reader angular_velocity_y
    :initarg :angular_velocity_y
    :type cl:float
    :initform 0.0)
   (angular_velocity_z
    :reader angular_velocity_z
    :initarg :angular_velocity_z
    :type cl:float
    :initform 0.0)
   (failure_flags
    :reader failure_flags
    :initarg :failure_flags
    :type cl:integer
    :initform 0))
)

(cl:defclass MountConfig (<MountConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MountConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MountConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<MountConfig> is deprecated: use mavros_msgs-msg:MountConfig instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'target_system-val :lambda-list '(m))
(cl:defmethod target_system-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:target_system-val is deprecated.  Use mavros_msgs-msg:target_system instead.")
  (target_system m))

(cl:ensure-generic-function 'target_component-val :lambda-list '(m))
(cl:defmethod target_component-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:target_component-val is deprecated.  Use mavros_msgs-msg:target_component instead.")
  (target_component m))

(cl:ensure-generic-function 'time_boot_ms-val :lambda-list '(m))
(cl:defmethod time_boot_ms-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:time_boot_ms-val is deprecated.  Use mavros_msgs-msg:time_boot_ms instead.")
  (time_boot_ms m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:flags-val is deprecated.  Use mavros_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:quaternion-val is deprecated.  Use mavros_msgs-msg:quaternion instead.")
  (quaternion m))

(cl:ensure-generic-function 'angular_velocity_x-val :lambda-list '(m))
(cl:defmethod angular_velocity_x-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:angular_velocity_x-val is deprecated.  Use mavros_msgs-msg:angular_velocity_x instead.")
  (angular_velocity_x m))

(cl:ensure-generic-function 'angular_velocity_y-val :lambda-list '(m))
(cl:defmethod angular_velocity_y-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:angular_velocity_y-val is deprecated.  Use mavros_msgs-msg:angular_velocity_y instead.")
  (angular_velocity_y m))

(cl:ensure-generic-function 'angular_velocity_z-val :lambda-list '(m))
(cl:defmethod angular_velocity_z-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:angular_velocity_z-val is deprecated.  Use mavros_msgs-msg:angular_velocity_z instead.")
  (angular_velocity_z m))

(cl:ensure-generic-function 'failure_flags-val :lambda-list '(m))
(cl:defmethod failure_flags-val ((m <MountConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:failure_flags-val is deprecated.  Use mavros_msgs-msg:failure_flags instead.")
  (failure_flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MountConfig>) ostream)
  "Serializes a message object of type '<MountConfig>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_component)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_boot_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quaternion))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'failure_flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'failure_flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MountConfig>) istream)
  "Deserializes a message object of type '<MountConfig>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_system)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_component)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_boot_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'quaternion) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'quaternion)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'failure_flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MountConfig>)))
  "Returns string type for a message object of type '<MountConfig>"
  "mavros_msgs/MountConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MountConfig)))
  "Returns string type for a message object of type 'MountConfig"
  "mavros_msgs/MountConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MountConfig>)))
  "Returns md5sum for a message object of type '<MountConfig>"
  "9f23c23b92915eeef7f5b09d790a38e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MountConfig)))
  "Returns md5sum for a message object of type 'MountConfig"
  "9f23c23b92915eeef7f5b09d790a38e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MountConfig>)))
  "Returns full string definition for message of type '<MountConfig>"
  (cl:format cl:nil "# HilActuatorControls.msg~%#~%# ROS representation of MAVLink HIL_ACTUATOR_CONTROLS~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#GIMBAL_DEVICE_ATTITUDE_STATUS~%std_msgs/Header header~%uint8 target_system ~%uint8 target_component~%uint64 time_boot_ms~%uint8  flags~%float32[4] quaternion~%float32 angular_velocity_x~%float32 angular_velocity_y~%float32 angular_velocity_z~%uint64 failure_flags~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MountConfig)))
  "Returns full string definition for message of type 'MountConfig"
  (cl:format cl:nil "# HilActuatorControls.msg~%#~%# ROS representation of MAVLink HIL_ACTUATOR_CONTROLS~%# See mavlink message documentation here:~%# https://mavlink.io/en/messages/common.html#GIMBAL_DEVICE_ATTITUDE_STATUS~%std_msgs/Header header~%uint8 target_system ~%uint8 target_component~%uint64 time_boot_ms~%uint8  flags~%float32[4] quaternion~%float32 angular_velocity_x~%float32 angular_velocity_y~%float32 angular_velocity_z~%uint64 failure_flags~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MountConfig>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     8
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'quaternion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MountConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'MountConfig
    (cl:cons ':header (header msg))
    (cl:cons ':target_system (target_system msg))
    (cl:cons ':target_component (target_component msg))
    (cl:cons ':time_boot_ms (time_boot_ms msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':quaternion (quaternion msg))
    (cl:cons ':angular_velocity_x (angular_velocity_x msg))
    (cl:cons ':angular_velocity_y (angular_velocity_y msg))
    (cl:cons ':angular_velocity_z (angular_velocity_z msg))
    (cl:cons ':failure_flags (failure_flags msg))
))
