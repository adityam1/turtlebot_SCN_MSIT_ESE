; Auto-generated. Do not edit!


(cl:in-package concert_workflow_engine_msgs-msg)


;//! \htmlinclude WorkflowsStatus.msg.html

(cl:defclass <WorkflowsStatus> (roslisp-msg-protocol:ros-message)
  ((service_name
    :reader service_name
    :initarg :service_name
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass WorkflowsStatus (<WorkflowsStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkflowsStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkflowsStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_workflow_engine_msgs-msg:<WorkflowsStatus> is deprecated: use concert_workflow_engine_msgs-msg:WorkflowsStatus instead.")))

(cl:ensure-generic-function 'service_name-val :lambda-list '(m))
(cl:defmethod service_name-val ((m <WorkflowsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_workflow_engine_msgs-msg:service_name-val is deprecated.  Use concert_workflow_engine_msgs-msg:service_name instead.")
  (service_name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WorkflowsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_workflow_engine_msgs-msg:status-val is deprecated.  Use concert_workflow_engine_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WorkflowsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_workflow_engine_msgs-msg:message-val is deprecated.  Use concert_workflow_engine_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WorkflowsStatus>)))
    "Constants for message type '<WorkflowsStatus>"
  '((:READY . 1)
    (:START . 2)
    (:RUNNING . 3)
    (:STOP . 4)
    (:ERROR . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WorkflowsStatus)))
    "Constants for message type 'WorkflowsStatus"
  '((:READY . 1)
    (:START . 2)
    (:RUNNING . 3)
    (:STOP . 4)
    (:ERROR . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkflowsStatus>) ostream)
  "Serializes a message object of type '<WorkflowsStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service_name))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkflowsStatus>) istream)
  "Deserializes a message object of type '<WorkflowsStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'service_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'service_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkflowsStatus>)))
  "Returns string type for a message object of type '<WorkflowsStatus>"
  "concert_workflow_engine_msgs/WorkflowsStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkflowsStatus)))
  "Returns string type for a message object of type 'WorkflowsStatus"
  "concert_workflow_engine_msgs/WorkflowsStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkflowsStatus>)))
  "Returns md5sum for a message object of type '<WorkflowsStatus>"
  "24fa7d7ee2f6b7cfe974804fbd2e1ae0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkflowsStatus)))
  "Returns md5sum for a message object of type 'WorkflowsStatus"
  "24fa7d7ee2f6b7cfe974804fbd2e1ae0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkflowsStatus>)))
  "Returns full string definition for message of type '<WorkflowsStatus>"
  (cl:format cl:nil "#pre-define workflow status~%int8 READY = 1~%int8 START = 2~%int8 RUNNING = 3~%int8 STOP = 4~%int8 ERROR = -1~%~%string service_name # service name to launch workflow~%int8 status # status of workflow~%string message # user friendly message~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkflowsStatus)))
  "Returns full string definition for message of type 'WorkflowsStatus"
  (cl:format cl:nil "#pre-define workflow status~%int8 READY = 1~%int8 START = 2~%int8 RUNNING = 3~%int8 STOP = 4~%int8 ERROR = -1~%~%string service_name # service name to launch workflow~%int8 status # status of workflow~%string message # user friendly message~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkflowsStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service_name))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkflowsStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkflowsStatus
    (cl:cons ':service_name (service_name msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
