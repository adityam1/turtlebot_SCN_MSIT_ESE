; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-srv)


;//! \htmlinclude GetRoles-request.msg.html

(cl:defclass <GetRoles-request> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform ""))
)

(cl:defclass GetRoles-request (<GetRoles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<GetRoles-request> is deprecated: use rocon_interaction_msgs-srv:GetRoles-request instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <GetRoles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:uri-val is deprecated.  Use rocon_interaction_msgs-srv:uri instead.")
  (uri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoles-request>) ostream)
  "Serializes a message object of type '<GetRoles-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoles-request>) istream)
  "Deserializes a message object of type '<GetRoles-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoles-request>)))
  "Returns string type for a service object of type '<GetRoles-request>"
  "rocon_interaction_msgs/GetRolesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoles-request)))
  "Returns string type for a service object of type 'GetRoles-request"
  "rocon_interaction_msgs/GetRolesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoles-request>)))
  "Returns md5sum for a message object of type '<GetRoles-request>"
  "bb1af0e7038bd0c25a66561b0d17c47c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoles-request)))
  "Returns md5sum for a message object of type 'GetRoles-request"
  "bb1af0e7038bd0c25a66561b0d17c47c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoles-request>)))
  "Returns full string definition for message of type '<GetRoles-request>"
  (cl:format cl:nil "~%~%~%~%~%string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoles-request)))
  "Returns full string definition for message of type 'GetRoles-request"
  (cl:format cl:nil "~%~%~%~%~%string uri~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoles-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoles-request
    (cl:cons ':uri (uri msg))
))
;//! \htmlinclude GetRoles-response.msg.html

(cl:defclass <GetRoles-response> (roslisp-msg-protocol:ros-message)
  ((roles
    :reader roles
    :initarg :roles
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetRoles-response (<GetRoles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<GetRoles-response> is deprecated: use rocon_interaction_msgs-srv:GetRoles-response instead.")))

(cl:ensure-generic-function 'roles-val :lambda-list '(m))
(cl:defmethod roles-val ((m <GetRoles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:roles-val is deprecated.  Use rocon_interaction_msgs-srv:roles instead.")
  (roles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoles-response>) ostream)
  "Serializes a message object of type '<GetRoles-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'roles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoles-response>) istream)
  "Deserializes a message object of type '<GetRoles-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoles-response>)))
  "Returns string type for a service object of type '<GetRoles-response>"
  "rocon_interaction_msgs/GetRolesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoles-response)))
  "Returns string type for a service object of type 'GetRoles-response"
  "rocon_interaction_msgs/GetRolesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoles-response>)))
  "Returns md5sum for a message object of type '<GetRoles-response>"
  "bb1af0e7038bd0c25a66561b0d17c47c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoles-response)))
  "Returns md5sum for a message object of type 'GetRoles-response"
  "bb1af0e7038bd0c25a66561b0d17c47c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoles-response>)))
  "Returns full string definition for message of type '<GetRoles-response>"
  (cl:format cl:nil "string[] roles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoles-response)))
  "Returns full string definition for message of type 'GetRoles-response"
  (cl:format cl:nil "string[] roles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoles-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoles-response
    (cl:cons ':roles (roles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRoles)))
  'GetRoles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRoles)))
  'GetRoles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoles)))
  "Returns string type for a service object of type '<GetRoles>"
  "rocon_interaction_msgs/GetRoles")