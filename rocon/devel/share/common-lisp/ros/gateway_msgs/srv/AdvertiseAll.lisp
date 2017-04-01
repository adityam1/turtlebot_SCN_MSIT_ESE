; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-srv)


;//! \htmlinclude AdvertiseAll-request.msg.html

(cl:defclass <AdvertiseAll-request> (roslisp-msg-protocol:ros-message)
  ((cancel
    :reader cancel
    :initarg :cancel
    :type cl:boolean
    :initform cl:nil)
   (blacklist
    :reader blacklist
    :initarg :blacklist
    :type (cl:vector gateway_msgs-msg:Rule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:Rule :initial-element (cl:make-instance 'gateway_msgs-msg:Rule))))
)

(cl:defclass AdvertiseAll-request (<AdvertiseAll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdvertiseAll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdvertiseAll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<AdvertiseAll-request> is deprecated: use gateway_msgs-srv:AdvertiseAll-request instead.")))

(cl:ensure-generic-function 'cancel-val :lambda-list '(m))
(cl:defmethod cancel-val ((m <AdvertiseAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:cancel-val is deprecated.  Use gateway_msgs-srv:cancel instead.")
  (cancel m))

(cl:ensure-generic-function 'blacklist-val :lambda-list '(m))
(cl:defmethod blacklist-val ((m <AdvertiseAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:blacklist-val is deprecated.  Use gateway_msgs-srv:blacklist instead.")
  (blacklist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdvertiseAll-request>) ostream)
  "Serializes a message object of type '<AdvertiseAll-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancel) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blacklist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blacklist))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdvertiseAll-request>) istream)
  "Deserializes a message object of type '<AdvertiseAll-request>"
    (cl:setf (cl:slot-value msg 'cancel) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blacklist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blacklist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:Rule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdvertiseAll-request>)))
  "Returns string type for a service object of type '<AdvertiseAll-request>"
  "gateway_msgs/AdvertiseAllRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvertiseAll-request)))
  "Returns string type for a service object of type 'AdvertiseAll-request"
  "gateway_msgs/AdvertiseAllRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdvertiseAll-request>)))
  "Returns md5sum for a message object of type '<AdvertiseAll-request>"
  "51a5c6982ba636b1397142aab7eb86e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdvertiseAll-request)))
  "Returns md5sum for a message object of type 'AdvertiseAll-request"
  "51a5c6982ba636b1397142aab7eb86e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdvertiseAll-request>)))
  "Returns full string definition for message of type '<AdvertiseAll-request>"
  (cl:format cl:nil "~%bool cancel~%Rule[] blacklist~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdvertiseAll-request)))
  "Returns full string definition for message of type 'AdvertiseAll-request"
  (cl:format cl:nil "~%bool cancel~%Rule[] blacklist~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdvertiseAll-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blacklist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdvertiseAll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AdvertiseAll-request
    (cl:cons ':cancel (cancel msg))
    (cl:cons ':blacklist (blacklist msg))
))
;//! \htmlinclude AdvertiseAll-response.msg.html

(cl:defclass <AdvertiseAll-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform "")
   (blacklist
    :reader blacklist
    :initarg :blacklist
    :type (cl:vector gateway_msgs-msg:Rule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:Rule :initial-element (cl:make-instance 'gateway_msgs-msg:Rule))))
)

(cl:defclass AdvertiseAll-response (<AdvertiseAll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdvertiseAll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdvertiseAll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<AdvertiseAll-response> is deprecated: use gateway_msgs-srv:AdvertiseAll-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AdvertiseAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:result-val is deprecated.  Use gateway_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <AdvertiseAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:error_message-val is deprecated.  Use gateway_msgs-srv:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'blacklist-val :lambda-list '(m))
(cl:defmethod blacklist-val ((m <AdvertiseAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:blacklist-val is deprecated.  Use gateway_msgs-srv:blacklist instead.")
  (blacklist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdvertiseAll-response>) ostream)
  "Serializes a message object of type '<AdvertiseAll-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blacklist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blacklist))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdvertiseAll-response>) istream)
  "Deserializes a message object of type '<AdvertiseAll-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blacklist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blacklist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:Rule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdvertiseAll-response>)))
  "Returns string type for a service object of type '<AdvertiseAll-response>"
  "gateway_msgs/AdvertiseAllResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvertiseAll-response)))
  "Returns string type for a service object of type 'AdvertiseAll-response"
  "gateway_msgs/AdvertiseAllResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdvertiseAll-response>)))
  "Returns md5sum for a message object of type '<AdvertiseAll-response>"
  "51a5c6982ba636b1397142aab7eb86e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdvertiseAll-response)))
  "Returns md5sum for a message object of type 'AdvertiseAll-response"
  "51a5c6982ba636b1397142aab7eb86e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdvertiseAll-response>)))
  "Returns full string definition for message of type '<AdvertiseAll-response>"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%Rule[] blacklist~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdvertiseAll-response)))
  "Returns full string definition for message of type 'AdvertiseAll-response"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%Rule[] blacklist~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdvertiseAll-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blacklist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdvertiseAll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AdvertiseAll-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':blacklist (blacklist msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AdvertiseAll)))
  'AdvertiseAll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AdvertiseAll)))
  'AdvertiseAll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdvertiseAll)))
  "Returns string type for a service object of type '<AdvertiseAll>"
  "gateway_msgs/AdvertiseAll")