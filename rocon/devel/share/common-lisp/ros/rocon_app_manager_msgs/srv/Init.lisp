; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-srv)


;//! \htmlinclude Init-request.msg.html

(cl:defclass <Init-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Init-request (<Init-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Init-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Init-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<Init-request> is deprecated: use rocon_app_manager_msgs-srv:Init-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Init-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:name-val is deprecated.  Use rocon_app_manager_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Init-request>) ostream)
  "Serializes a message object of type '<Init-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Init-request>) istream)
  "Deserializes a message object of type '<Init-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Init-request>)))
  "Returns string type for a service object of type '<Init-request>"
  "rocon_app_manager_msgs/InitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init-request)))
  "Returns string type for a service object of type 'Init-request"
  "rocon_app_manager_msgs/InitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Init-request>)))
  "Returns md5sum for a message object of type '<Init-request>"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Init-request)))
  "Returns md5sum for a message object of type 'Init-request"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Init-request>)))
  "Returns full string definition for message of type '<Init-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Init-request)))
  "Returns full string definition for message of type 'Init-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Init-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Init-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Init-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude Init-response.msg.html

(cl:defclass <Init-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Init-response (<Init-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Init-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Init-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<Init-response> is deprecated: use rocon_app_manager_msgs-srv:Init-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Init-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:result-val is deprecated.  Use rocon_app_manager_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Init-response>) ostream)
  "Serializes a message object of type '<Init-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Init-response>) istream)
  "Deserializes a message object of type '<Init-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Init-response>)))
  "Returns string type for a service object of type '<Init-response>"
  "rocon_app_manager_msgs/InitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init-response)))
  "Returns string type for a service object of type 'Init-response"
  "rocon_app_manager_msgs/InitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Init-response>)))
  "Returns md5sum for a message object of type '<Init-response>"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Init-response)))
  "Returns md5sum for a message object of type 'Init-response"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Init-response>)))
  "Returns full string definition for message of type '<Init-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Init-response)))
  "Returns full string definition for message of type 'Init-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Init-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Init-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Init-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Init)))
  'Init-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Init)))
  'Init-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init)))
  "Returns string type for a service object of type '<Init>"
  "rocon_app_manager_msgs/Init")