; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-msg)


;//! \htmlinclude RemoteRule.msg.html

(cl:defclass <RemoteRule> (roslisp-msg-protocol:ros-message)
  ((gateway
    :reader gateway
    :initarg :gateway
    :type cl:string
    :initform "")
   (rule
    :reader rule
    :initarg :rule
    :type gateway_msgs-msg:Rule
    :initform (cl:make-instance 'gateway_msgs-msg:Rule)))
)

(cl:defclass RemoteRule (<RemoteRule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteRule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteRule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-msg:<RemoteRule> is deprecated: use gateway_msgs-msg:RemoteRule instead.")))

(cl:ensure-generic-function 'gateway-val :lambda-list '(m))
(cl:defmethod gateway-val ((m <RemoteRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:gateway-val is deprecated.  Use gateway_msgs-msg:gateway instead.")
  (gateway m))

(cl:ensure-generic-function 'rule-val :lambda-list '(m))
(cl:defmethod rule-val ((m <RemoteRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:rule-val is deprecated.  Use gateway_msgs-msg:rule instead.")
  (rule m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteRule>) ostream)
  "Serializes a message object of type '<RemoteRule>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gateway))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gateway))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rule) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteRule>) istream)
  "Deserializes a message object of type '<RemoteRule>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gateway) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gateway) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rule) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteRule>)))
  "Returns string type for a message object of type '<RemoteRule>"
  "gateway_msgs/RemoteRule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteRule)))
  "Returns string type for a message object of type 'RemoteRule"
  "gateway_msgs/RemoteRule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteRule>)))
  "Returns md5sum for a message object of type '<RemoteRule>"
  "14f4c5aaf33b32b22c50fd514747f99f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteRule)))
  "Returns md5sum for a message object of type 'RemoteRule"
  "14f4c5aaf33b32b22c50fd514747f99f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteRule>)))
  "Returns full string definition for message of type '<RemoteRule>"
  (cl:format cl:nil "# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteRule)))
  "Returns full string definition for message of type 'RemoteRule"
  (cl:format cl:nil "# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteRule>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gateway))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rule))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteRule>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteRule
    (cl:cons ':gateway (gateway msg))
    (cl:cons ':rule (rule msg))
))
