; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((application_namespace
    :reader application_namespace
    :initarg :application_namespace
    :type cl:string
    :initform "")
   (remote_controller
    :reader remote_controller
    :initarg :remote_controller
    :type cl:string
    :initform "")
   (rapp_status
    :reader rapp_status
    :initarg :rapp_status
    :type cl:string
    :initform "")
   (rapp
    :reader rapp
    :initarg :rapp
    :type rocon_app_manager_msgs-msg:Rapp
    :initform (cl:make-instance 'rocon_app_manager_msgs-msg:Rapp))
   (published_interfaces
    :reader published_interfaces
    :initarg :published_interfaces
    :type (cl:vector rocon_app_manager_msgs-msg:PublishedInterface)
   :initform (cl:make-array 0 :element-type 'rocon_app_manager_msgs-msg:PublishedInterface :initial-element (cl:make-instance 'rocon_app_manager_msgs-msg:PublishedInterface)))
   (published_parameters
    :reader published_parameters
    :initarg :published_parameters
    :type (cl:vector rocon_std_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:KeyValue :initial-element (cl:make-instance 'rocon_std_msgs-msg:KeyValue))))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-msg:<Status> is deprecated: use rocon_app_manager_msgs-msg:Status instead.")))

(cl:ensure-generic-function 'application_namespace-val :lambda-list '(m))
(cl:defmethod application_namespace-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:application_namespace-val is deprecated.  Use rocon_app_manager_msgs-msg:application_namespace instead.")
  (application_namespace m))

(cl:ensure-generic-function 'remote_controller-val :lambda-list '(m))
(cl:defmethod remote_controller-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:remote_controller-val is deprecated.  Use rocon_app_manager_msgs-msg:remote_controller instead.")
  (remote_controller m))

(cl:ensure-generic-function 'rapp_status-val :lambda-list '(m))
(cl:defmethod rapp_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:rapp_status-val is deprecated.  Use rocon_app_manager_msgs-msg:rapp_status instead.")
  (rapp_status m))

(cl:ensure-generic-function 'rapp-val :lambda-list '(m))
(cl:defmethod rapp-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:rapp-val is deprecated.  Use rocon_app_manager_msgs-msg:rapp instead.")
  (rapp m))

(cl:ensure-generic-function 'published_interfaces-val :lambda-list '(m))
(cl:defmethod published_interfaces-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:published_interfaces-val is deprecated.  Use rocon_app_manager_msgs-msg:published_interfaces instead.")
  (published_interfaces m))

(cl:ensure-generic-function 'published_parameters-val :lambda-list '(m))
(cl:defmethod published_parameters-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:published_parameters-val is deprecated.  Use rocon_app_manager_msgs-msg:published_parameters instead.")
  (published_parameters m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Status>)))
    "Constants for message type '<Status>"
  '((:RAPP_STOPPED . stopped)
    (:RAPP_RUNNING . running))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Status)))
    "Constants for message type 'Status"
  '((:RAPP_STOPPED . stopped)
    (:RAPP_RUNNING . running))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'application_namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'application_namespace))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remote_controller))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remote_controller))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rapp_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rapp_status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rapp) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'published_interfaces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'published_interfaces))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'published_parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'published_parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'application_namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'application_namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remote_controller) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remote_controller) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rapp_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rapp_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rapp) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'published_interfaces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'published_interfaces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_app_manager_msgs-msg:PublishedInterface))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'published_parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'published_parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "rocon_app_manager_msgs/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "rocon_app_manager_msgs/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "845a2087bbeabf6770c4fda9fcc80442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "845a2087bbeabf6770c4fda9fcc80442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "# Namespace under which applications will run if connected~%string application_namespace~%~%# Who is controlling the app manager (i.e. who invited it to send it's~%# control handles). If the empty string, it is not being controlled ~%# and subsequently is available~%string remote_controller~%~%# Rapp is running or not~%string RAPP_STOPPED=stopped~%string RAPP_RUNNING=running~%string rapp_status~%~%# Current app details (if running), a default Rapp() (filled with empty strings and lists) otherwise~%Rapp rapp~%~%# The runtime, possibly namespaced and remapped interfaces/parameters~%PublishedInterface[] published_interfaces~%rocon_std_msgs/KeyValue[] published_parameters~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: rocon_app_manager_msgs/PublishedInterface~%# The runtime, possibly namespaced and remapped public interface.~%~%PublicInterface interface~%~%# Final absolute namespaced/remapped name of the topic/service/action xxx~%string name~%================================================================================~%MSG: rocon_app_manager_msgs/PublicInterface~%# Represents a public interface of a rapp~%~%# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)~%string connection_type~%~%# The data type, e.g. std_msgs/Strings~%string data_type~%~%# Name of the topic/service/action xxx.~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "# Namespace under which applications will run if connected~%string application_namespace~%~%# Who is controlling the app manager (i.e. who invited it to send it's~%# control handles). If the empty string, it is not being controlled ~%# and subsequently is available~%string remote_controller~%~%# Rapp is running or not~%string RAPP_STOPPED=stopped~%string RAPP_RUNNING=running~%string rapp_status~%~%# Current app details (if running), a default Rapp() (filled with empty strings and lists) otherwise~%Rapp rapp~%~%# The runtime, possibly namespaced and remapped interfaces/parameters~%PublishedInterface[] published_interfaces~%rocon_std_msgs/KeyValue[] published_parameters~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: rocon_app_manager_msgs/PublishedInterface~%# The runtime, possibly namespaced and remapped public interface.~%~%PublicInterface interface~%~%# Final absolute namespaced/remapped name of the topic/service/action xxx~%string name~%================================================================================~%MSG: rocon_app_manager_msgs/PublicInterface~%# Represents a public interface of a rapp~%~%# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)~%string connection_type~%~%# The data type, e.g. std_msgs/Strings~%string data_type~%~%# Name of the topic/service/action xxx.~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'application_namespace))
     4 (cl:length (cl:slot-value msg 'remote_controller))
     4 (cl:length (cl:slot-value msg 'rapp_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rapp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'published_interfaces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'published_parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':application_namespace (application_namespace msg))
    (cl:cons ':remote_controller (remote_controller msg))
    (cl:cons ':rapp_status (rapp_status msg))
    (cl:cons ':rapp (rapp msg))
    (cl:cons ':published_interfaces (published_interfaces msg))
    (cl:cons ':published_parameters (published_parameters msg))
))
