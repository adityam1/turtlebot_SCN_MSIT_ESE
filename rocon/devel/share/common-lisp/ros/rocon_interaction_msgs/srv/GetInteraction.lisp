; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-srv)


;//! \htmlinclude GetInteraction-request.msg.html

(cl:defclass <GetInteraction-request> (roslisp-msg-protocol:ros-message)
  ((hash
    :reader hash
    :initarg :hash
    :type cl:integer
    :initform 0))
)

(cl:defclass GetInteraction-request (<GetInteraction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInteraction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInteraction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<GetInteraction-request> is deprecated: use rocon_interaction_msgs-srv:GetInteraction-request instead.")))

(cl:ensure-generic-function 'hash-val :lambda-list '(m))
(cl:defmethod hash-val ((m <GetInteraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:hash-val is deprecated.  Use rocon_interaction_msgs-srv:hash instead.")
  (hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInteraction-request>) ostream)
  "Serializes a message object of type '<GetInteraction-request>"
  (cl:let* ((signed (cl:slot-value msg 'hash)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInteraction-request>) istream)
  "Deserializes a message object of type '<GetInteraction-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hash) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInteraction-request>)))
  "Returns string type for a service object of type '<GetInteraction-request>"
  "rocon_interaction_msgs/GetInteractionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInteraction-request)))
  "Returns string type for a service object of type 'GetInteraction-request"
  "rocon_interaction_msgs/GetInteractionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInteraction-request>)))
  "Returns md5sum for a message object of type '<GetInteraction-request>"
  "30e8310e8aa2396e785d9cc40638555f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInteraction-request)))
  "Returns md5sum for a message object of type 'GetInteraction-request"
  "30e8310e8aa2396e785d9cc40638555f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInteraction-request>)))
  "Returns full string definition for message of type '<GetInteraction-request>"
  (cl:format cl:nil "~%~%~%~%~%int32 hash~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInteraction-request)))
  "Returns full string definition for message of type 'GetInteraction-request"
  (cl:format cl:nil "~%~%~%~%~%int32 hash~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInteraction-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInteraction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInteraction-request
    (cl:cons ':hash (hash msg))
))
;//! \htmlinclude GetInteraction-response.msg.html

(cl:defclass <GetInteraction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (interaction
    :reader interaction
    :initarg :interaction
    :type rocon_interaction_msgs-msg:Interaction
    :initform (cl:make-instance 'rocon_interaction_msgs-msg:Interaction)))
)

(cl:defclass GetInteraction-response (<GetInteraction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInteraction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInteraction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<GetInteraction-response> is deprecated: use rocon_interaction_msgs-srv:GetInteraction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetInteraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:result-val is deprecated.  Use rocon_interaction_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'interaction-val :lambda-list '(m))
(cl:defmethod interaction-val ((m <GetInteraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:interaction-val is deprecated.  Use rocon_interaction_msgs-srv:interaction instead.")
  (interaction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInteraction-response>) ostream)
  "Serializes a message object of type '<GetInteraction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interaction) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInteraction-response>) istream)
  "Deserializes a message object of type '<GetInteraction-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interaction) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInteraction-response>)))
  "Returns string type for a service object of type '<GetInteraction-response>"
  "rocon_interaction_msgs/GetInteractionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInteraction-response)))
  "Returns string type for a service object of type 'GetInteraction-response"
  "rocon_interaction_msgs/GetInteractionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInteraction-response>)))
  "Returns md5sum for a message object of type '<GetInteraction-response>"
  "30e8310e8aa2396e785d9cc40638555f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInteraction-response)))
  "Returns md5sum for a message object of type 'GetInteraction-response"
  "30e8310e8aa2396e785d9cc40638555f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInteraction-response>)))
  "Returns full string definition for message of type '<GetInteraction-response>"
  (cl:format cl:nil "~%bool result~%Interaction interaction~%~%~%================================================================================~%MSG: rocon_interaction_msgs/Interaction~%###############################################################~%# Non-modifiable Specifications~%###############################################################~%# These should be stored in a meta-repository somewhere.~%#~%# Name of the interaction. This should be the string~%# required to install and execute the application on the remocon's~%# end. e.g. for android app this will be an intent action name such as~%# com.github.rosjava.android_apps.listener.Listener, while for~%# a web app it will be its URL.~%string name~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Variable Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string display_name~% ~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# The configuration for a pairing if this interaction is to be paired~%# with a rapp. If not, it should be left unfilled.~%Pairing pairing~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the service-role-name~%# unique string that identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%# The role this solution has configured the interaction for. This is in~%# some use cases redundant, and in other use cases essential (e.g.~%# headless launcher)~%string role~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInteraction-response)))
  "Returns full string definition for message of type 'GetInteraction-response"
  (cl:format cl:nil "~%bool result~%Interaction interaction~%~%~%================================================================================~%MSG: rocon_interaction_msgs/Interaction~%###############################################################~%# Non-modifiable Specifications~%###############################################################~%# These should be stored in a meta-repository somewhere.~%#~%# Name of the interaction. This should be the string~%# required to install and execute the application on the remocon's~%# end. e.g. for android app this will be an intent action name such as~%# com.github.rosjava.android_apps.listener.Listener, while for~%# a web app it will be its URL.~%string name~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Variable Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string display_name~% ~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# The configuration for a pairing if this interaction is to be paired~%# with a rapp. If not, it should be left unfilled.~%Pairing pairing~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the service-role-name~%# unique string that identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%# The role this solution has configured the interaction for. This is in~%# some use cases redundant, and in other use cases essential (e.g.~%# headless launcher)~%string role~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInteraction-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interaction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInteraction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInteraction-response
    (cl:cons ':result (result msg))
    (cl:cons ':interaction (interaction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInteraction)))
  'GetInteraction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInteraction)))
  'GetInteraction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInteraction)))
  "Returns string type for a service object of type '<GetInteraction>"
  "rocon_interaction_msgs/GetInteraction")