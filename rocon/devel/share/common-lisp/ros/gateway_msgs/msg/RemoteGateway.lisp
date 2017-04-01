; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-msg)


;//! \htmlinclude RemoteGateway.msg.html

(cl:defclass <RemoteGateway> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (firewall
    :reader firewall
    :initarg :firewall
    :type cl:boolean
    :initform cl:nil)
   (conn_stats
    :reader conn_stats
    :initarg :conn_stats
    :type gateway_msgs-msg:ConnectionStatistics
    :initform (cl:make-instance 'gateway_msgs-msg:ConnectionStatistics))
   (public_interface
    :reader public_interface
    :initarg :public_interface
    :type (cl:vector gateway_msgs-msg:Rule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:Rule :initial-element (cl:make-instance 'gateway_msgs-msg:Rule)))
   (flipped_interface
    :reader flipped_interface
    :initarg :flipped_interface
    :type (cl:vector gateway_msgs-msg:RemoteRule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:RemoteRule :initial-element (cl:make-instance 'gateway_msgs-msg:RemoteRule)))
   (pulled_interface
    :reader pulled_interface
    :initarg :pulled_interface
    :type (cl:vector gateway_msgs-msg:RemoteRule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:RemoteRule :initial-element (cl:make-instance 'gateway_msgs-msg:RemoteRule))))
)

(cl:defclass RemoteGateway (<RemoteGateway>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteGateway>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteGateway)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-msg:<RemoteGateway> is deprecated: use gateway_msgs-msg:RemoteGateway instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RemoteGateway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:name-val is deprecated.  Use gateway_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <RemoteGateway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:ip-val is deprecated.  Use gateway_msgs-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'firewall-val :lambda-list '(m))
(cl:defmethod firewall-val ((m <RemoteGateway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:firewall-val is deprecated.  Use gateway_msgs-msg:firewall instead.")
  (firewall m))

(cl:ensure-generic-function 'conn_stats-val :lambda-list '(m))
(cl:defmethod conn_stats-val ((m <RemoteGateway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:conn_stats-val is deprecated.  Use gateway_msgs-msg:conn_stats instead.")
  (conn_stats m))

(cl:ensure-generic-function 'public_interface-val :lambda-list '(m))
(cl:defmethod public_interface-val ((m <RemoteGateway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:public_interface-val is deprecated.  Use gateway_msgs-msg:public_interface instead.")
  (public_interface m))

(cl:ensure-generic-function 'flipped_interface-val :lambda-list '(m))
(cl:defmethod flipped_interface-val ((m <RemoteGateway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:flipped_interface-val is deprecated.  Use gateway_msgs-msg:flipped_interface instead.")
  (flipped_interface m))

(cl:ensure-generic-function 'pulled_interface-val :lambda-list '(m))
(cl:defmethod pulled_interface-val ((m <RemoteGateway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:pulled_interface-val is deprecated.  Use gateway_msgs-msg:pulled_interface instead.")
  (pulled_interface m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RemoteGateway>)))
    "Constants for message type '<RemoteGateway>"
  '((:WIRED . 1)
    (:WIRELESS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RemoteGateway)))
    "Constants for message type 'RemoteGateway"
  '((:WIRED . 1)
    (:WIRELESS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteGateway>) ostream)
  "Serializes a message object of type '<RemoteGateway>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'firewall) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'conn_stats) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'public_interface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'public_interface))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flipped_interface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'flipped_interface))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pulled_interface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pulled_interface))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteGateway>) istream)
  "Deserializes a message object of type '<RemoteGateway>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'firewall) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'conn_stats) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'public_interface) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'public_interface)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:Rule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flipped_interface) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flipped_interface)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:RemoteRule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pulled_interface) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pulled_interface)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:RemoteRule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteGateway>)))
  "Returns string type for a message object of type '<RemoteGateway>"
  "gateway_msgs/RemoteGateway")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteGateway)))
  "Returns string type for a message object of type 'RemoteGateway"
  "gateway_msgs/RemoteGateway")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteGateway>)))
  "Returns md5sum for a message object of type '<RemoteGateway>"
  "58607c66cd963e494a28cb3f919087f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteGateway)))
  "Returns md5sum for a message object of type 'RemoteGateway"
  "58607c66cd963e494a28cb3f919087f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteGateway>)))
  "Returns full string definition for message of type '<RemoteGateway>"
  (cl:format cl:nil "###### Gateway information ######~%string name~%string ip~%#TODO blocking status~%bool firewall~%~%# Remote Gateway Statistics~%~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%~%#Connection Statistics~%ConnectionStatistics conn_stats~%~%###### Public Interface ######~%~%Rule[] public_interface~%~%###### Flipped Interface ######~%~%# Flipped and pulled interfaces would be useful for debugging ~%#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84~%~%RemoteRule[] flipped_interface~%RemoteRule[] pulled_interface~%~%###### Foreign Interface ######~%~%# Q) Should we show these?~%# A) Probably not, in the overall scheme of things, ~%#    it doubles up the information from above~%~%# RemoteRule[] flipped_in_connections~%# RemoteRule[] pulled_connections~%~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteGateway)))
  "Returns full string definition for message of type 'RemoteGateway"
  (cl:format cl:nil "###### Gateway information ######~%string name~%string ip~%#TODO blocking status~%bool firewall~%~%# Remote Gateway Statistics~%~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%~%#Connection Statistics~%ConnectionStatistics conn_stats~%~%###### Public Interface ######~%~%Rule[] public_interface~%~%###### Flipped Interface ######~%~%# Flipped and pulled interfaces would be useful for debugging ~%#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84~%~%RemoteRule[] flipped_interface~%RemoteRule[] pulled_interface~%~%###### Foreign Interface ######~%~%# Q) Should we show these?~%# A) Probably not, in the overall scheme of things, ~%#    it doubles up the information from above~%~%# RemoteRule[] flipped_in_connections~%# RemoteRule[] pulled_connections~%~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteGateway>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'ip))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'conn_stats))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'public_interface) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flipped_interface) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pulled_interface) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteGateway>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteGateway
    (cl:cons ':name (name msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':firewall (firewall msg))
    (cl:cons ':conn_stats (conn_stats msg))
    (cl:cons ':public_interface (public_interface msg))
    (cl:cons ':flipped_interface (flipped_interface msg))
    (cl:cons ':pulled_interface (pulled_interface msg))
))
