; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-msg)


;//! \htmlinclude ErrorCodes.msg.html

(cl:defclass <ErrorCodes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ErrorCodes (<ErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-msg:<ErrorCodes> is deprecated: use gateway_msgs-msg:ErrorCodes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ErrorCodes>)))
    "Constants for message type '<ErrorCodes>"
  '((:SUCCESS . 0)
    (:NO_HUB_CONNECTION . 1)
    (:HUB_CONNECTION_ALREADY_EXISTS . 11)
    (:HUB_CONNECTION_UNRESOLVABLE . 12)
    (:HUB_CONNECTION_BLACKLISTED . 13)
    (:HUB_CONNECTION_FAILED . 14)
    (:HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST . 15)
    (:HUB_NAME_NOT_FOUND . 16)
    (:HUB_CONNECTION_LOST . 17)
    (:HUB_UNKNOWN_ERROR . 19)
    (:FLIP_RULE_ALREADY_EXISTS . 22)
    (:FLIP_PATTERN_ALREDY_EXISTS . 23)
    (:FLIP_REMOTE_GATEWAY_FIREWALLING . 24)
    (:ADVERTISEMENT_EXISTS . 31)
    (:ADVERTISEMENT_NOT_FOUND . 32)
    (:UNKNOWN_ADVERTISEMENT_ERROR . 39)
    (:PULL_RULE_ALREADY_EXISTS . 41)
    (:REMOTE_GATEWAY_NOT_VISIBLE . 51)
    (:REMOTE_GATEWAY_SELF_IS_NOT . 52)
    (:REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES . 53))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ErrorCodes)))
    "Constants for message type 'ErrorCodes"
  '((:SUCCESS . 0)
    (:NO_HUB_CONNECTION . 1)
    (:HUB_CONNECTION_ALREADY_EXISTS . 11)
    (:HUB_CONNECTION_UNRESOLVABLE . 12)
    (:HUB_CONNECTION_BLACKLISTED . 13)
    (:HUB_CONNECTION_FAILED . 14)
    (:HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST . 15)
    (:HUB_NAME_NOT_FOUND . 16)
    (:HUB_CONNECTION_LOST . 17)
    (:HUB_UNKNOWN_ERROR . 19)
    (:FLIP_RULE_ALREADY_EXISTS . 22)
    (:FLIP_PATTERN_ALREDY_EXISTS . 23)
    (:FLIP_REMOTE_GATEWAY_FIREWALLING . 24)
    (:ADVERTISEMENT_EXISTS . 31)
    (:ADVERTISEMENT_NOT_FOUND . 32)
    (:UNKNOWN_ADVERTISEMENT_ERROR . 39)
    (:PULL_RULE_ALREADY_EXISTS . 41)
    (:REMOTE_GATEWAY_NOT_VISIBLE . 51)
    (:REMOTE_GATEWAY_SELF_IS_NOT . 52)
    (:REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES . 53))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorCodes>) ostream)
  "Serializes a message object of type '<ErrorCodes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorCodes>) istream)
  "Deserializes a message object of type '<ErrorCodes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorCodes>)))
  "Returns string type for a message object of type '<ErrorCodes>"
  "gateway_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorCodes)))
  "Returns string type for a message object of type 'ErrorCodes"
  "gateway_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorCodes>)))
  "Returns md5sum for a message object of type '<ErrorCodes>"
  "cc2f69c68d11f625f99f07d82c572d47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorCodes)))
  "Returns md5sum for a message object of type 'ErrorCodes"
  "cc2f69c68d11f625f99f07d82c572d47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorCodes>)))
  "Returns full string definition for message of type '<ErrorCodes>"
  (cl:format cl:nil "# Error types for the gateway ros api~%~%# General~%int8 SUCCESS = 0~%int8 NO_HUB_CONNECTION = 1~%~%# Hub~%int8 HUB_CONNECTION_ALREADY_EXISTS = 11~%int8 HUB_CONNECTION_UNRESOLVABLE = 12~%int8 HUB_CONNECTION_BLACKLISTED = 13~%int8 HUB_CONNECTION_FAILED = 14~%int8 HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST = 15~%int8 HUB_NAME_NOT_FOUND = 16~%int8 HUB_CONNECTION_LOST = 17~%int8 HUB_UNKNOWN_ERROR = 19~%~%# Flipping~%int8 FLIP_RULE_ALREADY_EXISTS = 22~%int8 FLIP_PATTERN_ALREDY_EXISTS = 23~%int8 FLIP_REMOTE_GATEWAY_FIREWALLING = 24~%~%# Advertise~%int8 ADVERTISEMENT_EXISTS = 31~%int8 ADVERTISEMENT_NOT_FOUND = 32~%int8 UNKNOWN_ADVERTISEMENT_ERROR = 39~%~%# Pulling~%int8 PULL_RULE_ALREADY_EXISTS = 41~%~%# Remotes~%int8 REMOTE_GATEWAY_NOT_VISIBLE = 51~%int8 REMOTE_GATEWAY_SELF_IS_NOT = 52~%int8 REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES = 53~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorCodes)))
  "Returns full string definition for message of type 'ErrorCodes"
  (cl:format cl:nil "# Error types for the gateway ros api~%~%# General~%int8 SUCCESS = 0~%int8 NO_HUB_CONNECTION = 1~%~%# Hub~%int8 HUB_CONNECTION_ALREADY_EXISTS = 11~%int8 HUB_CONNECTION_UNRESOLVABLE = 12~%int8 HUB_CONNECTION_BLACKLISTED = 13~%int8 HUB_CONNECTION_FAILED = 14~%int8 HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST = 15~%int8 HUB_NAME_NOT_FOUND = 16~%int8 HUB_CONNECTION_LOST = 17~%int8 HUB_UNKNOWN_ERROR = 19~%~%# Flipping~%int8 FLIP_RULE_ALREADY_EXISTS = 22~%int8 FLIP_PATTERN_ALREDY_EXISTS = 23~%int8 FLIP_REMOTE_GATEWAY_FIREWALLING = 24~%~%# Advertise~%int8 ADVERTISEMENT_EXISTS = 31~%int8 ADVERTISEMENT_NOT_FOUND = 32~%int8 UNKNOWN_ADVERTISEMENT_ERROR = 39~%~%# Pulling~%int8 PULL_RULE_ALREADY_EXISTS = 41~%~%# Remotes~%int8 REMOTE_GATEWAY_NOT_VISIBLE = 51~%int8 REMOTE_GATEWAY_SELF_IS_NOT = 52~%int8 REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES = 53~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorCodes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorCodes
))
