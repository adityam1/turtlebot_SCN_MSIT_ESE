; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude InteractiveClient.msg.html

(cl:defclass <InteractiveClient> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (platform_info
    :reader platform_info
    :initarg :platform_info
    :type rocon_std_msgs-msg:PlatformInfo
    :initform (cl:make-instance 'rocon_std_msgs-msg:PlatformInfo))
   (running_interactions
    :reader running_interactions
    :initarg :running_interactions
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass InteractiveClient (<InteractiveClient>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InteractiveClient>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InteractiveClient)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<InteractiveClient> is deprecated: use rocon_interaction_msgs-msg:InteractiveClient instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <InteractiveClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:name-val is deprecated.  Use rocon_interaction_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <InteractiveClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:id-val is deprecated.  Use rocon_interaction_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'platform_info-val :lambda-list '(m))
(cl:defmethod platform_info-val ((m <InteractiveClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:platform_info-val is deprecated.  Use rocon_interaction_msgs-msg:platform_info instead.")
  (platform_info m))

(cl:ensure-generic-function 'running_interactions-val :lambda-list '(m))
(cl:defmethod running_interactions-val ((m <InteractiveClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:running_interactions-val is deprecated.  Use rocon_interaction_msgs-msg:running_interactions instead.")
  (running_interactions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InteractiveClient>) ostream)
  "Serializes a message object of type '<InteractiveClient>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'platform_info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'running_interactions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'running_interactions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InteractiveClient>) istream)
  "Deserializes a message object of type '<InteractiveClient>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'platform_info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'running_interactions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'running_interactions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InteractiveClient>)))
  "Returns string type for a message object of type '<InteractiveClient>"
  "rocon_interaction_msgs/InteractiveClient")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InteractiveClient)))
  "Returns string type for a message object of type 'InteractiveClient"
  "rocon_interaction_msgs/InteractiveClient")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InteractiveClient>)))
  "Returns md5sum for a message object of type '<InteractiveClient>"
  "d8f65f317e0815a1ab6774b422c35d05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InteractiveClient)))
  "Returns md5sum for a message object of type 'InteractiveClient"
  "d8f65f317e0815a1ab6774b422c35d05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InteractiveClient>)))
  "Returns full string definition for message of type '<InteractiveClient>"
  (cl:format cl:nil "# ~%# Describes an interactive concert client.~%#~%# Unique names - human consumable rocon name as well as globally unique name~%# provided by the remocon client.~%~%string name~%uuid_msgs/UniqueID id~%~%rocon_std_msgs/PlatformInfo platform_info~%~%# easy to read display names of interactions running on this remocon~%string[] running_interactions~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InteractiveClient)))
  "Returns full string definition for message of type 'InteractiveClient"
  (cl:format cl:nil "# ~%# Describes an interactive concert client.~%#~%# Unique names - human consumable rocon name as well as globally unique name~%# provided by the remocon client.~%~%string name~%uuid_msgs/UniqueID id~%~%rocon_std_msgs/PlatformInfo platform_info~%~%# easy to read display names of interactions running on this remocon~%string[] running_interactions~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InteractiveClient>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'platform_info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'running_interactions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InteractiveClient>))
  "Converts a ROS message object to a list"
  (cl:list 'InteractiveClient
    (cl:cons ':name (name msg))
    (cl:cons ':id (id msg))
    (cl:cons ':platform_info (platform_info msg))
    (cl:cons ':running_interactions (running_interactions msg))
))
