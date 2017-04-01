; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-srv)


;//! \htmlinclude RequestInteraction-request.msg.html

(cl:defclass <RequestInteraction-request> (roslisp-msg-protocol:ros-message)
  ((remocon
    :reader remocon
    :initarg :remocon
    :type cl:string
    :initform "")
   (hash
    :reader hash
    :initarg :hash
    :type cl:integer
    :initform 0))
)

(cl:defclass RequestInteraction-request (<RequestInteraction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestInteraction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestInteraction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<RequestInteraction-request> is deprecated: use rocon_interaction_msgs-srv:RequestInteraction-request instead.")))

(cl:ensure-generic-function 'remocon-val :lambda-list '(m))
(cl:defmethod remocon-val ((m <RequestInteraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:remocon-val is deprecated.  Use rocon_interaction_msgs-srv:remocon instead.")
  (remocon m))

(cl:ensure-generic-function 'hash-val :lambda-list '(m))
(cl:defmethod hash-val ((m <RequestInteraction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:hash-val is deprecated.  Use rocon_interaction_msgs-srv:hash instead.")
  (hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestInteraction-request>) ostream)
  "Serializes a message object of type '<RequestInteraction-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remocon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remocon))
  (cl:let* ((signed (cl:slot-value msg 'hash)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestInteraction-request>) istream)
  "Deserializes a message object of type '<RequestInteraction-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remocon) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remocon) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hash) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestInteraction-request>)))
  "Returns string type for a service object of type '<RequestInteraction-request>"
  "rocon_interaction_msgs/RequestInteractionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestInteraction-request)))
  "Returns string type for a service object of type 'RequestInteraction-request"
  "rocon_interaction_msgs/RequestInteractionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestInteraction-request>)))
  "Returns md5sum for a message object of type '<RequestInteraction-request>"
  "2f20fd3fb7af7d7995fb17623981baa0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestInteraction-request)))
  "Returns md5sum for a message object of type 'RequestInteraction-request"
  "2f20fd3fb7af7d7995fb17623981baa0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestInteraction-request>)))
  "Returns full string definition for message of type '<RequestInteraction-request>"
  (cl:format cl:nil "~%~%~%~%string remocon~%~%~%int32 hash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestInteraction-request)))
  "Returns full string definition for message of type 'RequestInteraction-request"
  (cl:format cl:nil "~%~%~%~%string remocon~%~%~%int32 hash~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestInteraction-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'remocon))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestInteraction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestInteraction-request
    (cl:cons ':remocon (remocon msg))
    (cl:cons ':hash (hash msg))
))
;//! \htmlinclude RequestInteraction-response.msg.html

(cl:defclass <RequestInteraction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RequestInteraction-response (<RequestInteraction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestInteraction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestInteraction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<RequestInteraction-response> is deprecated: use rocon_interaction_msgs-srv:RequestInteraction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RequestInteraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:result-val is deprecated.  Use rocon_interaction_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <RequestInteraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:error_code-val is deprecated.  Use rocon_interaction_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RequestInteraction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:message-val is deprecated.  Use rocon_interaction_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestInteraction-response>) ostream)
  "Serializes a message object of type '<RequestInteraction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestInteraction-response>) istream)
  "Deserializes a message object of type '<RequestInteraction-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestInteraction-response>)))
  "Returns string type for a service object of type '<RequestInteraction-response>"
  "rocon_interaction_msgs/RequestInteractionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestInteraction-response)))
  "Returns string type for a service object of type 'RequestInteraction-response"
  "rocon_interaction_msgs/RequestInteractionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestInteraction-response>)))
  "Returns md5sum for a message object of type '<RequestInteraction-response>"
  "2f20fd3fb7af7d7995fb17623981baa0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestInteraction-response)))
  "Returns md5sum for a message object of type 'RequestInteraction-response"
  "2f20fd3fb7af7d7995fb17623981baa0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestInteraction-response>)))
  "Returns full string definition for message of type '<RequestInteraction-response>"
  (cl:format cl:nil "~%bool result~%~%~%int8 error_code~%~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestInteraction-response)))
  "Returns full string definition for message of type 'RequestInteraction-response"
  (cl:format cl:nil "~%bool result~%~%~%int8 error_code~%~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestInteraction-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestInteraction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestInteraction-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestInteraction)))
  'RequestInteraction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestInteraction)))
  'RequestInteraction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestInteraction)))
  "Returns string type for a service object of type '<RequestInteraction>"
  "rocon_interaction_msgs/RequestInteraction")