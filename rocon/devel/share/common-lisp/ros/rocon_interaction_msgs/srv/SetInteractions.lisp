; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-srv)


;//! \htmlinclude SetInteractions-request.msg.html

(cl:defclass <SetInteractions-request> (roslisp-msg-protocol:ros-message)
  ((interactions
    :reader interactions
    :initarg :interactions
    :type (cl:vector rocon_interaction_msgs-msg:Interaction)
   :initform (cl:make-array 0 :element-type 'rocon_interaction_msgs-msg:Interaction :initial-element (cl:make-instance 'rocon_interaction_msgs-msg:Interaction)))
   (load
    :reader load
    :initarg :load
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetInteractions-request (<SetInteractions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInteractions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInteractions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<SetInteractions-request> is deprecated: use rocon_interaction_msgs-srv:SetInteractions-request instead.")))

(cl:ensure-generic-function 'interactions-val :lambda-list '(m))
(cl:defmethod interactions-val ((m <SetInteractions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:interactions-val is deprecated.  Use rocon_interaction_msgs-srv:interactions instead.")
  (interactions m))

(cl:ensure-generic-function 'load-val :lambda-list '(m))
(cl:defmethod load-val ((m <SetInteractions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:load-val is deprecated.  Use rocon_interaction_msgs-srv:load instead.")
  (load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInteractions-request>) ostream)
  "Serializes a message object of type '<SetInteractions-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'interactions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'interactions))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInteractions-request>) istream)
  "Deserializes a message object of type '<SetInteractions-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'interactions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'interactions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_interaction_msgs-msg:Interaction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'load) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInteractions-request>)))
  "Returns string type for a service object of type '<SetInteractions-request>"
  "rocon_interaction_msgs/SetInteractionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInteractions-request)))
  "Returns string type for a service object of type 'SetInteractions-request"
  "rocon_interaction_msgs/SetInteractionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInteractions-request>)))
  "Returns md5sum for a message object of type '<SetInteractions-request>"
  "caa1e6b6a9707f4e18786c6cfde77aca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInteractions-request)))
  "Returns md5sum for a message object of type 'SetInteractions-request"
  "caa1e6b6a9707f4e18786c6cfde77aca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInteractions-request>)))
  "Returns full string definition for message of type '<SetInteractions-request>"
  (cl:format cl:nil "~%~%Interaction[] interactions~%~%~%bool load~%~%~%================================================================================~%MSG: rocon_interaction_msgs/Interaction~%###############################################################~%# Non-modifiable Specifications~%###############################################################~%# These should be stored in a meta-repository somewhere.~%#~%# Name of the interaction. This should be the string~%# required to install and execute the application on the remocon's~%# end. e.g. for android app this will be an intent action name such as~%# com.github.rosjava.android_apps.listener.Listener, while for~%# a web app it will be its URL.~%string name~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Variable Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string display_name~% ~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# The configuration for a pairing if this interaction is to be paired~%# with a rapp. If not, it should be left unfilled.~%Pairing pairing~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the service-role-name~%# unique string that identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%# The role this solution has configured the interaction for. This is in~%# some use cases redundant, and in other use cases essential (e.g.~%# headless launcher)~%string role~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInteractions-request)))
  "Returns full string definition for message of type 'SetInteractions-request"
  (cl:format cl:nil "~%~%Interaction[] interactions~%~%~%bool load~%~%~%================================================================================~%MSG: rocon_interaction_msgs/Interaction~%###############################################################~%# Non-modifiable Specifications~%###############################################################~%# These should be stored in a meta-repository somewhere.~%#~%# Name of the interaction. This should be the string~%# required to install and execute the application on the remocon's~%# end. e.g. for android app this will be an intent action name such as~%# com.github.rosjava.android_apps.listener.Listener, while for~%# a web app it will be its URL.~%string name~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Variable Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string display_name~% ~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# The configuration for a pairing if this interaction is to be paired~%# with a rapp. If not, it should be left unfilled.~%Pairing pairing~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the service-role-name~%# unique string that identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%# The role this solution has configured the interaction for. This is in~%# some use cases redundant, and in other use cases essential (e.g.~%# headless launcher)~%string role~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInteractions-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'interactions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInteractions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInteractions-request
    (cl:cons ':interactions (interactions msg))
    (cl:cons ':load (load msg))
))
;//! \htmlinclude SetInteractions-response.msg.html

(cl:defclass <SetInteractions-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetInteractions-response (<SetInteractions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInteractions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInteractions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<SetInteractions-response> is deprecated: use rocon_interaction_msgs-srv:SetInteractions-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetInteractions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:result-val is deprecated.  Use rocon_interaction_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInteractions-response>) ostream)
  "Serializes a message object of type '<SetInteractions-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInteractions-response>) istream)
  "Deserializes a message object of type '<SetInteractions-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInteractions-response>)))
  "Returns string type for a service object of type '<SetInteractions-response>"
  "rocon_interaction_msgs/SetInteractionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInteractions-response)))
  "Returns string type for a service object of type 'SetInteractions-response"
  "rocon_interaction_msgs/SetInteractionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInteractions-response>)))
  "Returns md5sum for a message object of type '<SetInteractions-response>"
  "caa1e6b6a9707f4e18786c6cfde77aca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInteractions-response)))
  "Returns md5sum for a message object of type 'SetInteractions-response"
  "caa1e6b6a9707f4e18786c6cfde77aca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInteractions-response>)))
  "Returns full string definition for message of type '<SetInteractions-response>"
  (cl:format cl:nil "~%bool result~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInteractions-response)))
  "Returns full string definition for message of type 'SetInteractions-response"
  (cl:format cl:nil "~%bool result~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInteractions-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInteractions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInteractions-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInteractions)))
  'SetInteractions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInteractions)))
  'SetInteractions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInteractions)))
  "Returns string type for a service object of type '<SetInteractions>"
  "rocon_interaction_msgs/SetInteractions")