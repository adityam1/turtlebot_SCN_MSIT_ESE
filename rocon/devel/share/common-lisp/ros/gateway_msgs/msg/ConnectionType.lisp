; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-msg)


;//! \htmlinclude ConnectionType.msg.html

(cl:defclass <ConnectionType> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ConnectionType (<ConnectionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-msg:<ConnectionType> is deprecated: use gateway_msgs-msg:ConnectionType instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConnectionType>)))
    "Constants for message type '<ConnectionType>"
  '((:PUBLISHER . publisher)
    (:SUBSCRIBER . subscriber)
    (:SERVICE . service)
    (:ACTION_CLIENT . action_client)
    (:ACTION_SERVER . action_server)
    (:INVALID . invalid))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConnectionType)))
    "Constants for message type 'ConnectionType"
  '((:PUBLISHER . publisher)
    (:SUBSCRIBER . subscriber)
    (:SERVICE . service)
    (:ACTION_CLIENT . action_client)
    (:ACTION_SERVER . action_server)
    (:INVALID . invalid))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionType>) ostream)
  "Serializes a message object of type '<ConnectionType>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionType>) istream)
  "Deserializes a message object of type '<ConnectionType>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionType>)))
  "Returns string type for a message object of type '<ConnectionType>"
  "gateway_msgs/ConnectionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionType)))
  "Returns string type for a message object of type 'ConnectionType"
  "gateway_msgs/ConnectionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionType>)))
  "Returns md5sum for a message object of type '<ConnectionType>"
  "65d75f1bb32566bfec48966db2073c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionType)))
  "Returns md5sum for a message object of type 'ConnectionType"
  "65d75f1bb32566bfec48966db2073c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionType>)))
  "Returns full string definition for message of type '<ConnectionType>"
  (cl:format cl:nil "# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionType)))
  "Returns full string definition for message of type 'ConnectionType"
  (cl:format cl:nil "# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionType>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionType>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionType
))
