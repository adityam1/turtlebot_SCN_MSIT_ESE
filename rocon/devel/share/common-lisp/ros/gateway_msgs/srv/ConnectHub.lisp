; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-srv)


;//! \htmlinclude ConnectHub-request.msg.html

(cl:defclass <ConnectHub-request> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform ""))
)

(cl:defclass ConnectHub-request (<ConnectHub-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectHub-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectHub-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<ConnectHub-request> is deprecated: use gateway_msgs-srv:ConnectHub-request instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <ConnectHub-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:uri-val is deprecated.  Use gateway_msgs-srv:uri instead.")
  (uri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectHub-request>) ostream)
  "Serializes a message object of type '<ConnectHub-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectHub-request>) istream)
  "Deserializes a message object of type '<ConnectHub-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectHub-request>)))
  "Returns string type for a service object of type '<ConnectHub-request>"
  "gateway_msgs/ConnectHubRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectHub-request)))
  "Returns string type for a service object of type 'ConnectHub-request"
  "gateway_msgs/ConnectHubRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectHub-request>)))
  "Returns md5sum for a message object of type '<ConnectHub-request>"
  "6815c96f7df47a58c645055a2e0d9e1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectHub-request)))
  "Returns md5sum for a message object of type 'ConnectHub-request"
  "6815c96f7df47a58c645055a2e0d9e1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectHub-request>)))
  "Returns full string definition for message of type '<ConnectHub-request>"
  (cl:format cl:nil "~%~%string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectHub-request)))
  "Returns full string definition for message of type 'ConnectHub-request"
  (cl:format cl:nil "~%~%string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectHub-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectHub-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectHub-request
    (cl:cons ':uri (uri msg))
))
;//! \htmlinclude ConnectHub-response.msg.html

(cl:defclass <ConnectHub-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ConnectHub-response (<ConnectHub-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectHub-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectHub-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<ConnectHub-response> is deprecated: use gateway_msgs-srv:ConnectHub-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ConnectHub-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:result-val is deprecated.  Use gateway_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <ConnectHub-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:error_message-val is deprecated.  Use gateway_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectHub-response>) ostream)
  "Serializes a message object of type '<ConnectHub-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectHub-response>) istream)
  "Deserializes a message object of type '<ConnectHub-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectHub-response>)))
  "Returns string type for a service object of type '<ConnectHub-response>"
  "gateway_msgs/ConnectHubResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectHub-response)))
  "Returns string type for a service object of type 'ConnectHub-response"
  "gateway_msgs/ConnectHubResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectHub-response>)))
  "Returns md5sum for a message object of type '<ConnectHub-response>"
  "6815c96f7df47a58c645055a2e0d9e1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectHub-response)))
  "Returns md5sum for a message object of type 'ConnectHub-response"
  "6815c96f7df47a58c645055a2e0d9e1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectHub-response>)))
  "Returns full string definition for message of type '<ConnectHub-response>"
  (cl:format cl:nil "~%~%int8 result~%string error_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectHub-response)))
  "Returns full string definition for message of type 'ConnectHub-response"
  (cl:format cl:nil "~%~%int8 result~%string error_message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectHub-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectHub-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectHub-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConnectHub)))
  'ConnectHub-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConnectHub)))
  'ConnectHub-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectHub)))
  "Returns string type for a service object of type '<ConnectHub>"
  "gateway_msgs/ConnectHub")