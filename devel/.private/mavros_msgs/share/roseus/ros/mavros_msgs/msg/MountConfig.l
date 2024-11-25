;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::MountConfig)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'MountConfig (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::MOUNTCONFIG")
  (make-package "MAVROS_MSGS::MOUNTCONFIG"))

(in-package "ROS")
;;//! \htmlinclude MountConfig.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::MountConfig
  :super ros::object
  :slots (_header _target_system _target_component _time_boot_ms _flags _quaternion _angular_velocity_x _angular_velocity_y _angular_velocity_z _failure_flags ))

(defmethod mavros_msgs::MountConfig
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:target_system __target_system) 0)
    ((:target_component __target_component) 0)
    ((:time_boot_ms __time_boot_ms) 0)
    ((:flags __flags) 0)
    ((:quaternion __quaternion) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:angular_velocity_x __angular_velocity_x) 0.0)
    ((:angular_velocity_y __angular_velocity_y) 0.0)
    ((:angular_velocity_z __angular_velocity_z) 0.0)
    ((:failure_flags __failure_flags) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _target_system (round __target_system))
   (setq _target_component (round __target_component))
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _flags (round __flags))
   (setq _quaternion __quaternion)
   (setq _angular_velocity_x (float __angular_velocity_x))
   (setq _angular_velocity_y (float __angular_velocity_y))
   (setq _angular_velocity_z (float __angular_velocity_z))
   (setq _failure_flags (round __failure_flags))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:target_system
   (&optional __target_system)
   (if __target_system (setq _target_system __target_system)) _target_system)
  (:target_component
   (&optional __target_component)
   (if __target_component (setq _target_component __target_component)) _target_component)
  (:time_boot_ms
   (&optional __time_boot_ms)
   (if __time_boot_ms (setq _time_boot_ms __time_boot_ms)) _time_boot_ms)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:quaternion
   (&optional __quaternion)
   (if __quaternion (setq _quaternion __quaternion)) _quaternion)
  (:angular_velocity_x
   (&optional __angular_velocity_x)
   (if __angular_velocity_x (setq _angular_velocity_x __angular_velocity_x)) _angular_velocity_x)
  (:angular_velocity_y
   (&optional __angular_velocity_y)
   (if __angular_velocity_y (setq _angular_velocity_y __angular_velocity_y)) _angular_velocity_y)
  (:angular_velocity_z
   (&optional __angular_velocity_z)
   (if __angular_velocity_z (setq _angular_velocity_z __angular_velocity_z)) _angular_velocity_z)
  (:failure_flags
   (&optional __failure_flags)
   (if __failure_flags (setq _failure_flags __failure_flags)) _failure_flags)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _target_system
    1
    ;; uint8 _target_component
    1
    ;; uint64 _time_boot_ms
    8
    ;; uint8 _flags
    1
    ;; float32[4] _quaternion
    (* 4    4)
    ;; float32 _angular_velocity_x
    4
    ;; float32 _angular_velocity_y
    4
    ;; float32 _angular_velocity_z
    4
    ;; uint64 _failure_flags
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _target_system
       (write-byte _target_system s)
     ;; uint8 _target_component
       (write-byte _target_component s)
     ;; uint64 _time_boot_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_boot_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_boot_ms) (= (length (_time_boot_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_boot_ms . bv) 0) 0) s)
              (write-long (ash (elt (_time_boot_ms . bv) 1) -1) s))
             ((and (class _time_boot_ms) (= (length (_time_boot_ms . bv)) 1)) ;; big1
              (write-long (elt (_time_boot_ms . bv) 0) s)
              (write-long (if (>= _time_boot_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_boot_ms s)(write-long (if (>= _time_boot_ms 0) 0 #xffffffff) s)))
     ;; uint8 _flags
       (write-byte _flags s)
     ;; float32[4] _quaternion
     (dotimes (i 4)
       (sys::poke (elt _quaternion i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _angular_velocity_x
       (sys::poke _angular_velocity_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity_y
       (sys::poke _angular_velocity_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity_z
       (sys::poke _angular_velocity_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _failure_flags
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _failure_flags (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _failure_flags) (= (length (_failure_flags . bv)) 2)) ;; bignum
              (write-long (ash (elt (_failure_flags . bv) 0) 0) s)
              (write-long (ash (elt (_failure_flags . bv) 1) -1) s))
             ((and (class _failure_flags) (= (length (_failure_flags . bv)) 1)) ;; big1
              (write-long (elt (_failure_flags . bv) 0) s)
              (write-long (if (>= _failure_flags 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _failure_flags s)(write-long (if (>= _failure_flags 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _target_system
     (setq _target_system (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_component
     (setq _target_component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _time_boot_ms
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_boot_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_boot_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[4] _quaternion
   (dotimes (i (length _quaternion))
     (setf (elt _quaternion i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _angular_velocity_x
     (setq _angular_velocity_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity_y
     (setq _angular_velocity_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity_z
     (setq _angular_velocity_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _failure_flags
     
#+(or :alpha :irix6 :x86_64)
      (setf _failure_flags (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _failure_flags (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get mavros_msgs::MountConfig :md5sum-) "9f23c23b92915eeef7f5b09d790a38e5")
(setf (get mavros_msgs::MountConfig :datatype-) "mavros_msgs/MountConfig")
(setf (get mavros_msgs::MountConfig :definition-)
      "# HilActuatorControls.msg
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

")



(provide :mavros_msgs/MountConfig "9f23c23b92915eeef7f5b09d790a38e5")


