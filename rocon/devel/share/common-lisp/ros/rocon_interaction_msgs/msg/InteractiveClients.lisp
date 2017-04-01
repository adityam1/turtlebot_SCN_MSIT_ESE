; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude InteractiveClients.msg.html

(cl:defclass <InteractiveClients> (roslisp-msg-protocol:ros-message)
  ((idle_clients
    :reader idle_clients
    :initarg :idle_clients
    :type (cl:vector rocon_interaction_msgs-msg:InteractiveClient)
   :initform (cl:make-array 0 :element-type 'rocon_interaction_msgs-msg:InteractiveClient :initial-element (cl:make-instance 'rocon_interaction_msgs-msg:InteractiveClient)))
   (running_clients
    :reader running_clients
    :initarg :running_clients
    :type (cl:vector rocon_interaction_msgs-msg:InteractiveClient)
   :initform (cl:make-array 0 :element-type 'rocon_interaction_msgs-msg:InteractiveClient :initial-element (cl:make-instance 'rocon_interaction_msgs-msg:InteractiveClient))))
)

(cl:defclass InteractiveClients (<InteractiveClients>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractiveClients>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractiveClients)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<InteractiveClients> is deprecated: use rocon_interaction_msgs-msg:InteractiveClients instead.")))

(cl:ensure-generic-function 'idle_clients-val :lambda-list '(m))
(cl:defmethod idle_clients-val ((m <InteractiveClients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:idle_clients-val is deprecated.  Use rocon_interaction_msgs-msg:idle_clients instead.")
  (idle_clients m))

(cl:ensure-generic-function 'running_clients-val :lambda-list '(m))
(cl:defmethod running_clients-val ((m <InteractiveClients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:running_clients-val is deprecated.  Use rocon_interaction_msgs-msg:running_clients instead.")
  (running_clients m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractiveClients>) ostream)
  "Serializes a message object of type '<InteractiveClients>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'idle_clients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'idle_clients))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'running_clients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'running_clients))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractiveClients>) istream)
  "Deserializes a message object of type '<InteractiveClients>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'idle_clients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'idle_clients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_interaction_msgs-msg:InteractiveClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'running_clients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'running_clients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_interaction_msgs-msg:InteractiveClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractiveClients>)))
  "Returns string type for a message object of type '<InteractiveClients>"
  "rocon_interaction_msgs/InteractiveClients")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractiveClients)))
  "Returns string type for a message object of type 'InteractiveClients"
  "rocon_interaction_msgs/InteractiveClients")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractiveClients>)))
  "Returns md5sum for a message object of type '<InteractiveClients>"
  "4c44b146c4dbd365e79e0f9e065f21d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractiveClients)))
  "Returns md5sum for a message object of type 'InteractiveClients"
  "4c44b146c4dbd365e79e0f9e065f21d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractiveClients>)))
  "Returns full string definition for message of type '<InteractiveClients>"
  (cl:format cl:nil "# ~%# Two lists are included here to distinguish between idle clients and those that~%# are currently running an app.~%#~%InteractiveClient[] idle_clients~%InteractiveClient[] running_clients~%~%================================================================================~%MSG: rocon_interaction_msgs/InteractiveClient~%# ~%# Describes an interactive concert client.~%#~%# Unique names - human consumable rocon name as well as globally unique name~%# provided by the remocon client.~%~%string name~%uuid_msgs/UniqueID id~%~%rocon_std_msgs/PlatformInfo platform_info~%~%# easy to read display names of interactions running on this remocon~%string[] running_interactions~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractiveClients)))
  "Returns full string definition for message of type 'InteractiveClients"
  (cl:format cl:nil "# ~%# Two lists are included here to distinguish between idle clients and those that~%# are currently running an app.~%#~%InteractiveClient[] idle_clients~%InteractiveClient[] running_clients~%~%================================================================================~%MSG: rocon_interaction_msgs/InteractiveClient~%# ~%# Describes an interactive concert client.~%#~%# Unique names - human consumable rocon name as well as globally unique name~%# provided by the remocon client.~%~%string name~%uuid_msgs/UniqueID id~%~%rocon_std_msgs/PlatformInfo platform_info~%~%# easy to read display names of interactions running on this remocon~%string[] running_interactions~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractiveClients>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'idle_clients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'running_clients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractiveClients>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractiveClients
    (cl:cons ':idle_clients (idle_clients msg))
    (cl:cons ':running_clients (running_clients msg))
))
