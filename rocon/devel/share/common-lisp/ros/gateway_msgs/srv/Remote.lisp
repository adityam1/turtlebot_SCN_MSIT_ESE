; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-srv)


;//! \htmlinclude Remote-request.msg.html

(cl:defclass <Remote-request> (roslisp-msg-protocol:ros-message)
  ((remotes
    :reader remotes
    :initarg :remotes
    :type (cl:vector gateway_msgs-msg:RemoteRule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:RemoteRule :initial-element (cl:make-instance 'gateway_msgs-msg:RemoteRule)))
   (cancel
    :reader cancel
    :initarg :cancel
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Remote-request (<Remote-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Remote-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Remote-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<Remote-request> is deprecated: use gateway_msgs-srv:Remote-request instead.")))

(cl:ensure-generic-function 'remotes-val :lambda-list '(m))
(cl:defmethod remotes-val ((m <Remote-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:remotes-val is deprecated.  Use gateway_msgs-srv:remotes instead.")
  (remotes m))

(cl:ensure-generic-function 'cancel-val :lambda-list '(m))
(cl:defmethod cancel-val ((m <Remote-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:cancel-val is deprecated.  Use gateway_msgs-srv:cancel instead.")
  (cancel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Remote-request>) ostream)
  "Serializes a message object of type '<Remote-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remotes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remotes))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancel) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Remote-request>) istream)
  "Deserializes a message object of type '<Remote-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remotes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remotes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:RemoteRule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'cancel) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Remote-request>)))
  "Returns string type for a service object of type '<Remote-request>"
  "gateway_msgs/RemoteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remote-request)))
  "Returns string type for a service object of type 'Remote-request"
  "gateway_msgs/RemoteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Remote-request>)))
  "Returns md5sum for a message object of type '<Remote-request>"
  "d2170021bdea1c8bfca632d3d43a6993")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Remote-request)))
  "Returns md5sum for a message object of type 'Remote-request"
  "d2170021bdea1c8bfca632d3d43a6993")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Remote-request>)))
  "Returns full string definition for message of type '<Remote-request>"
  (cl:format cl:nil "~%~%~%~%RemoteRule[] remotes~%~%~%bool cancel~%~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Remote-request)))
  "Returns full string definition for message of type 'Remote-request"
  (cl:format cl:nil "~%~%~%~%RemoteRule[] remotes~%~%~%bool cancel~%~%~%================================================================================~%MSG: gateway_msgs/RemoteRule~%# Definition for a flip. It represents either:~%#~%# 1) an existing flipped connection (from the local gateway)~%# 2) a rule that is put on a watchlist~%~%# The target recipient of the flip~%string gateway~%~%# Connection has the following parameters that need setting~%# - name : fully qualified name of the connection (str)~%# - type : connection type (str)~%#  ~%# Use one of the types defined in Connection string constants:~%#     (publisher, subscriber, service, action_client, action_server)~%#~%# - node : name of the node it originates from (str)(optional)~%#~%# Node name is necessary, for instance, if you have multiple subscribers~%# publishing to a single topic. Most of the time it is not necessary,~%# but in some cases it helps refine the rule. It helps refine the rule.~%#~%Rule rule~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Remote-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remotes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Remote-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Remote-request
    (cl:cons ':remotes (remotes msg))
    (cl:cons ':cancel (cancel msg))
))
;//! \htmlinclude Remote-response.msg.html

(cl:defclass <Remote-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass Remote-response (<Remote-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Remote-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Remote-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<Remote-response> is deprecated: use gateway_msgs-srv:Remote-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Remote-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:result-val is deprecated.  Use gateway_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Remote-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:error_message-val is deprecated.  Use gateway_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Remote-response>) ostream)
  "Serializes a message object of type '<Remote-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Remote-response>) istream)
  "Deserializes a message object of type '<Remote-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Remote-response>)))
  "Returns string type for a service object of type '<Remote-response>"
  "gateway_msgs/RemoteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remote-response)))
  "Returns string type for a service object of type 'Remote-response"
  "gateway_msgs/RemoteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Remote-response>)))
  "Returns md5sum for a message object of type '<Remote-response>"
  "d2170021bdea1c8bfca632d3d43a6993")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Remote-response)))
  "Returns md5sum for a message object of type 'Remote-response"
  "d2170021bdea1c8bfca632d3d43a6993")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Remote-response>)))
  "Returns full string definition for message of type '<Remote-response>"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Remote-response)))
  "Returns full string definition for message of type 'Remote-response"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Remote-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Remote-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Remote-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Remote)))
  'Remote-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Remote)))
  'Remote-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remote)))
  "Returns string type for a service object of type '<Remote>"
  "gateway_msgs/Remote")