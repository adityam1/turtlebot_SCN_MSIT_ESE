; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-srv)


;//! \htmlinclude Invite-request.msg.html

(cl:defclass <Invite-request> (roslisp-msg-protocol:ros-message)
  ((remote_target_name
    :reader remote_target_name
    :initarg :remote_target_name
    :type cl:string
    :initform "")
   (application_namespace
    :reader application_namespace
    :initarg :application_namespace
    :type cl:string
    :initform "")
   (cancel
    :reader cancel
    :initarg :cancel
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Invite-request (<Invite-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Invite-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Invite-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<Invite-request> is deprecated: use rocon_app_manager_msgs-srv:Invite-request instead.")))

(cl:ensure-generic-function 'remote_target_name-val :lambda-list '(m))
(cl:defmethod remote_target_name-val ((m <Invite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:remote_target_name-val is deprecated.  Use rocon_app_manager_msgs-srv:remote_target_name instead.")
  (remote_target_name m))

(cl:ensure-generic-function 'application_namespace-val :lambda-list '(m))
(cl:defmethod application_namespace-val ((m <Invite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:application_namespace-val is deprecated.  Use rocon_app_manager_msgs-srv:application_namespace instead.")
  (application_namespace m))

(cl:ensure-generic-function 'cancel-val :lambda-list '(m))
(cl:defmethod cancel-val ((m <Invite-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:cancel-val is deprecated.  Use rocon_app_manager_msgs-srv:cancel instead.")
  (cancel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Invite-request>) ostream)
  "Serializes a message object of type '<Invite-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remote_target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remote_target_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'application_namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'application_namespace))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancel) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Invite-request>) istream)
  "Deserializes a message object of type '<Invite-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remote_target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remote_target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'application_namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'application_namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'cancel) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Invite-request>)))
  "Returns string type for a service object of type '<Invite-request>"
  "rocon_app_manager_msgs/InviteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Invite-request)))
  "Returns string type for a service object of type 'Invite-request"
  "rocon_app_manager_msgs/InviteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Invite-request>)))
  "Returns md5sum for a message object of type '<Invite-request>"
  "a8a860264b05149cf65b79d0a300e026")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Invite-request)))
  "Returns md5sum for a message object of type 'Invite-request"
  "a8a860264b05149cf65b79d0a300e026")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Invite-request>)))
  "Returns full string definition for message of type '<Invite-request>"
  (cl:format cl:nil "~%~%~%string remote_target_name~%~%~%~%~%~%string application_namespace~%bool cancel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Invite-request)))
  "Returns full string definition for message of type 'Invite-request"
  (cl:format cl:nil "~%~%~%string remote_target_name~%~%~%~%~%~%string application_namespace~%bool cancel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Invite-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'remote_target_name))
     4 (cl:length (cl:slot-value msg 'application_namespace))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Invite-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Invite-request
    (cl:cons ':remote_target_name (remote_target_name msg))
    (cl:cons ':application_namespace (application_namespace msg))
    (cl:cons ':cancel (cancel msg))
))
;//! \htmlinclude Invite-response.msg.html

(cl:defclass <Invite-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
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

(cl:defclass Invite-response (<Invite-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Invite-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Invite-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<Invite-response> is deprecated: use rocon_app_manager_msgs-srv:Invite-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Invite-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:result-val is deprecated.  Use rocon_app_manager_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <Invite-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:error_code-val is deprecated.  Use rocon_app_manager_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Invite-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:message-val is deprecated.  Use rocon_app_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Invite-response>) ostream)
  "Serializes a message object of type '<Invite-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Invite-response>) istream)
  "Deserializes a message object of type '<Invite-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Invite-response>)))
  "Returns string type for a service object of type '<Invite-response>"
  "rocon_app_manager_msgs/InviteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Invite-response)))
  "Returns string type for a service object of type 'Invite-response"
  "rocon_app_manager_msgs/InviteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Invite-response>)))
  "Returns md5sum for a message object of type '<Invite-response>"
  "a8a860264b05149cf65b79d0a300e026")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Invite-response)))
  "Returns md5sum for a message object of type 'Invite-response"
  "a8a860264b05149cf65b79d0a300e026")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Invite-response>)))
  "Returns full string definition for message of type '<Invite-response>"
  (cl:format cl:nil "bool result~%~%int32 error_code~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Invite-response)))
  "Returns full string definition for message of type 'Invite-response"
  (cl:format cl:nil "bool result~%~%int32 error_code~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Invite-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Invite-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Invite-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Invite)))
  'Invite-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Invite)))
  'Invite-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Invite)))
  "Returns string type for a service object of type '<Invite>"
  "rocon_app_manager_msgs/Invite")