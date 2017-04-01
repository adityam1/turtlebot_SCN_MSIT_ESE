; Auto-generated. Do not edit!


(cl:in-package concert_msgs-srv)


;//! \htmlinclude EnableService-request.msg.html

(cl:defclass <EnableService-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableService-request (<EnableService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-srv:<EnableService-request> is deprecated: use concert_msgs-srv:EnableService-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <EnableService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:name-val is deprecated.  Use concert_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <EnableService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:enable-val is deprecated.  Use concert_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableService-request>) ostream)
  "Serializes a message object of type '<EnableService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableService-request>) istream)
  "Deserializes a message object of type '<EnableService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableService-request>)))
  "Returns string type for a service object of type '<EnableService-request>"
  "concert_msgs/EnableServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableService-request)))
  "Returns string type for a service object of type 'EnableService-request"
  "concert_msgs/EnableServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableService-request>)))
  "Returns md5sum for a message object of type '<EnableService-request>"
  "1cec37e7e5df14d95c8bda48b6179b1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableService-request)))
  "Returns md5sum for a message object of type 'EnableService-request"
  "1cec37e7e5df14d95c8bda48b6179b1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableService-request>)))
  "Returns full string definition for message of type '<EnableService-request>"
  (cl:format cl:nil "string name~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableService-request)))
  "Returns full string definition for message of type 'EnableService-request"
  (cl:format cl:nil "string name~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableService-request
    (cl:cons ':name (name msg))
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude EnableService-response.msg.html

(cl:defclass <EnableService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass EnableService-response (<EnableService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-srv:<EnableService-response> is deprecated: use concert_msgs-srv:EnableService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EnableService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:success-val is deprecated.  Use concert_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <EnableService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:error_message-val is deprecated.  Use concert_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableService-response>) ostream)
  "Serializes a message object of type '<EnableService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableService-response>) istream)
  "Deserializes a message object of type '<EnableService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableService-response>)))
  "Returns string type for a service object of type '<EnableService-response>"
  "concert_msgs/EnableServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableService-response)))
  "Returns string type for a service object of type 'EnableService-response"
  "concert_msgs/EnableServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableService-response>)))
  "Returns md5sum for a message object of type '<EnableService-response>"
  "1cec37e7e5df14d95c8bda48b6179b1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableService-response)))
  "Returns md5sum for a message object of type 'EnableService-response"
  "1cec37e7e5df14d95c8bda48b6179b1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableService-response>)))
  "Returns full string definition for message of type '<EnableService-response>"
  (cl:format cl:nil "bool success~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableService-response)))
  "Returns full string definition for message of type 'EnableService-response"
  (cl:format cl:nil "bool success~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableService-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableService-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableService)))
  'EnableService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableService)))
  'EnableService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableService)))
  "Returns string type for a service object of type '<EnableService>"
  "concert_msgs/EnableService")