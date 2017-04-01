; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-srv)


;//! \htmlinclude StopRapp-request.msg.html

(cl:defclass <StopRapp-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopRapp-request (<StopRapp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRapp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRapp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<StopRapp-request> is deprecated: use rocon_app_manager_msgs-srv:StopRapp-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRapp-request>) ostream)
  "Serializes a message object of type '<StopRapp-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRapp-request>) istream)
  "Deserializes a message object of type '<StopRapp-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRapp-request>)))
  "Returns string type for a service object of type '<StopRapp-request>"
  "rocon_app_manager_msgs/StopRappRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRapp-request)))
  "Returns string type for a service object of type 'StopRapp-request"
  "rocon_app_manager_msgs/StopRappRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRapp-request>)))
  "Returns md5sum for a message object of type '<StopRapp-request>"
  "1f94f0ff0fc0fde186f728634f98a3cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRapp-request)))
  "Returns md5sum for a message object of type 'StopRapp-request"
  "1f94f0ff0fc0fde186f728634f98a3cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRapp-request>)))
  "Returns full string definition for message of type '<StopRapp-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRapp-request)))
  "Returns full string definition for message of type 'StopRapp-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRapp-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRapp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRapp-request
))
;//! \htmlinclude StopRapp-response.msg.html

(cl:defclass <StopRapp-response> (roslisp-msg-protocol:ros-message)
  ((stopped
    :reader stopped
    :initarg :stopped
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StopRapp-response (<StopRapp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRapp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRapp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<StopRapp-response> is deprecated: use rocon_app_manager_msgs-srv:StopRapp-response instead.")))

(cl:ensure-generic-function 'stopped-val :lambda-list '(m))
(cl:defmethod stopped-val ((m <StopRapp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:stopped-val is deprecated.  Use rocon_app_manager_msgs-srv:stopped instead.")
  (stopped m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <StopRapp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:error_code-val is deprecated.  Use rocon_app_manager_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StopRapp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:message-val is deprecated.  Use rocon_app_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRapp-response>) ostream)
  "Serializes a message object of type '<StopRapp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stopped) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRapp-response>) istream)
  "Deserializes a message object of type '<StopRapp-response>"
    (cl:setf (cl:slot-value msg 'stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRapp-response>)))
  "Returns string type for a service object of type '<StopRapp-response>"
  "rocon_app_manager_msgs/StopRappResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRapp-response)))
  "Returns string type for a service object of type 'StopRapp-response"
  "rocon_app_manager_msgs/StopRappResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRapp-response>)))
  "Returns md5sum for a message object of type '<StopRapp-response>"
  "1f94f0ff0fc0fde186f728634f98a3cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRapp-response)))
  "Returns md5sum for a message object of type 'StopRapp-response"
  "1f94f0ff0fc0fde186f728634f98a3cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRapp-response>)))
  "Returns full string definition for message of type '<StopRapp-response>"
  (cl:format cl:nil "~%bool stopped~%~%int32 error_code~%~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRapp-response)))
  "Returns full string definition for message of type 'StopRapp-response"
  (cl:format cl:nil "~%bool stopped~%~%int32 error_code~%~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRapp-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRapp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRapp-response
    (cl:cons ':stopped (stopped msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopRapp)))
  'StopRapp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopRapp)))
  'StopRapp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRapp)))
  "Returns string type for a service object of type '<StopRapp>"
  "rocon_app_manager_msgs/StopRapp")