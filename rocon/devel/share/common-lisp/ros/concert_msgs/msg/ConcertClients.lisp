; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude ConcertClients.msg.html

(cl:defclass <ConcertClients> (roslisp-msg-protocol:ros-message)
  ((clients
    :reader clients
    :initarg :clients
    :type (cl:vector concert_msgs-msg:ConcertClient)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ConcertClient :initial-element (cl:make-instance 'concert_msgs-msg:ConcertClient)))
   (missing_clients
    :reader missing_clients
    :initarg :missing_clients
    :type (cl:vector concert_msgs-msg:ConcertClient)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ConcertClient :initial-element (cl:make-instance 'concert_msgs-msg:ConcertClient)))
   (uninvited_clients
    :reader uninvited_clients
    :initarg :uninvited_clients
    :type (cl:vector concert_msgs-msg:ConcertClient)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ConcertClient :initial-element (cl:make-instance 'concert_msgs-msg:ConcertClient))))
)

(cl:defclass ConcertClients (<ConcertClients>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConcertClients>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConcertClients)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<ConcertClients> is deprecated: use concert_msgs-msg:ConcertClients instead.")))

(cl:ensure-generic-function 'clients-val :lambda-list '(m))
(cl:defmethod clients-val ((m <ConcertClients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:clients-val is deprecated.  Use concert_msgs-msg:clients instead.")
  (clients m))

(cl:ensure-generic-function 'missing_clients-val :lambda-list '(m))
(cl:defmethod missing_clients-val ((m <ConcertClients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:missing_clients-val is deprecated.  Use concert_msgs-msg:missing_clients instead.")
  (missing_clients m))

(cl:ensure-generic-function 'uninvited_clients-val :lambda-list '(m))
(cl:defmethod uninvited_clients-val ((m <ConcertClients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:uninvited_clients-val is deprecated.  Use concert_msgs-msg:uninvited_clients instead.")
  (uninvited_clients m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConcertClients>) ostream)
  "Serializes a message object of type '<ConcertClients>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clients))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'missing_clients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'missing_clients))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uninvited_clients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uninvited_clients))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConcertClients>) istream)
  "Deserializes a message object of type '<ConcertClients>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ConcertClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'missing_clients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'missing_clients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ConcertClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uninvited_clients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uninvited_clients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ConcertClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConcertClients>)))
  "Returns string type for a message object of type '<ConcertClients>"
  "concert_msgs/ConcertClients")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConcertClients)))
  "Returns string type for a message object of type 'ConcertClients"
  "concert_msgs/ConcertClients")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConcertClients>)))
  "Returns md5sum for a message object of type '<ConcertClients>"
  "dc25b17de2f711f3b3dcaacf8d8f58eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConcertClients)))
  "Returns md5sum for a message object of type 'ConcertClients"
  "dc25b17de2f711f3b3dcaacf8d8f58eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConcertClients>)))
  "Returns full string definition for message of type '<ConcertClients>"
  (cl:format cl:nil "~%# Clients that have been invited to this concert and can be used~%concert_msgs/ConcertClient[] clients~%~%# Clients that have disappeared from the gateway network without formally leaving. ~%# Usually this will mean they have dropped off the wireless~%concert_msgs/ConcertClient[] missing_clients~%~%# Clients that are on the gateway network, but haven't been invited by this concert yet~%# We do not have any implementation that can invite except by a conductor's auto_invite yet.~%concert_msgs/ConcertClient[] uninvited_clients~%~%================================================================================~%MSG: concert_msgs/ConcertClient~%~%# The concert alias~%string name~%~%# The unfriendly gateway name with the uuid suffix.~%string gateway_name~%~%# Platform information about the concert client.~%rocon_std_msgs/PlatformInfo platform_info~%~%# Is on the same machine ip as the conductor~%bool is_local_client~%~%# State of the concert client, see ConcertClientState.msg for string constants~%# PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE ~%string state~%~%# Statistics~%string ip~%gateway_msgs/ConnectionStatistics conn_stats~%# time last_connection_timestamp~%~%rocon_app_manager_msgs/Rapp[] rapps~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConcertClients)))
  "Returns full string definition for message of type 'ConcertClients"
  (cl:format cl:nil "~%# Clients that have been invited to this concert and can be used~%concert_msgs/ConcertClient[] clients~%~%# Clients that have disappeared from the gateway network without formally leaving. ~%# Usually this will mean they have dropped off the wireless~%concert_msgs/ConcertClient[] missing_clients~%~%# Clients that are on the gateway network, but haven't been invited by this concert yet~%# We do not have any implementation that can invite except by a conductor's auto_invite yet.~%concert_msgs/ConcertClient[] uninvited_clients~%~%================================================================================~%MSG: concert_msgs/ConcertClient~%~%# The concert alias~%string name~%~%# The unfriendly gateway name with the uuid suffix.~%string gateway_name~%~%# Platform information about the concert client.~%rocon_std_msgs/PlatformInfo platform_info~%~%# Is on the same machine ip as the conductor~%bool is_local_client~%~%# State of the concert client, see ConcertClientState.msg for string constants~%# PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE ~%string state~%~%# Statistics~%string ip~%gateway_msgs/ConnectionStatistics conn_stats~%# time last_connection_timestamp~%~%rocon_app_manager_msgs/Rapp[] rapps~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConcertClients>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'missing_clients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uninvited_clients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConcertClients>))
  "Converts a ROS message object to a list"
  (cl:list 'ConcertClients
    (cl:cons ':clients (clients msg))
    (cl:cons ':missing_clients (missing_clients msg))
    (cl:cons ':uninvited_clients (uninvited_clients msg))
))
