; Auto-generated. Do not edit!


(cl:in-package rocon_tutorial_msgs-srv)


;//! \htmlinclude GetAvailableResources-request.msg.html

(cl:defclass <GetAvailableResources-request> (roslisp-msg-protocol:ros-message)
  ((rapp
    :reader rapp
    :initarg :rapp
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetAvailableResources-request (<GetAvailableResources-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAvailableResources-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAvailableResources-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_tutorial_msgs-srv:<GetAvailableResources-request> is deprecated: use rocon_tutorial_msgs-srv:GetAvailableResources-request instead.")))

(cl:ensure-generic-function 'rapp-val :lambda-list '(m))
(cl:defmethod rapp-val ((m <GetAvailableResources-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_tutorial_msgs-srv:rapp-val is deprecated.  Use rocon_tutorial_msgs-srv:rapp instead.")
  (rapp m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <GetAvailableResources-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_tutorial_msgs-srv:priority-val is deprecated.  Use rocon_tutorial_msgs-srv:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAvailableResources-request>) ostream)
  "Serializes a message object of type '<GetAvailableResources-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rapp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rapp))
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAvailableResources-request>) istream)
  "Deserializes a message object of type '<GetAvailableResources-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rapp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rapp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAvailableResources-request>)))
  "Returns string type for a service object of type '<GetAvailableResources-request>"
  "rocon_tutorial_msgs/GetAvailableResourcesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvailableResources-request)))
  "Returns string type for a service object of type 'GetAvailableResources-request"
  "rocon_tutorial_msgs/GetAvailableResourcesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAvailableResources-request>)))
  "Returns md5sum for a message object of type '<GetAvailableResources-request>"
  "b8917c59e7f27df2ec9f8142cd23fade")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAvailableResources-request)))
  "Returns md5sum for a message object of type 'GetAvailableResources-request"
  "b8917c59e7f27df2ec9f8142cd23fade")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAvailableResources-request>)))
  "Returns full string definition for message of type '<GetAvailableResources-request>"
  (cl:format cl:nil "string rapp~%int16 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAvailableResources-request)))
  "Returns full string definition for message of type 'GetAvailableResources-request"
  (cl:format cl:nil "string rapp~%int16 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAvailableResources-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rapp))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAvailableResources-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAvailableResources-request
    (cl:cons ':rapp (rapp msg))
    (cl:cons ':priority (priority msg))
))
;//! \htmlinclude GetAvailableResources-response.msg.html

(cl:defclass <GetAvailableResources-response> (roslisp-msg-protocol:ros-message)
  ((available_resources
    :reader available_resources
    :initarg :available_resources
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (preemptible_resources
    :reader preemptible_resources
    :initarg :preemptible_resources
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetAvailableResources-response (<GetAvailableResources-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAvailableResources-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAvailableResources-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_tutorial_msgs-srv:<GetAvailableResources-response> is deprecated: use rocon_tutorial_msgs-srv:GetAvailableResources-response instead.")))

(cl:ensure-generic-function 'available_resources-val :lambda-list '(m))
(cl:defmethod available_resources-val ((m <GetAvailableResources-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_tutorial_msgs-srv:available_resources-val is deprecated.  Use rocon_tutorial_msgs-srv:available_resources instead.")
  (available_resources m))

(cl:ensure-generic-function 'preemptible_resources-val :lambda-list '(m))
(cl:defmethod preemptible_resources-val ((m <GetAvailableResources-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_tutorial_msgs-srv:preemptible_resources-val is deprecated.  Use rocon_tutorial_msgs-srv:preemptible_resources instead.")
  (preemptible_resources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAvailableResources-response>) ostream)
  "Serializes a message object of type '<GetAvailableResources-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_resources))))
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
   (cl:slot-value msg 'available_resources))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'preemptible_resources))))
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
   (cl:slot-value msg 'preemptible_resources))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAvailableResources-response>) istream)
  "Deserializes a message object of type '<GetAvailableResources-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available_resources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_resources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'preemptible_resources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'preemptible_resources)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAvailableResources-response>)))
  "Returns string type for a service object of type '<GetAvailableResources-response>"
  "rocon_tutorial_msgs/GetAvailableResourcesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvailableResources-response)))
  "Returns string type for a service object of type 'GetAvailableResources-response"
  "rocon_tutorial_msgs/GetAvailableResourcesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAvailableResources-response>)))
  "Returns md5sum for a message object of type '<GetAvailableResources-response>"
  "b8917c59e7f27df2ec9f8142cd23fade")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAvailableResources-response)))
  "Returns md5sum for a message object of type 'GetAvailableResources-response"
  "b8917c59e7f27df2ec9f8142cd23fade")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAvailableResources-response>)))
  "Returns full string definition for message of type '<GetAvailableResources-response>"
  (cl:format cl:nil "string[] available_resources~%string[] preemptible_resources~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAvailableResources-response)))
  "Returns full string definition for message of type 'GetAvailableResources-response"
  (cl:format cl:nil "string[] available_resources~%string[] preemptible_resources~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAvailableResources-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_resources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'preemptible_resources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAvailableResources-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAvailableResources-response
    (cl:cons ':available_resources (available_resources msg))
    (cl:cons ':preemptible_resources (preemptible_resources msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAvailableResources)))
  'GetAvailableResources-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAvailableResources)))
  'GetAvailableResources-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvailableResources)))
  "Returns string type for a service object of type '<GetAvailableResources>"
  "rocon_tutorial_msgs/GetAvailableResources")