; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude ErrorCodes.msg.html

(cl:defclass <ErrorCodes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ErrorCodes (<ErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<ErrorCodes> is deprecated: use rocon_interaction_msgs-msg:ErrorCodes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ErrorCodes>)))
    "Constants for message type '<ErrorCodes>"
  '((:SUCCESS . 0)
    (:INTERACTION_UNAVAILABLE . 20)
    (:INTERACTION_QUOTA_REACHED . 21)
    (:START_PAIRED_RAPP_FAILED . 31)
    (:ALREADY_PAIRING . 32)
    (:MSG_INTERACTION_UNAVAILABLE . "This role-app pair is not available for use.")
    (:MSG_INTERACTION_QUOTA_REACHED . "More connections of this type not permitted.")
    (:MSG_START_PAIRED_RAPP_FAILED . "Failed to start the paired rapp.")
    (:MSG_ALREADY_PAIRING . "Already pairing, cannot start another pairing."))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ErrorCodes)))
    "Constants for message type 'ErrorCodes"
  '((:SUCCESS . 0)
    (:INTERACTION_UNAVAILABLE . 20)
    (:INTERACTION_QUOTA_REACHED . 21)
    (:START_PAIRED_RAPP_FAILED . 31)
    (:ALREADY_PAIRING . 32)
    (:MSG_INTERACTION_UNAVAILABLE . "This role-app pair is not available for use.")
    (:MSG_INTERACTION_QUOTA_REACHED . "More connections of this type not permitted.")
    (:MSG_START_PAIRED_RAPP_FAILED . "Failed to start the paired rapp.")
    (:MSG_ALREADY_PAIRING . "Already pairing, cannot start another pairing."))
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
  "rocon_interaction_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorCodes)))
  "Returns string type for a message object of type 'ErrorCodes"
  "rocon_interaction_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorCodes>)))
  "Returns md5sum for a message object of type '<ErrorCodes>"
  "5137814d1764e0f595e2a0aeb307c101")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorCodes)))
  "Returns md5sum for a message object of type 'ErrorCodes"
  "5137814d1764e0f595e2a0aeb307c101")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorCodes>)))
  "Returns full string definition for message of type '<ErrorCodes>"
  (cl:format cl:nil "# Error types for interactions~%~%int8 SUCCESS = 0~%~%# Interaction errors~%int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available~%int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached ~%~%# Pairing errors~%int8 START_PAIRED_RAPP_FAILED = 31   # If a paired rapp fails to start.~%int8 ALREADY_PAIRING          = 32   # If trying to start a pairing, but already pairing~%~%string MSG_INTERACTION_UNAVAILABLE   = \"This role-app pair is not available for use.\"~%string MSG_INTERACTION_QUOTA_REACHED = \"More connections of this type not permitted.\"~%string MSG_START_PAIRED_RAPP_FAILED  = \"Failed to start the paired rapp.\"~%string MSG_ALREADY_PAIRING           = \"Already pairing, cannot start another pairing.\"~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorCodes)))
  "Returns full string definition for message of type 'ErrorCodes"
  (cl:format cl:nil "# Error types for interactions~%~%int8 SUCCESS = 0~%~%# Interaction errors~%int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available~%int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached ~%~%# Pairing errors~%int8 START_PAIRED_RAPP_FAILED = 31   # If a paired rapp fails to start.~%int8 ALREADY_PAIRING          = 32   # If trying to start a pairing, but already pairing~%~%string MSG_INTERACTION_UNAVAILABLE   = \"This role-app pair is not available for use.\"~%string MSG_INTERACTION_QUOTA_REACHED = \"More connections of this type not permitted.\"~%string MSG_START_PAIRED_RAPP_FAILED  = \"Failed to start the paired rapp.\"~%string MSG_ALREADY_PAIRING           = \"Already pairing, cannot start another pairing.\"~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorCodes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorCodes
))
