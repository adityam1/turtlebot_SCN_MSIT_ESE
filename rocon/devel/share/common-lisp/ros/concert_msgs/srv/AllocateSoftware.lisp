; Auto-generated. Do not edit!


(cl:in-package concert_msgs-srv)


;//! \htmlinclude AllocateSoftware-request.msg.html

(cl:defclass <AllocateSoftware-request> (roslisp-msg-protocol:ros-message)
  ((user
    :reader user
    :initarg :user
    :type cl:string
    :initform "")
   (software
    :reader software
    :initarg :software
    :type cl:string
    :initform "")
   (allocate
    :reader allocate
    :initarg :allocate
    :type cl:boolean
    :initform cl:nil)
   (parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector rocon_std_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:KeyValue :initial-element (cl:make-instance 'rocon_std_msgs-msg:KeyValue))))
)

(cl:defclass AllocateSoftware-request (<AllocateSoftware-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllocateSoftware-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllocateSoftware-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-srv:<AllocateSoftware-request> is deprecated: use concert_msgs-srv:AllocateSoftware-request instead.")))

(cl:ensure-generic-function 'user-val :lambda-list '(m))
(cl:defmethod user-val ((m <AllocateSoftware-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:user-val is deprecated.  Use concert_msgs-srv:user instead.")
  (user m))

(cl:ensure-generic-function 'software-val :lambda-list '(m))
(cl:defmethod software-val ((m <AllocateSoftware-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:software-val is deprecated.  Use concert_msgs-srv:software instead.")
  (software m))

(cl:ensure-generic-function 'allocate-val :lambda-list '(m))
(cl:defmethod allocate-val ((m <AllocateSoftware-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:allocate-val is deprecated.  Use concert_msgs-srv:allocate instead.")
  (allocate m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <AllocateSoftware-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:parameters-val is deprecated.  Use concert_msgs-srv:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllocateSoftware-request>) ostream)
  "Serializes a message object of type '<AllocateSoftware-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'software))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'software))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allocate) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllocateSoftware-request>) istream)
  "Deserializes a message object of type '<AllocateSoftware-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'software) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'software) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'allocate) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllocateSoftware-request>)))
  "Returns string type for a service object of type '<AllocateSoftware-request>"
  "concert_msgs/AllocateSoftwareRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllocateSoftware-request)))
  "Returns string type for a service object of type 'AllocateSoftware-request"
  "concert_msgs/AllocateSoftwareRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllocateSoftware-request>)))
  "Returns md5sum for a message object of type '<AllocateSoftware-request>"
  "9a9d4cc73086cbcea67798fb6b0cda56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllocateSoftware-request)))
  "Returns md5sum for a message object of type 'AllocateSoftware-request"
  "9a9d4cc73086cbcea67798fb6b0cda56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllocateSoftware-request>)))
  "Returns full string definition for message of type '<AllocateSoftware-request>"
  (cl:format cl:nil "string user~%string software~%bool allocate~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllocateSoftware-request)))
  "Returns full string definition for message of type 'AllocateSoftware-request"
  (cl:format cl:nil "string user~%string software~%bool allocate~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllocateSoftware-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'user))
     4 (cl:length (cl:slot-value msg 'software))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllocateSoftware-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AllocateSoftware-request
    (cl:cons ':user (user msg))
    (cl:cons ':software (software msg))
    (cl:cons ':allocate (allocate msg))
    (cl:cons ':parameters (parameters msg))
))
;//! \htmlinclude AllocateSoftware-response.msg.html

(cl:defclass <AllocateSoftware-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector rocon_std_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:KeyValue :initial-element (cl:make-instance 'rocon_std_msgs-msg:KeyValue)))
   (namespace
    :reader namespace
    :initarg :namespace
    :type cl:string
    :initform "")
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass AllocateSoftware-response (<AllocateSoftware-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllocateSoftware-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllocateSoftware-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-srv:<AllocateSoftware-response> is deprecated: use concert_msgs-srv:AllocateSoftware-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AllocateSoftware-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:success-val is deprecated.  Use concert_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <AllocateSoftware-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:parameters-val is deprecated.  Use concert_msgs-srv:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'namespace-val :lambda-list '(m))
(cl:defmethod namespace-val ((m <AllocateSoftware-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:namespace-val is deprecated.  Use concert_msgs-srv:namespace instead.")
  (namespace m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <AllocateSoftware-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:error_message-val is deprecated.  Use concert_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllocateSoftware-response>) ostream)
  "Serializes a message object of type '<AllocateSoftware-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'namespace))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllocateSoftware-response>) istream)
  "Deserializes a message object of type '<AllocateSoftware-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllocateSoftware-response>)))
  "Returns string type for a service object of type '<AllocateSoftware-response>"
  "concert_msgs/AllocateSoftwareResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllocateSoftware-response)))
  "Returns string type for a service object of type 'AllocateSoftware-response"
  "concert_msgs/AllocateSoftwareResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllocateSoftware-response>)))
  "Returns md5sum for a message object of type '<AllocateSoftware-response>"
  "9a9d4cc73086cbcea67798fb6b0cda56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllocateSoftware-response)))
  "Returns md5sum for a message object of type 'AllocateSoftware-response"
  "9a9d4cc73086cbcea67798fb6b0cda56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllocateSoftware-response>)))
  "Returns full string definition for message of type '<AllocateSoftware-response>"
  (cl:format cl:nil "bool success~%rocon_std_msgs/KeyValue[] parameters~%string namespace~%string error_message~%~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllocateSoftware-response)))
  "Returns full string definition for message of type 'AllocateSoftware-response"
  (cl:format cl:nil "bool success~%rocon_std_msgs/KeyValue[] parameters~%string namespace~%string error_message~%~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllocateSoftware-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'namespace))
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllocateSoftware-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AllocateSoftware-response
    (cl:cons ':success (success msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':namespace (namespace msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AllocateSoftware)))
  'AllocateSoftware-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AllocateSoftware)))
  'AllocateSoftware-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllocateSoftware)))
  "Returns string type for a service object of type '<AllocateSoftware>"
  "concert_msgs/AllocateSoftware")