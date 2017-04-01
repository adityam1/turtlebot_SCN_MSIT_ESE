; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-msg)


;//! \htmlinclude ConnectionStatistics.msg.html

(cl:defclass <ConnectionStatistics> (roslisp-msg-protocol:ros-message)
  ((gateway_available
    :reader gateway_available
    :initarg :gateway_available
    :type cl:boolean
    :initform cl:nil)
   (time_since_last_seen
    :reader time_since_last_seen
    :initarg :time_since_last_seen
    :type cl:integer
    :initform 0)
   (ping_latency_min
    :reader ping_latency_min
    :initarg :ping_latency_min
    :type cl:float
    :initform 0.0)
   (ping_latency_max
    :reader ping_latency_max
    :initarg :ping_latency_max
    :type cl:float
    :initform 0.0)
   (ping_latency_avg
    :reader ping_latency_avg
    :initarg :ping_latency_avg
    :type cl:float
    :initform 0.0)
   (ping_latency_mdev
    :reader ping_latency_mdev
    :initarg :ping_latency_mdev
    :type cl:float
    :initform 0.0)
   (network_info_available
    :reader network_info_available
    :initarg :network_info_available
    :type cl:boolean
    :initform cl:nil)
   (network_type
    :reader network_type
    :initarg :network_type
    :type cl:fixnum
    :initform 0)
   (wireless_bitrate
    :reader wireless_bitrate
    :initarg :wireless_bitrate
    :type cl:float
    :initform 0.0)
   (wireless_link_quality
    :reader wireless_link_quality
    :initarg :wireless_link_quality
    :type cl:fixnum
    :initform 0)
   (wireless_signal_level
    :reader wireless_signal_level
    :initarg :wireless_signal_level
    :type cl:float
    :initform 0.0)
   (wireless_noise_level
    :reader wireless_noise_level
    :initarg :wireless_noise_level
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConnectionStatistics (<ConnectionStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-msg:<ConnectionStatistics> is deprecated: use gateway_msgs-msg:ConnectionStatistics instead.")))

(cl:ensure-generic-function 'gateway_available-val :lambda-list '(m))
(cl:defmethod gateway_available-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:gateway_available-val is deprecated.  Use gateway_msgs-msg:gateway_available instead.")
  (gateway_available m))

(cl:ensure-generic-function 'time_since_last_seen-val :lambda-list '(m))
(cl:defmethod time_since_last_seen-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:time_since_last_seen-val is deprecated.  Use gateway_msgs-msg:time_since_last_seen instead.")
  (time_since_last_seen m))

(cl:ensure-generic-function 'ping_latency_min-val :lambda-list '(m))
(cl:defmethod ping_latency_min-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:ping_latency_min-val is deprecated.  Use gateway_msgs-msg:ping_latency_min instead.")
  (ping_latency_min m))

(cl:ensure-generic-function 'ping_latency_max-val :lambda-list '(m))
(cl:defmethod ping_latency_max-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:ping_latency_max-val is deprecated.  Use gateway_msgs-msg:ping_latency_max instead.")
  (ping_latency_max m))

(cl:ensure-generic-function 'ping_latency_avg-val :lambda-list '(m))
(cl:defmethod ping_latency_avg-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:ping_latency_avg-val is deprecated.  Use gateway_msgs-msg:ping_latency_avg instead.")
  (ping_latency_avg m))

(cl:ensure-generic-function 'ping_latency_mdev-val :lambda-list '(m))
(cl:defmethod ping_latency_mdev-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:ping_latency_mdev-val is deprecated.  Use gateway_msgs-msg:ping_latency_mdev instead.")
  (ping_latency_mdev m))

(cl:ensure-generic-function 'network_info_available-val :lambda-list '(m))
(cl:defmethod network_info_available-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:network_info_available-val is deprecated.  Use gateway_msgs-msg:network_info_available instead.")
  (network_info_available m))

(cl:ensure-generic-function 'network_type-val :lambda-list '(m))
(cl:defmethod network_type-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:network_type-val is deprecated.  Use gateway_msgs-msg:network_type instead.")
  (network_type m))

(cl:ensure-generic-function 'wireless_bitrate-val :lambda-list '(m))
(cl:defmethod wireless_bitrate-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:wireless_bitrate-val is deprecated.  Use gateway_msgs-msg:wireless_bitrate instead.")
  (wireless_bitrate m))

(cl:ensure-generic-function 'wireless_link_quality-val :lambda-list '(m))
(cl:defmethod wireless_link_quality-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:wireless_link_quality-val is deprecated.  Use gateway_msgs-msg:wireless_link_quality instead.")
  (wireless_link_quality m))

(cl:ensure-generic-function 'wireless_signal_level-val :lambda-list '(m))
(cl:defmethod wireless_signal_level-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:wireless_signal_level-val is deprecated.  Use gateway_msgs-msg:wireless_signal_level instead.")
  (wireless_signal_level m))

(cl:ensure-generic-function 'wireless_noise_level-val :lambda-list '(m))
(cl:defmethod wireless_noise_level-val ((m <ConnectionStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:wireless_noise_level-val is deprecated.  Use gateway_msgs-msg:wireless_noise_level instead.")
  (wireless_noise_level m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConnectionStatistics>)))
    "Constants for message type '<ConnectionStatistics>"
  '((:WIRED . 1)
    (:WIRELESS . 2)
    (:MAX_TTL . 86400))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConnectionStatistics)))
    "Constants for message type 'ConnectionStatistics"
  '((:WIRED . 1)
    (:WIRELESS . 2)
    (:MAX_TTL . 86400))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionStatistics>) ostream)
  "Serializes a message object of type '<ConnectionStatistics>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gateway_available) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'time_since_last_seen)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ping_latency_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ping_latency_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ping_latency_avg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ping_latency_mdev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'network_info_available) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'network_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wireless_bitrate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wireless_link_quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wireless_signal_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wireless_noise_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionStatistics>) istream)
  "Deserializes a message object of type '<ConnectionStatistics>"
    (cl:setf (cl:slot-value msg 'gateway_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_since_last_seen) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ping_latency_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ping_latency_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ping_latency_avg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ping_latency_mdev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'network_info_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'network_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wireless_bitrate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wireless_link_quality) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wireless_signal_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wireless_noise_level) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionStatistics>)))
  "Returns string type for a message object of type '<ConnectionStatistics>"
  "gateway_msgs/ConnectionStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionStatistics)))
  "Returns string type for a message object of type 'ConnectionStatistics"
  "gateway_msgs/ConnectionStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionStatistics>)))
  "Returns md5sum for a message object of type '<ConnectionStatistics>"
  "672067d5ab3e6157dcf8224022da3ee6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionStatistics)))
  "Returns md5sum for a message object of type 'ConnectionStatistics"
  "672067d5ab3e6157dcf8224022da3ee6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionStatistics>)))
  "Returns full string definition for message of type '<ConnectionStatistics>"
  (cl:format cl:nil "# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionStatistics)))
  "Returns full string definition for message of type 'ConnectionStatistics"
  (cl:format cl:nil "# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionStatistics>))
  (cl:+ 0
     1
     8
     4
     4
     4
     4
     1
     1
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionStatistics
    (cl:cons ':gateway_available (gateway_available msg))
    (cl:cons ':time_since_last_seen (time_since_last_seen msg))
    (cl:cons ':ping_latency_min (ping_latency_min msg))
    (cl:cons ':ping_latency_max (ping_latency_max msg))
    (cl:cons ':ping_latency_avg (ping_latency_avg msg))
    (cl:cons ':ping_latency_mdev (ping_latency_mdev msg))
    (cl:cons ':network_info_available (network_info_available msg))
    (cl:cons ':network_type (network_type msg))
    (cl:cons ':wireless_bitrate (wireless_bitrate msg))
    (cl:cons ':wireless_link_quality (wireless_link_quality msg))
    (cl:cons ':wireless_signal_level (wireless_signal_level msg))
    (cl:cons ':wireless_noise_level (wireless_noise_level msg))
))
