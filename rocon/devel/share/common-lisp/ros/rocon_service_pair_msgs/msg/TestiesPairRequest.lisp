; Auto-generated. Do not edit!


(cl:in-package rocon_service_pair_msgs-msg)


;//! \htmlinclude TestiesPairRequest.msg.html

(cl:defclass <TestiesPairRequest> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (request
    :reader request
    :initarg :request
    :type rocon_service_pair_msgs-msg:TestiesRequest
    :initform (cl:make-instance 'rocon_service_pair_msgs-msg:TestiesRequest)))
)

(cl:defclass TestiesPairRequest (<TestiesPairRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestiesPairRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestiesPairRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_service_pair_msgs-msg:<TestiesPairRequest> is deprecated: use rocon_service_pair_msgs-msg:TestiesPairRequest instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TestiesPairRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_service_pair_msgs-msg:id-val is deprecated.  Use rocon_service_pair_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <TestiesPairRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_service_pair_msgs-msg:request-val is deprecated.  Use rocon_service_pair_msgs-msg:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestiesPairRequest>) ostream)
  "Serializes a message object of type '<TestiesPairRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestiesPairRequest>) istream)
  "Deserializes a message object of type '<TestiesPairRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestiesPairRequest>)))
  "Returns string type for a message object of type '<TestiesPairRequest>"
  "rocon_service_pair_msgs/TestiesPairRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestiesPairRequest)))
  "Returns string type for a message object of type 'TestiesPairRequest"
  "rocon_service_pair_msgs/TestiesPairRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestiesPairRequest>)))
  "Returns md5sum for a message object of type '<TestiesPairRequest>"
  "71ec95e384ce52aa32491f3b69a62027")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestiesPairRequest)))
  "Returns md5sum for a message object of type 'TestiesPairRequest"
  "71ec95e384ce52aa32491f3b69a62027")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestiesPairRequest>)))
  "Returns full string definition for message of type '<TestiesPairRequest>"
  (cl:format cl:nil "uuid_msgs/UniqueID id~%TestiesRequest request~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_service_pair_msgs/TestiesRequest~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestiesPairRequest)))
  "Returns full string definition for message of type 'TestiesPairRequest"
  (cl:format cl:nil "uuid_msgs/UniqueID id~%TestiesRequest request~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_service_pair_msgs/TestiesRequest~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestiesPairRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestiesPairRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'TestiesPairRequest
    (cl:cons ':id (id msg))
    (cl:cons ':request (request msg))
))
