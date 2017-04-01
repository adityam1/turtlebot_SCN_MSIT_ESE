; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude Strings.msg.html

(cl:defclass <Strings> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Strings (<Strings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Strings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Strings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<Strings> is deprecated: use concert_msgs-msg:Strings instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Strings>)))
    "Constants for message type '<Strings>"
  '((:PARAM_ROCON_SCREEN . /rocon/screen)
    (:SCHEDULER_UNALLOCATED_RESOURCE . unallocated)
    (:CONCERT_CLIENTS . /concert/conductor/concert_clients)
    (:SERVICE_NAMESPACE . /services)
    (:SOFTWARE_NAMESPACE . /software))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Strings)))
    "Constants for message type 'Strings"
  '((:PARAM_ROCON_SCREEN . /rocon/screen)
    (:SCHEDULER_UNALLOCATED_RESOURCE . unallocated)
    (:CONCERT_CLIENTS . /concert/conductor/concert_clients)
    (:SERVICE_NAMESPACE . /services)
    (:SOFTWARE_NAMESPACE . /software))
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
  "concert_msgs/Strings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Strings)))
  "Returns string type for a message object of type 'Strings"
  "concert_msgs/Strings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Strings>)))
  "Returns md5sum for a message object of type '<Strings>"
  "38136d22fdc4ea7e6dd26ec382e266c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Strings)))
  "Returns md5sum for a message object of type 'Strings"
  "38136d22fdc4ea7e6dd26ec382e266c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Strings>)))
  "Returns full string definition for message of type '<Strings>"
  (cl:format cl:nil "# Some commonly used constant strings in the concert.~%#~%# Note: avoid using hardcoded topic_name strings here. Prefer rostopic.find_by_type~%# and rosservice.rosservice_find for getting services that should be unique~%# (e.g. gateway/interactions). Refer to rocon_python_comms for some wrappers around these.~%~%# Parameters~%string PARAM_ROCON_SCREEN = /rocon/screen~%~%# Scheduler~%string SCHEDULER_UNALLOCATED_RESOURCE = unallocated~%~%# Conductor~%string CONCERT_CLIENTS = /concert/conductor/concert_clients~%~%# Namespaces~%string SERVICE_NAMESPACE = /services~%string SOFTWARE_NAMESPACE = /software~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Strings)))
  "Returns full string definition for message of type 'Strings"
  (cl:format cl:nil "# Some commonly used constant strings in the concert.~%#~%# Note: avoid using hardcoded topic_name strings here. Prefer rostopic.find_by_type~%# and rosservice.rosservice_find for getting services that should be unique~%# (e.g. gateway/interactions). Refer to rocon_python_comms for some wrappers around these.~%~%# Parameters~%string PARAM_ROCON_SCREEN = /rocon/screen~%~%# Scheduler~%string SCHEDULER_UNALLOCATED_RESOURCE = unallocated~%~%# Conductor~%string CONCERT_CLIENTS = /concert/conductor/concert_clients~%~%# Namespaces~%string SERVICE_NAMESPACE = /services~%string SOFTWARE_NAMESPACE = /software~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Strings>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Strings>))
  "Converts a ROS message object to a list"
  (cl:list 'Strings
))
