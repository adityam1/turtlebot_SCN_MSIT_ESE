; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-msg)


;//! \htmlinclude PublishedInterface.msg.html

(cl:defclass <PublishedInterface> (roslisp-msg-protocol:ros-message)
  ((interface
    :reader interface
    :initarg :interface
    :type rocon_app_manager_msgs-msg:PublicInterface
    :initform (cl:make-instance 'rocon_app_manager_msgs-msg:PublicInterface))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass PublishedInterface (<PublishedInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublishedInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublishedInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-msg:<PublishedInterface> is deprecated: use rocon_app_manager_msgs-msg:PublishedInterface instead.")))

(cl:ensure-generic-function 'interface-val :lambda-list '(m))
(cl:defmethod interface-val ((m <PublishedInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:interface-val is deprecated.  Use rocon_app_manager_msgs-msg:interface instead.")
  (interface m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PublishedInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:name-val is deprecated.  Use rocon_app_manager_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublishedInterface>) ostream)
  "Serializes a message object of type '<PublishedInterface>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interface) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublishedInterface>) istream)
  "Deserializes a message object of type '<PublishedInterface>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interface) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublishedInterface>)))
  "Returns string type for a message object of type '<PublishedInterface>"
  "rocon_app_manager_msgs/PublishedInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishedInterface)))
  "Returns string type for a message object of type 'PublishedInterface"
  "rocon_app_manager_msgs/PublishedInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublishedInterface>)))
  "Returns md5sum for a message object of type '<PublishedInterface>"
  "0441e6f3dfb91bbff9a213da41a7a0d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublishedInterface)))
  "Returns md5sum for a message object of type 'PublishedInterface"
  "0441e6f3dfb91bbff9a213da41a7a0d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublishedInterface>)))
  "Returns full string definition for message of type '<PublishedInterface>"
  (cl:format cl:nil "# The runtime, possibly namespaced and remapped public interface.~%~%PublicInterface interface~%~%# Final absolute namespaced/remapped name of the topic/service/action xxx~%string name~%================================================================================~%MSG: rocon_app_manager_msgs/PublicInterface~%# Represents a public interface of a rapp~%~%# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)~%string connection_type~%~%# The data type, e.g. std_msgs/Strings~%string data_type~%~%# Name of the topic/service/action xxx.~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublishedInterface)))
  "Returns full string definition for message of type 'PublishedInterface"
  (cl:format cl:nil "# The runtime, possibly namespaced and remapped public interface.~%~%PublicInterface interface~%~%# Final absolute namespaced/remapped name of the topic/service/action xxx~%string name~%================================================================================~%MSG: rocon_app_manager_msgs/PublicInterface~%# Represents a public interface of a rapp~%~%# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)~%string connection_type~%~%# The data type, e.g. std_msgs/Strings~%string data_type~%~%# Name of the topic/service/action xxx.~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublishedInterface>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interface))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublishedInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'PublishedInterface
    (cl:cons ':interface (interface msg))
    (cl:cons ':name (name msg))
))
