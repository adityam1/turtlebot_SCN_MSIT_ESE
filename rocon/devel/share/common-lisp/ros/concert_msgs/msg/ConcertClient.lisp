; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude ConcertClient.msg.html

(cl:defclass <ConcertClient> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (gateway_name
    :reader gateway_name
    :initarg :gateway_name
    :type cl:string
    :initform "")
   (platform_info
    :reader platform_info
    :initarg :platform_info
    :type rocon_std_msgs-msg:PlatformInfo
    :initform (cl:make-instance 'rocon_std_msgs-msg:PlatformInfo))
   (is_local_client
    :reader is_local_client
    :initarg :is_local_client
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (conn_stats
    :reader conn_stats
    :initarg :conn_stats
    :type gateway_msgs-msg:ConnectionStatistics
    :initform (cl:make-instance 'gateway_msgs-msg:ConnectionStatistics))
   (rapps
    :reader rapps
    :initarg :rapps
    :type (cl:vector rocon_app_manager_msgs-msg:Rapp)
   :initform (cl:make-array 0 :element-type 'rocon_app_manager_msgs-msg:Rapp :initial-element (cl:make-instance 'rocon_app_manager_msgs-msg:Rapp))))
)

(cl:defclass ConcertClient (<ConcertClient>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConcertClient>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConcertClient)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<ConcertClient> is deprecated: use concert_msgs-msg:ConcertClient instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:name-val is deprecated.  Use concert_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'gateway_name-val :lambda-list '(m))
(cl:defmethod gateway_name-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:gateway_name-val is deprecated.  Use concert_msgs-msg:gateway_name instead.")
  (gateway_name m))

(cl:ensure-generic-function 'platform_info-val :lambda-list '(m))
(cl:defmethod platform_info-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:platform_info-val is deprecated.  Use concert_msgs-msg:platform_info instead.")
  (platform_info m))

(cl:ensure-generic-function 'is_local_client-val :lambda-list '(m))
(cl:defmethod is_local_client-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:is_local_client-val is deprecated.  Use concert_msgs-msg:is_local_client instead.")
  (is_local_client m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:state-val is deprecated.  Use concert_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:ip-val is deprecated.  Use concert_msgs-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'conn_stats-val :lambda-list '(m))
(cl:defmethod conn_stats-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:conn_stats-val is deprecated.  Use concert_msgs-msg:conn_stats instead.")
  (conn_stats m))

(cl:ensure-generic-function 'rapps-val :lambda-list '(m))
(cl:defmethod rapps-val ((m <ConcertClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:rapps-val is deprecated.  Use concert_msgs-msg:rapps instead.")
  (rapps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConcertClient>) ostream)
  "Serializes a message object of type '<ConcertClient>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gateway_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gateway_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'platform_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_local_client) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'conn_stats) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rapps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rapps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConcertClient>) istream)
  "Deserializes a message object of type '<ConcertClient>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gateway_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gateway_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'platform_info) istream)
    (cl:setf (cl:slot-value msg 'is_local_client) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'conn_stats) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rapps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rapps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_app_manager_msgs-msg:Rapp))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConcertClient>)))
  "Returns string type for a message object of type '<ConcertClient>"
  "concert_msgs/ConcertClient")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConcertClient)))
  "Returns string type for a message object of type 'ConcertClient"
  "concert_msgs/ConcertClient")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConcertClient>)))
  "Returns md5sum for a message object of type '<ConcertClient>"
  "7b021e6713839995a4c68ebde750ba79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConcertClient)))
  "Returns md5sum for a message object of type 'ConcertClient"
  "7b021e6713839995a4c68ebde750ba79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConcertClient>)))
  "Returns full string definition for message of type '<ConcertClient>"
  (cl:format cl:nil "~%# The concert alias~%string name~%~%# The unfriendly gateway name with the uuid suffix.~%string gateway_name~%~%# Platform information about the concert client.~%rocon_std_msgs/PlatformInfo platform_info~%~%# Is on the same machine ip as the conductor~%bool is_local_client~%~%# State of the concert client, see ConcertClientState.msg for string constants~%# PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE ~%string state~%~%# Statistics~%string ip~%gateway_msgs/ConnectionStatistics conn_stats~%# time last_connection_timestamp~%~%rocon_app_manager_msgs/Rapp[] rapps~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConcertClient)))
  "Returns full string definition for message of type 'ConcertClient"
  (cl:format cl:nil "~%# The concert alias~%string name~%~%# The unfriendly gateway name with the uuid suffix.~%string gateway_name~%~%# Platform information about the concert client.~%rocon_std_msgs/PlatformInfo platform_info~%~%# Is on the same machine ip as the conductor~%bool is_local_client~%~%# State of the concert client, see ConcertClientState.msg for string constants~%# PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE ~%string state~%~%# Statistics~%string ip~%gateway_msgs/ConnectionStatistics conn_stats~%# time last_connection_timestamp~%~%rocon_app_manager_msgs/Rapp[] rapps~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConcertClient>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'gateway_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'platform_info))
     1
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'ip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'conn_stats))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rapps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConcertClient>))
  "Converts a ROS message object to a list"
  (cl:list 'ConcertClient
    (cl:cons ':name (name msg))
    (cl:cons ':gateway_name (gateway_name msg))
    (cl:cons ':platform_info (platform_info msg))
    (cl:cons ':is_local_client (is_local_client msg))
    (cl:cons ':state (state msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':conn_stats (conn_stats msg))
    (cl:cons ':rapps (rapps msg))
))
