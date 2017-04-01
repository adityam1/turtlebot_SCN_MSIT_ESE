; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-msg)


;//! \htmlinclude PublicInterface.msg.html

(cl:defclass <PublicInterface> (roslisp-msg-protocol:ros-message)
  ((connection_type
    :reader connection_type
    :initarg :connection_type
    :type cl:string
    :initform "")
   (data_type
    :reader data_type
    :initarg :data_type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass PublicInterface (<PublicInterface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublicInterface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublicInterface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-msg:<PublicInterface> is deprecated: use rocon_app_manager_msgs-msg:PublicInterface instead.")))

(cl:ensure-generic-function 'connection_type-val :lambda-list '(m))
(cl:defmethod connection_type-val ((m <PublicInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:connection_type-val is deprecated.  Use rocon_app_manager_msgs-msg:connection_type instead.")
  (connection_type m))

(cl:ensure-generic-function 'data_type-val :lambda-list '(m))
(cl:defmethod data_type-val ((m <PublicInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:data_type-val is deprecated.  Use rocon_app_manager_msgs-msg:data_type instead.")
  (data_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PublicInterface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-msg:name-val is deprecated.  Use rocon_app_manager_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublicInterface>) ostream)
  "Serializes a message object of type '<PublicInterface>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'connection_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'connection_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublicInterface>) istream)
  "Deserializes a message object of type '<PublicInterface>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'connection_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'connection_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublicInterface>)))
  "Returns string type for a message object of type '<PublicInterface>"
  "rocon_app_manager_msgs/PublicInterface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublicInterface)))
  "Returns string type for a message object of type 'PublicInterface"
  "rocon_app_manager_msgs/PublicInterface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublicInterface>)))
  "Returns md5sum for a message object of type '<PublicInterface>"
  "894455d729ec4bb7068b1f83aa87a23c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublicInterface)))
  "Returns md5sum for a message object of type 'PublicInterface"
  "894455d729ec4bb7068b1f83aa87a23c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublicInterface>)))
  "Returns full string definition for message of type '<PublicInterface>"
  (cl:format cl:nil "# Represents a public interface of a rapp~%~%# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)~%string connection_type~%~%# The data type, e.g. std_msgs/Strings~%string data_type~%~%# Name of the topic/service/action xxx.~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublicInterface)))
  "Returns full string definition for message of type 'PublicInterface"
  (cl:format cl:nil "# Represents a public interface of a rapp~%~%# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)~%string connection_type~%~%# The data type, e.g. std_msgs/Strings~%string data_type~%~%# Name of the topic/service/action xxx.~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublicInterface>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'connection_type))
     4 (cl:length (cl:slot-value msg 'data_type))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublicInterface>))
  "Converts a ROS message object to a list"
  (cl:list 'PublicInterface
    (cl:cons ':connection_type (connection_type msg))
    (cl:cons ':data_type (data_type msg))
    (cl:cons ':name (name msg))
))
