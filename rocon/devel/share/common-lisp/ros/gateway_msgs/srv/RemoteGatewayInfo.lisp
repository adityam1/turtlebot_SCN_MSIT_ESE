; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-srv)


;//! \htmlinclude RemoteGatewayInfo-request.msg.html

(cl:defclass <RemoteGatewayInfo-request> (roslisp-msg-protocol:ros-message)
  ((gateways
    :reader gateways
    :initarg :gateways
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RemoteGatewayInfo-request (<RemoteGatewayInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteGatewayInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteGatewayInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<RemoteGatewayInfo-request> is deprecated: use gateway_msgs-srv:RemoteGatewayInfo-request instead.")))

(cl:ensure-generic-function 'gateways-val :lambda-list '(m))
(cl:defmethod gateways-val ((m <RemoteGatewayInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:gateways-val is deprecated.  Use gateway_msgs-srv:gateways instead.")
  (gateways m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteGatewayInfo-request>) ostream)
  "Serializes a message object of type '<RemoteGatewayInfo-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gateways))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'gateways))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteGatewayInfo-request>) istream)
  "Deserializes a message object of type '<RemoteGatewayInfo-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gateways) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gateways)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteGatewayInfo-request>)))
  "Returns string type for a service object of type '<RemoteGatewayInfo-request>"
  "gateway_msgs/RemoteGatewayInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteGatewayInfo-request)))
  "Returns string type for a service object of type 'RemoteGatewayInfo-request"
  "gateway_msgs/RemoteGatewayInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteGatewayInfo-request>)))
  "Returns md5sum for a message object of type '<RemoteGatewayInfo-request>"
  "21b6c2a53d6cebe0c03f90dd0c85b58d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteGatewayInfo-request)))
  "Returns md5sum for a message object of type 'RemoteGatewayInfo-request"
  "21b6c2a53d6cebe0c03f90dd0c85b58d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteGatewayInfo-request>)))
  "Returns full string definition for message of type '<RemoteGatewayInfo-request>"
  (cl:format cl:nil "~%~%string[] gateways~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteGatewayInfo-request)))
  "Returns full string definition for message of type 'RemoteGatewayInfo-request"
  (cl:format cl:nil "~%~%string[] gateways~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteGatewayInfo-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gateways) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteGatewayInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteGatewayInfo-request
    (cl:cons ':gateways (gateways msg))
))
;//! \htmlinclude RemoteGatewayInfo-response.msg.html

(cl:defclass <RemoteGatewayInfo-response> (roslisp-msg-protocol:ros-message)
  ((gateways
    :reader gateways
    :initarg :gateways
    :type (cl:vector gateway_msgs-msg:RemoteGateway)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:RemoteGateway :initial-element (cl:make-instance 'gateway_msgs-msg:RemoteGateway))))
)

(cl:defclass RemoteGatewayInfo-response (<RemoteGatewayInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteGatewayInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteGatewayInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<RemoteGatewayInfo-response> is deprecated: use gateway_msgs-srv:RemoteGatewayInfo-response instead.")))

(cl:ensure-generic-function 'gateways-val :lambda-list '(m))
(cl:defmethod gateways-val ((m <RemoteGatewayInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:gateways-val is deprecated.  Use gateway_msgs-srv:gateways instead.")
  (gateways m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteGatewayInfo-response>) ostream)
  "Serializes a message object of type '<RemoteGatewayInfo-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gateways))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gateways))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteGatewayInfo-response>) istream)
  "Deserializes a message object of type '<RemoteGatewayInfo-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gateways) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gateways)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:RemoteGateway))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteGatewayInfo-response>)))
  "Returns string type for a service object of type '<RemoteGatewayInfo-response>"
  "gateway_msgs/RemoteGatewayInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteGatewayInfo-response)))
  "Returns string type for a service object of type 'RemoteGatewayInfo-response"
  "gateway_msgs/RemoteGatewayInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteGatewayInfo-response>)))
  "Returns md5sum for a message object of type '<RemoteGatewayInfo-response>"
  "21b6c2a53d6cebe0c03f90dd0c85b58d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteGatewayInfo-response)))
  "Returns md5sum for a message object of type 'RemoteGatewayInfo-response"
  "21b6c2a53d6cebe0c03f90dd0c85b58d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteGatewayInfo-response>)))
  "Returns full string definition for message of type '<RemoteGatewayInfo-response>"
  (cl:format cl:nil "RemoteGateway[] gateways~%~%~%================================================================================~%MSG: gateway_msgs/RemoteGateway~%###### Gateway information ######~%string name~%string ip~%#TODO blocking status~%bool firewall~%~%# Remote Gateway Statistics~%~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%~%#Connection Statistics~%ConnectionStatistics conn_stats~%~%###### Public Interface ######~%~%Rule[] public_interface~%~%###### Flipped Interface ######~%~%# Flipped and pulled interfaces would be useful for debugging ~%#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84~%~%RemoteRule[] flipped_interface~%RemoteRule[] pulled_interface~%~%###### Foreign Interface ######~%~%# Q) Should we show these?~%# A) Probably not, in the overall scheme of things, ~%#    it doubles up the information from above~%~%# RemoteRule[] flipped_in_connections~%# RemoteRule[] pulled_connections~%~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteGatewayInfo-response)))
  "Returns full string definition for message of type 'RemoteGatewayInfo-response"
  (cl:format cl:nil "RemoteGateway[] gateways~%~%~%================================================================================~%MSG: gateway_msgs/RemoteGateway~%###### Gateway information ######~%string name~%string ip~%#TODO blocking status~%bool firewall~%~%# Remote Gateway Statistics~%~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%~%#Connection Statistics~%ConnectionStatistics conn_stats~%~%###### Public Interface ######~%~%Rule[] public_interface~%~%###### Flipped Interface ######~%~%# Flipped and pulled interfaces would be useful for debugging ~%#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84~%~%RemoteRule[] flipped_interface~%RemoteRule[] pulled_interface~%~%###### Foreign Interface ######~%~%# Q) Should we show these?~%# A) Probably not, in the overall scheme of things, ~%#    it doubles up the information from above~%~%# RemoteRule[] flipped_in_connections~%# RemoteRule[] pulled_connections~%~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteGatewayInfo-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gateways) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteGatewayInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteGatewayInfo-response
    (cl:cons ':gateways (gateways msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoteGatewayInfo)))
  'RemoteGatewayInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoteGatewayInfo)))
  'RemoteGatewayInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteGatewayInfo)))
  "Returns string type for a service object of type '<RemoteGatewayInfo>"
  "gateway_msgs/RemoteGatewayInfo")