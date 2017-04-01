; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-srv)


;//! \htmlinclude RemoteAll-request.msg.html

(cl:defclass <RemoteAll-request> (roslisp-msg-protocol:ros-message)
  ((gateway
    :reader gateway
    :initarg :gateway
    :type cl:string
    :initform "")
   (blacklist
    :reader blacklist
    :initarg :blacklist
    :type (cl:vector gateway_msgs-msg:Rule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:Rule :initial-element (cl:make-instance 'gateway_msgs-msg:Rule)))
   (cancel
    :reader cancel
    :initarg :cancel
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoteAll-request (<RemoteAll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteAll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteAll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<RemoteAll-request> is deprecated: use gateway_msgs-srv:RemoteAll-request instead.")))

(cl:ensure-generic-function 'gateway-val :lambda-list '(m))
(cl:defmethod gateway-val ((m <RemoteAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:gateway-val is deprecated.  Use gateway_msgs-srv:gateway instead.")
  (gateway m))

(cl:ensure-generic-function 'blacklist-val :lambda-list '(m))
(cl:defmethod blacklist-val ((m <RemoteAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:blacklist-val is deprecated.  Use gateway_msgs-srv:blacklist instead.")
  (blacklist m))

(cl:ensure-generic-function 'cancel-val :lambda-list '(m))
(cl:defmethod cancel-val ((m <RemoteAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:cancel-val is deprecated.  Use gateway_msgs-srv:cancel instead.")
  (cancel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteAll-request>) ostream)
  "Serializes a message object of type '<RemoteAll-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gateway))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gateway))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blacklist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blacklist))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancel) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteAll-request>) istream)
  "Deserializes a message object of type '<RemoteAll-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gateway) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gateway) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blacklist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blacklist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:Rule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'cancel) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteAll-request>)))
  "Returns string type for a service object of type '<RemoteAll-request>"
  "gateway_msgs/RemoteAllRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteAll-request)))
  "Returns string type for a service object of type 'RemoteAll-request"
  "gateway_msgs/RemoteAllRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteAll-request>)))
  "Returns md5sum for a message object of type '<RemoteAll-request>"
  "dae39b2540424f9672db2c4f37b6394a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteAll-request)))
  "Returns md5sum for a message object of type 'RemoteAll-request"
  "dae39b2540424f9672db2c4f37b6394a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteAll-request>)))
  "Returns full string definition for message of type '<RemoteAll-request>"
  (cl:format cl:nil "~%~%~%string gateway~%~%~%Rule[] blacklist~%~%~%bool cancel~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteAll-request)))
  "Returns full string definition for message of type 'RemoteAll-request"
  (cl:format cl:nil "~%~%~%string gateway~%~%~%Rule[] blacklist~%~%~%bool cancel~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteAll-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gateway))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blacklist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteAll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteAll-request
    (cl:cons ':gateway (gateway msg))
    (cl:cons ':blacklist (blacklist msg))
    (cl:cons ':cancel (cancel msg))
))
;//! \htmlinclude RemoteAll-response.msg.html

(cl:defclass <RemoteAll-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RemoteAll-response (<RemoteAll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteAll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteAll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<RemoteAll-response> is deprecated: use gateway_msgs-srv:RemoteAll-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RemoteAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:result-val is deprecated.  Use gateway_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <RemoteAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:error_message-val is deprecated.  Use gateway_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteAll-response>) ostream)
  "Serializes a message object of type '<RemoteAll-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteAll-response>) istream)
  "Deserializes a message object of type '<RemoteAll-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteAll-response>)))
  "Returns string type for a service object of type '<RemoteAll-response>"
  "gateway_msgs/RemoteAllResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteAll-response)))
  "Returns string type for a service object of type 'RemoteAll-response"
  "gateway_msgs/RemoteAllResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteAll-response>)))
  "Returns md5sum for a message object of type '<RemoteAll-response>"
  "dae39b2540424f9672db2c4f37b6394a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteAll-response)))
  "Returns md5sum for a message object of type 'RemoteAll-response"
  "dae39b2540424f9672db2c4f37b6394a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteAll-response>)))
  "Returns full string definition for message of type '<RemoteAll-response>"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteAll-response)))
  "Returns full string definition for message of type 'RemoteAll-response"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteAll-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteAll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteAll-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoteAll)))
  'RemoteAll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoteAll)))
  'RemoteAll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteAll)))
  "Returns string type for a service object of type '<RemoteAll>"
  "gateway_msgs/RemoteAll")