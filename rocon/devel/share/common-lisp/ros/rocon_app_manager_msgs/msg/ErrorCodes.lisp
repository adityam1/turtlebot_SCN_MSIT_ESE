; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-msg)


;//! \htmlinclude ErrorCodes.msg.html

(cl:defclass <ErrorCodes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ErrorCodes (<ErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-msg:<ErrorCodes> is deprecated: use rocon_app_manager_msgs-msg:ErrorCodes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ErrorCodes>)))
    "Constants for message type '<ErrorCodes>"
  '((:SUCCESS . 0)
    (:UNKNOWN . 1)
    (:MULTI_RAPP_NOT_SUPPORTED . 10)
    (:RAPP_IS_NOT_RUNNING . 20)
    (:RAPP_IS_NOT_AVAILABLE . 21)
    (:LOCAL_INVITATIONS_ONLY . 30)
    (:NO_LOCAL_GATEWAY . 31)
    (:ALREADY_REMOTE_CONTROLLED . 32)
    (:NOT_CURRENT_REMOTE_CONTROLLER . 33)
    (:INVITING_CONTROLLER_NOT_WHITELISTED . 34)
    (:INVITING_CONTROLLER_BLACKLISTED . 35)
    (:CLIENT_CONNECTION_DISRUPTED . 36))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ErrorCodes)))
    "Constants for message type 'ErrorCodes"
  '((:SUCCESS . 0)
    (:UNKNOWN . 1)
    (:MULTI_RAPP_NOT_SUPPORTED . 10)
    (:RAPP_IS_NOT_RUNNING . 20)
    (:RAPP_IS_NOT_AVAILABLE . 21)
    (:LOCAL_INVITATIONS_ONLY . 30)
    (:NO_LOCAL_GATEWAY . 31)
    (:ALREADY_REMOTE_CONTROLLED . 32)
    (:NOT_CURRENT_REMOTE_CONTROLLER . 33)
    (:INVITING_CONTROLLER_NOT_WHITELISTED . 34)
    (:INVITING_CONTROLLER_BLACKLISTED . 35)
    (:CLIENT_CONNECTION_DISRUPTED . 36))
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
  "rocon_app_manager_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorCodes)))
  "Returns string type for a message object of type 'ErrorCodes"
  "rocon_app_manager_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorCodes>)))
  "Returns md5sum for a message object of type '<ErrorCodes>"
  "cec38b743e8d5698477f7be4d8bfebb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorCodes)))
  "Returns md5sum for a message object of type 'ErrorCodes"
  "cec38b743e8d5698477f7be4d8bfebb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorCodes>)))
  "Returns full string definition for message of type '<ErrorCodes>"
  (cl:format cl:nil "# Error types for the rocon app manager~%~%# General~%int8 SUCCESS = 0~%int8 UNKNOWN = 1~%~%# Start~%int8 MULTI_RAPP_NOT_SUPPORTED = 10~%~%# Stop Rapp~%int8 RAPP_IS_NOT_RUNNING = 20~%int8 RAPP_IS_NOT_AVAILABLE = 21~%~%# Invitations~%int8 LOCAL_INVITATIONS_ONLY = 30~%int8 NO_LOCAL_GATEWAY = 31~%int8 ALREADY_REMOTE_CONTROLLED = 32~%int8 NOT_CURRENT_REMOTE_CONTROLLER = 33~%int8 INVITING_CONTROLLER_NOT_WHITELISTED = 34~%int8 INVITING_CONTROLLER_BLACKLISTED = 35~%int8 CLIENT_CONNECTION_DISRUPTED = 36~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorCodes)))
  "Returns full string definition for message of type 'ErrorCodes"
  (cl:format cl:nil "# Error types for the rocon app manager~%~%# General~%int8 SUCCESS = 0~%int8 UNKNOWN = 1~%~%# Start~%int8 MULTI_RAPP_NOT_SUPPORTED = 10~%~%# Stop Rapp~%int8 RAPP_IS_NOT_RUNNING = 20~%int8 RAPP_IS_NOT_AVAILABLE = 21~%~%# Invitations~%int8 LOCAL_INVITATIONS_ONLY = 30~%int8 NO_LOCAL_GATEWAY = 31~%int8 ALREADY_REMOTE_CONTROLLED = 32~%int8 NOT_CURRENT_REMOTE_CONTROLLER = 33~%int8 INVITING_CONTROLLER_NOT_WHITELISTED = 34~%int8 INVITING_CONTROLLER_BLACKLISTED = 35~%int8 CLIENT_CONNECTION_DISRUPTED = 36~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorCodes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorCodes
))
