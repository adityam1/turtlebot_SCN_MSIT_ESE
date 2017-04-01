; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude Interaction.msg.html

(cl:defclass <Interaction> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (compatibility
    :reader compatibility
    :initarg :compatibility
    :type cl:string
    :initform "")
   (display_name
    :reader display_name
    :initarg :display_name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (namespace
    :reader namespace
    :initarg :namespace
    :type cl:string
    :initform "")
   (icon
    :reader icon
    :initarg :icon
    :type rocon_std_msgs-msg:Icon
    :initform (cl:make-instance 'rocon_std_msgs-msg:Icon))
   (remappings
    :reader remappings
    :initarg :remappings
    :type (cl:vector rocon_std_msgs-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Remapping :initial-element (cl:make-instance 'rocon_std_msgs-msg:Remapping)))
   (parameters
    :reader parameters
    :initarg :parameters
    :type cl:string
    :initform "")
   (max
    :reader max
    :initarg :max
    :type cl:integer
    :initform 0)
   (pairing
    :reader pairing
    :initarg :pairing
    :type rocon_interaction_msgs-msg:Pairing
    :initform (cl:make-instance 'rocon_interaction_msgs-msg:Pairing))
   (hash
    :reader hash
    :initarg :hash
    :type cl:integer
    :initform 0)
   (role
    :reader role
    :initarg :role
    :type cl:string
    :initform ""))
)

(cl:defclass Interaction (<Interaction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interaction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interaction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<Interaction> is deprecated: use rocon_interaction_msgs-msg:Interaction instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:name-val is deprecated.  Use rocon_interaction_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'compatibility-val :lambda-list '(m))
(cl:defmethod compatibility-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:compatibility-val is deprecated.  Use rocon_interaction_msgs-msg:compatibility instead.")
  (compatibility m))

(cl:ensure-generic-function 'display_name-val :lambda-list '(m))
(cl:defmethod display_name-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:display_name-val is deprecated.  Use rocon_interaction_msgs-msg:display_name instead.")
  (display_name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:description-val is deprecated.  Use rocon_interaction_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'namespace-val :lambda-list '(m))
(cl:defmethod namespace-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:namespace-val is deprecated.  Use rocon_interaction_msgs-msg:namespace instead.")
  (namespace m))

(cl:ensure-generic-function 'icon-val :lambda-list '(m))
(cl:defmethod icon-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:icon-val is deprecated.  Use rocon_interaction_msgs-msg:icon instead.")
  (icon m))

(cl:ensure-generic-function 'remappings-val :lambda-list '(m))
(cl:defmethod remappings-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:remappings-val is deprecated.  Use rocon_interaction_msgs-msg:remappings instead.")
  (remappings m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:parameters-val is deprecated.  Use rocon_interaction_msgs-msg:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:max-val is deprecated.  Use rocon_interaction_msgs-msg:max instead.")
  (max m))

(cl:ensure-generic-function 'pairing-val :lambda-list '(m))
(cl:defmethod pairing-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:pairing-val is deprecated.  Use rocon_interaction_msgs-msg:pairing instead.")
  (pairing m))

(cl:ensure-generic-function 'hash-val :lambda-list '(m))
(cl:defmethod hash-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:hash-val is deprecated.  Use rocon_interaction_msgs-msg:hash instead.")
  (hash m))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:role-val is deprecated.  Use rocon_interaction_msgs-msg:role instead.")
  (role m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Interaction>)))
    "Constants for message type '<Interaction>"
  '((:UNLIMITED_INTERACTIONS . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Interaction)))
    "Constants for message type 'Interaction"
  '((:UNLIMITED_INTERACTIONS . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interaction>) ostream)
  "Serializes a message object of type '<Interaction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'compatibility))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'compatibility))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'display_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'display_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'namespace))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'icon) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remappings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remappings))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameters))
  (cl:let* ((signed (cl:slot-value msg 'max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pairing) ostream)
  (cl:let* ((signed (cl:slot-value msg 'hash)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'role))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'role))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interaction>) istream)
  "Deserializes a message object of type '<Interaction>"
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
      (cl:setf (cl:slot-value msg 'compatibility) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'compatibility) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'display_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'icon) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remappings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remappings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pairing) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hash) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'role) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'role) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interaction>)))
  "Returns string type for a message object of type '<Interaction>"
  "rocon_interaction_msgs/Interaction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interaction)))
  "Returns string type for a message object of type 'Interaction"
  "rocon_interaction_msgs/Interaction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interaction>)))
  "Returns md5sum for a message object of type '<Interaction>"
  "a0eeafaab98f6fb56bd4aa7196744ab3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interaction)))
  "Returns md5sum for a message object of type 'Interaction"
  "a0eeafaab98f6fb56bd4aa7196744ab3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interaction>)))
  "Returns full string definition for message of type '<Interaction>"
  (cl:format cl:nil "###############################################################~%# Non-modifiable Specifications~%###############################################################~%# These should be stored in a meta-repository somewhere.~%#~%# Name of the interaction. This should be the string~%# required to install and execute the application on the remocon's~%# end. e.g. for android app this will be an intent action name such as~%# com.github.rosjava.android_apps.listener.Listener, while for~%# a web app it will be its URL.~%string name~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Variable Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string display_name~% ~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# The configuration for a pairing if this interaction is to be paired~%# with a rapp. If not, it should be left unfilled.~%Pairing pairing~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the service-role-name~%# unique string that identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%# The role this solution has configured the interaction for. This is in~%# some use cases redundant, and in other use cases essential (e.g.~%# headless launcher)~%string role~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interaction)))
  "Returns full string definition for message of type 'Interaction"
  (cl:format cl:nil "###############################################################~%# Non-modifiable Specifications~%###############################################################~%# These should be stored in a meta-repository somewhere.~%#~%# Name of the interaction. This should be the string~%# required to install and execute the application on the remocon's~%# end. e.g. for android app this will be an intent action name such as~%# com.github.rosjava.android_apps.listener.Listener, while for~%# a web app it will be its URL.~%string name~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Variable Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string display_name~% ~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# The configuration for a pairing if this interaction is to be paired~%# with a rapp. If not, it should be left unfilled.~%Pairing pairing~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the service-role-name~%# unique string that identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%# The role this solution has configured the interaction for. This is in~%# some use cases redundant, and in other use cases essential (e.g.~%# headless launcher)~%string role~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interaction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'compatibility))
     4 (cl:length (cl:slot-value msg 'display_name))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'namespace))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'icon))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remappings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'parameters))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pairing))
     4
     4 (cl:length (cl:slot-value msg 'role))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interaction>))
  "Converts a ROS message object to a list"
  (cl:list 'Interaction
    (cl:cons ':name (name msg))
    (cl:cons ':compatibility (compatibility msg))
    (cl:cons ':display_name (display_name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':namespace (namespace msg))
    (cl:cons ':icon (icon msg))
    (cl:cons ':remappings (remappings msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':max (max msg))
    (cl:cons ':pairing (pairing msg))
    (cl:cons ':hash (hash msg))
    (cl:cons ':role (role msg))
))
