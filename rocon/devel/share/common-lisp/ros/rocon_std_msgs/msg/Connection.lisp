; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-msg)


;//! \htmlinclude Connection.msg.html

(cl:defclass <Connection> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (node
    :reader node
    :initarg :node
    :type cl:string
    :initform "")
   (type_info
    :reader type_info
    :initarg :type_info
    :type cl:string
    :initform "")
   (xmlrpc_uri
    :reader xmlrpc_uri
    :initarg :xmlrpc_uri
    :type cl:string
    :initform ""))
)

(cl:defclass Connection (<Connection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-msg:<Connection> is deprecated: use rocon_std_msgs-msg:Connection instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:type-val is deprecated.  Use rocon_std_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:name-val is deprecated.  Use rocon_std_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:node-val is deprecated.  Use rocon_std_msgs-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:type_info-val is deprecated.  Use rocon_std_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'xmlrpc_uri-val :lambda-list '(m))
(cl:defmethod xmlrpc_uri-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:xmlrpc_uri-val is deprecated.  Use rocon_std_msgs-msg:xmlrpc_uri instead.")
  (xmlrpc_uri m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Connection>)))
    "Constants for message type '<Connection>"
  '((:PUBLISHER . publisher)
    (:SUBSCRIBER . subscriber)
    (:SERVICE . service)
    (:ACTION_CLIENT . action_client)
    (:ACTION_SERVER . action_server)
    (:INVALID . invalid))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Connection)))
    "Constants for message type 'Connection"
  '((:PUBLISHER . publisher)
    (:SUBSCRIBER . subscriber)
    (:SERVICE . service)
    (:ACTION_CLIENT . action_client)
    (:ACTION_SERVER . action_server)
    (:INVALID . invalid))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connection>) ostream)
  "Serializes a message object of type '<Connection>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type_info))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'xmlrpc_uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'xmlrpc_uri))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connection>) istream)
  "Deserializes a message object of type '<Connection>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xmlrpc_uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'xmlrpc_uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connection>)))
  "Returns string type for a message object of type '<Connection>"
  "rocon_std_msgs/Connection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connection)))
  "Returns string type for a message object of type 'Connection"
  "rocon_std_msgs/Connection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connection>)))
  "Returns md5sum for a message object of type '<Connection>"
  "1f8567f998cae31fe0c2a8240755957a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connection)))
  "Returns md5sum for a message object of type 'Connection"
  "1f8567f998cae31fe0c2a8240755957a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connection>)))
  "Returns full string definition for message of type '<Connection>"
  (cl:format cl:nil "# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%# type of connection (from string constants above)~%string type~%~%# this is the topic/service name or the action base name~%string name ~%~%# the name of the node establishing this connection~%string node~%~%# topic, service or action type, e.g. std_msgs/String~%string type_info~%~%# xmlrpc node uri for managing the connection~%string xmlrpc_uri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connection)))
  "Returns full string definition for message of type 'Connection"
  (cl:format cl:nil "# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%# type of connection (from string constants above)~%string type~%~%# this is the topic/service name or the action base name~%string name ~%~%# the name of the node establishing this connection~%string node~%~%# topic, service or action type, e.g. std_msgs/String~%string type_info~%~%# xmlrpc node uri for managing the connection~%string xmlrpc_uri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connection>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'node))
     4 (cl:length (cl:slot-value msg 'type_info))
     4 (cl:length (cl:slot-value msg 'xmlrpc_uri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connection>))
  "Converts a ROS message object to a list"
  (cl:list 'Connection
    (cl:cons ':type (type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':node (node msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':xmlrpc_uri (xmlrpc_uri msg))
))
