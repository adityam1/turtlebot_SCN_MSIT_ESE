; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-msg)


;//! \htmlinclude Rule.msg.html

(cl:defclass <Rule> (roslisp-msg-protocol:ros-message)
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
    :initform ""))
)

(cl:defclass Rule (<Rule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-msg:<Rule> is deprecated: use gateway_msgs-msg:Rule instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Rule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:type-val is deprecated.  Use gateway_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Rule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:name-val is deprecated.  Use gateway_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <Rule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-msg:node-val is deprecated.  Use gateway_msgs-msg:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rule>) ostream)
  "Serializes a message object of type '<Rule>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rule>) istream)
  "Deserializes a message object of type '<Rule>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rule>)))
  "Returns string type for a message object of type '<Rule>"
  "gateway_msgs/Rule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rule)))
  "Returns string type for a message object of type 'Rule"
  "gateway_msgs/Rule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rule>)))
  "Returns md5sum for a message object of type '<Rule>"
  "7a98759a4c27c4925840d27b3d7bcecb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rule)))
  "Returns md5sum for a message object of type 'Rule"
  "7a98759a4c27c4925840d27b3d7bcecb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rule>)))
  "Returns full string definition for message of type '<Rule>"
  (cl:format cl:nil "# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rule)))
  "Returns full string definition for message of type 'Rule"
  (cl:format cl:nil "# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rule>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rule>))
  "Converts a ROS message object to a list"
  (cl:list 'Rule
    (cl:cons ':type (type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':node (node msg))
))
