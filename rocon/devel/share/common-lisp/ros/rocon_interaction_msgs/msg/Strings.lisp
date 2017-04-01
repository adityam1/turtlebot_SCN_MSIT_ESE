; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude Strings.msg.html

(cl:defclass <Strings> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Strings (<Strings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Strings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Strings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<Strings> is deprecated: use rocon_interaction_msgs-msg:Strings instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Strings>)))
    "Constants for message type '<Strings>"
  '((:REMOCONS_NAMESPACE . /remocons))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Strings)))
    "Constants for message type 'Strings"
  '((:REMOCONS_NAMESPACE . /remocons))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Strings>) ostream)
  "Serializes a message object of type '<Strings>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Strings>) istream)
  "Deserializes a message object of type '<Strings>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Strings>)))
  "Returns string type for a message object of type '<Strings>"
  "rocon_interaction_msgs/Strings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Strings)))
  "Returns string type for a message object of type 'Strings"
  "rocon_interaction_msgs/Strings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Strings>)))
  "Returns md5sum for a message object of type '<Strings>"
  "7279ef1b62bbde7b3bec17766ef2c127")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Strings)))
  "Returns md5sum for a message object of type 'Strings"
  "7279ef1b62bbde7b3bec17766ef2c127")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Strings>)))
  "Returns full string definition for message of type '<Strings>"
  (cl:format cl:nil "# Strings that are constant with respect to the entire concert. Listing them here~%# allows every user to automatically update if there are any refactorings. Avoid~%# hardcoding these here if possible (see concert_msgs.Strings for a good rant).~%~%# Namespaces~%~%string REMOCONS_NAMESPACE = /remocons~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Strings)))
  "Returns full string definition for message of type 'Strings"
  (cl:format cl:nil "# Strings that are constant with respect to the entire concert. Listing them here~%# allows every user to automatically update if there are any refactorings. Avoid~%# hardcoding these here if possible (see concert_msgs.Strings for a good rant).~%~%# Namespaces~%~%string REMOCONS_NAMESPACE = /remocons~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Strings>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Strings>))
  "Converts a ROS message object to a list"
  (cl:list 'Strings
))
