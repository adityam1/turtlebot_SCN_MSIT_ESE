; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-srv)


;//! \htmlinclude StartRapp-request.msg.html

(cl:defclass <StartRapp-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (remappings
    :reader remappings
    :initarg :remappings
    :type (cl:vector rocon_std_msgs-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Remapping :initial-element (cl:make-instance 'rocon_std_msgs-msg:Remapping)))
   (parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector rocon_std_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:KeyValue :initial-element (cl:make-instance 'rocon_std_msgs-msg:KeyValue))))
)

(cl:defclass StartRapp-request (<StartRapp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartRapp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartRapp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<StartRapp-request> is deprecated: use rocon_app_manager_msgs-srv:StartRapp-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <StartRapp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:name-val is deprecated.  Use rocon_app_manager_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'remappings-val :lambda-list '(m))
(cl:defmethod remappings-val ((m <StartRapp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:remappings-val is deprecated.  Use rocon_app_manager_msgs-srv:remappings instead.")
  (remappings m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <StartRapp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:parameters-val is deprecated.  Use rocon_app_manager_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartRapp-request>) ostream)
  "Serializes a message object of type '<StartRapp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remappings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remappings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartRapp-request>) istream)
  "Deserializes a message object of type '<StartRapp-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remappings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remappings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartRapp-request>)))
  "Returns string type for a service object of type '<StartRapp-request>"
  "rocon_app_manager_msgs/StartRappRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartRapp-request)))
  "Returns string type for a service object of type 'StartRapp-request"
  "rocon_app_manager_msgs/StartRappRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartRapp-request>)))
  "Returns md5sum for a message object of type '<StartRapp-request>"
  "6179a6165f5fc5828f129cad01588b6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartRapp-request)))
  "Returns md5sum for a message object of type 'StartRapp-request"
  "6179a6165f5fc5828f129cad01588b6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartRapp-request>)))
  "Returns full string definition for message of type '<StartRapp-request>"
  (cl:format cl:nil "~%string name~%rocon_std_msgs/Remapping[] remappings~%~%~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartRapp-request)))
  "Returns full string definition for message of type 'StartRapp-request"
  (cl:format cl:nil "~%string name~%rocon_std_msgs/Remapping[] remappings~%~%~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartRapp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remappings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartRapp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartRapp-request
    (cl:cons ':name (name msg))
    (cl:cons ':remappings (remappings msg))
    (cl:cons ':parameters (parameters msg))
))
;//! \htmlinclude StartRapp-response.msg.html

(cl:defclass <StartRapp-response> (roslisp-msg-protocol:ros-message)
  ((started
    :reader started
    :initarg :started
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
    :initform "")
   (application_namespace
    :reader application_namespace
    :initarg :application_namespace
    :type cl:string
    :initform ""))
)

(cl:defclass StartRapp-response (<StartRapp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartRapp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartRapp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<StartRapp-response> is deprecated: use rocon_app_manager_msgs-srv:StartRapp-response instead.")))

(cl:ensure-generic-function 'started-val :lambda-list '(m))
(cl:defmethod started-val ((m <StartRapp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:started-val is deprecated.  Use rocon_app_manager_msgs-srv:started instead.")
  (started m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <StartRapp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:error_code-val is deprecated.  Use rocon_app_manager_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StartRapp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:message-val is deprecated.  Use rocon_app_manager_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'application_namespace-val :lambda-list '(m))
(cl:defmethod application_namespace-val ((m <StartRapp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:application_namespace-val is deprecated.  Use rocon_app_manager_msgs-srv:application_namespace instead.")
  (application_namespace m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartRapp-response>) ostream)
  "Serializes a message object of type '<StartRapp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'started) 1 0)) ostream)
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'application_namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'application_namespace))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartRapp-response>) istream)
  "Deserializes a message object of type '<StartRapp-response>"
    (cl:setf (cl:slot-value msg 'started) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'application_namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'application_namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartRapp-response>)))
  "Returns string type for a service object of type '<StartRapp-response>"
  "rocon_app_manager_msgs/StartRappResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartRapp-response)))
  "Returns string type for a service object of type 'StartRapp-response"
  "rocon_app_manager_msgs/StartRappResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartRapp-response>)))
  "Returns md5sum for a message object of type '<StartRapp-response>"
  "6179a6165f5fc5828f129cad01588b6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartRapp-response)))
  "Returns md5sum for a message object of type 'StartRapp-response"
  "6179a6165f5fc5828f129cad01588b6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartRapp-response>)))
  "Returns full string definition for message of type '<StartRapp-response>"
  (cl:format cl:nil "bool started~%~%~%int32 error_code~%~%~%string message~%~%~%string application_namespace~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartRapp-response)))
  "Returns full string definition for message of type 'StartRapp-response"
  (cl:format cl:nil "bool started~%~%~%int32 error_code~%~%~%string message~%~%~%string application_namespace~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartRapp-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'application_namespace))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartRapp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartRapp-response
    (cl:cons ':started (started msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':application_namespace (application_namespace msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartRapp)))
  'StartRapp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartRapp)))
  'StartRapp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartRapp)))
  "Returns string type for a service object of type '<StartRapp>"
  "rocon_app_manager_msgs/StartRapp")