; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-msg)


;//! \htmlinclude Constants.msg.html

(cl:defclass <Constants> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Constants (<Constants>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Constants>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Constants)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-msg:<Constants> is deprecated: use rocon_app_manager_msgs-msg:Constants instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Constants>)))
    "Constants for message type '<Constants>"
  '((:NO_REMOTE_CONNECTION . none)
    (:NO_REMOTE_CONTROLLER . none))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Constants)))
    "Constants for message type 'Constants"
  '((:NO_REMOTE_CONNECTION . none)
    (:NO_REMOTE_CONTROLLER . none))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Constants>) ostream)
  "Serializes a message object of type '<Constants>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Constants>) istream)
  "Deserializes a message object of type '<Constants>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Constants>)))
  "Returns string type for a message object of type '<Constants>"
  "rocon_app_manager_msgs/Constants")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Constants)))
  "Returns string type for a message object of type 'Constants"
  "rocon_app_manager_msgs/Constants")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Constants>)))
  "Returns md5sum for a message object of type '<Constants>"
  "8dc55825f8d5b0d293568ddca66ef50f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Constants)))
  "Returns md5sum for a message object of type 'Constants"
  "8dc55825f8d5b0d293568ddca66ef50f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Constants>)))
  "Returns full string definition for message of type '<Constants>"
  (cl:format cl:nil "# Rapp manager is not getting controlled, and is thus, available.~%string NO_REMOTE_CONNECTION=none~%# An alias for the above~%string NO_REMOTE_CONTROLLER=none~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Constants)))
  "Returns full string definition for message of type 'Constants"
  (cl:format cl:nil "# Rapp manager is not getting controlled, and is thus, available.~%string NO_REMOTE_CONNECTION=none~%# An alias for the above~%string NO_REMOTE_CONTROLLER=none~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Constants>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Constants>))
  "Converts a ROS message object to a list"
  (cl:list 'Constants
))
