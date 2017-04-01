; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-msg)


;//! \htmlinclude RemoteRuleWithStatus.msg.html

(cl:defclass <RemoteRuleWithStatus> (roslisp-msg-protocol:ros-message)
  ((remote_rule
    :reader remote_rule
    :initarg :remote_rule
    :type gateway_msgs-msg:RemoteRule
    :initform (cl:make-instance 'gateway_msgs-msg:RemoteRule))
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass RemoteRuleWithStatus (<RemoteRuleWithStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteRuleWithStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteRuleWithStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-msg:<RemoteRuleWithStatus> is deprecated: use gateway_msgs-msg:RemoteRuleWithStatus instead.")))

(cl:ensure-generic-function 'remote_rule-val :lambda-list '(m))
(cl:defmethod remote_rule-val ((m <RemoteRuleWithStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:remote_rule-val is deprecated.  Use gateway_msgs-msg:remote_rule instead.")
  (remote_rule m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RemoteRuleWithStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:status-val is deprecated.  Use gateway_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RemoteRuleWithStatus>)))
    "Constants for message type '<RemoteRuleWithStatus>"
  '((:UNKNOWN . unknown)
    (:PENDING . pending)
    (:ACCEPTED . accepted)
    (:BLOCKED . blocked)
    (:RESEND . resend))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RemoteRuleWithStatus)))
    "Constants for message type 'RemoteRuleWithStatus"
  '((:UNKNOWN . unknown)
    (:PENDING . pending)
    (:ACCEPTED . accepted)
    (:BLOCKED . blocked)
    (:RESEND . resend))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteRuleWithStatus>) ostream)
  "Serializes a message object of type '<RemoteRuleWithStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'remote_rule) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteRuleWithStatus>) istream)
  "Deserializes a message object of type '<RemoteRuleWithStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'remote_rule) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteRuleWithStatus>)))
  "Returns string type for a message object of type '<RemoteRuleWithStatus>"
  "gateway_msgs/RemoteRuleWithStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteRuleWithStatus)))
  "Returns string type for a message object of type 'RemoteRuleWithStatus"
  "gateway_msgs/RemoteRuleWithStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteRuleWithStatus>)))
  "Returns md5sum for a message object of type '<RemoteRuleWithStatus>"
  "7892d8834068a87e345fff91adc26a5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteRuleWithStatus)))
  "Returns md5sum for a message object of type 'RemoteRuleWithStatus"
  "7892d8834068a87e345fff91adc26a5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteRuleWithStatus>)))
  "Returns full string definition for message of type '<RemoteRuleWithStatus>"
  (cl:format cl:nil "# The remote rule whose status is being defined here~%RemoteRule remote_rule~%~%# Whether the flip is still pending, was accepted ~%string UNKNOWN=unknown~%string PENDING=pending~%string ACCEPTED=accepted~%string BLOCKED=blocked~%string RESEND=resend~%string status~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteRuleWithStatus)))
  "Returns full string definition for message of type 'RemoteRuleWithStatus"
  (cl:format cl:nil "# The remote rule whose status is being defined here~%RemoteRule remote_rule~%~%# Whether the flip is still pending, was accepted ~%string UNKNOWN=unknown~%string PENDING=pending~%string ACCEPTED=accepted~%string BLOCKED=blocked~%string RESEND=resend~%string status~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteRuleWithStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'remote_rule))
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteRuleWithStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteRuleWithStatus
    (cl:cons ':remote_rule (remote_rule msg))
    (cl:cons ':status (status msg))
))
