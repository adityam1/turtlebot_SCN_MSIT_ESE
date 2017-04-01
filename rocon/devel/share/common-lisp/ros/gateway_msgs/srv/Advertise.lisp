; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-srv)


;//! \htmlinclude Advertise-request.msg.html

(cl:defclass <Advertise-request> (roslisp-msg-protocol:ros-message)
  ((cancel
    :reader cancel
    :initarg :cancel
    :type cl:boolean
    :initform cl:nil)
   (rules
    :reader rules
    :initarg :rules
    :type (cl:vector gateway_msgs-msg:Rule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:Rule :initial-element (cl:make-instance 'gateway_msgs-msg:Rule))))
)

(cl:defclass Advertise-request (<Advertise-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Advertise-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Advertise-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<Advertise-request> is deprecated: use gateway_msgs-srv:Advertise-request instead.")))

(cl:ensure-generic-function 'cancel-val :lambda-list '(m))
(cl:defmethod cancel-val ((m <Advertise-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:cancel-val is deprecated.  Use gateway_msgs-srv:cancel instead.")
  (cancel m))

(cl:ensure-generic-function 'rules-val :lambda-list '(m))
(cl:defmethod rules-val ((m <Advertise-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:rules-val is deprecated.  Use gateway_msgs-srv:rules instead.")
  (rules m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Advertise-request>) ostream)
  "Serializes a message object of type '<Advertise-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancel) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rules))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rules))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Advertise-request>) istream)
  "Deserializes a message object of type '<Advertise-request>"
    (cl:setf (cl:slot-value msg 'cancel) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rules) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rules)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:Rule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Advertise-request>)))
  "Returns string type for a service object of type '<Advertise-request>"
  "gateway_msgs/AdvertiseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Advertise-request)))
  "Returns string type for a service object of type 'Advertise-request"
  "gateway_msgs/AdvertiseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Advertise-request>)))
  "Returns md5sum for a message object of type '<Advertise-request>"
  "394a2b6787bc0694573ae81a1842f14b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Advertise-request)))
  "Returns md5sum for a message object of type 'Advertise-request"
  "394a2b6787bc0694573ae81a1842f14b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Advertise-request>)))
  "Returns full string definition for message of type '<Advertise-request>"
  (cl:format cl:nil "~%bool cancel~%Rule[] rules~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Advertise-request)))
  "Returns full string definition for message of type 'Advertise-request"
  (cl:format cl:nil "~%bool cancel~%Rule[] rules~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Advertise-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rules) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Advertise-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Advertise-request
    (cl:cons ':cancel (cancel msg))
    (cl:cons ':rules (rules msg))
))
;//! \htmlinclude Advertise-response.msg.html

(cl:defclass <Advertise-response> (roslisp-msg-protocol:ros-message)
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
   (watchlist
    :reader watchlist
    :initarg :watchlist
    :type (cl:vector gateway_msgs-msg:Rule)
   :initform (cl:make-array 0 :element-type 'gateway_msgs-msg:Rule :initial-element (cl:make-instance 'gateway_msgs-msg:Rule))))
)

(cl:defclass Advertise-response (<Advertise-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Advertise-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Advertise-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<Advertise-response> is deprecated: use gateway_msgs-srv:Advertise-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Advertise-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:result-val is deprecated.  Use gateway_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Advertise-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:error_message-val is deprecated.  Use gateway_msgs-srv:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'watchlist-val :lambda-list '(m))
(cl:defmethod watchlist-val ((m <Advertise-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:watchlist-val is deprecated.  Use gateway_msgs-srv:watchlist instead.")
  (watchlist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Advertise-response>) ostream)
  "Serializes a message object of type '<Advertise-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'watchlist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'watchlist))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Advertise-response>) istream)
  "Deserializes a message object of type '<Advertise-response>"
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
  (cl:setf (cl:slot-value msg 'watchlist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'watchlist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gateway_msgs-msg:Rule))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Advertise-response>)))
  "Returns string type for a service object of type '<Advertise-response>"
  "gateway_msgs/AdvertiseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Advertise-response)))
  "Returns string type for a service object of type 'Advertise-response"
  "gateway_msgs/AdvertiseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Advertise-response>)))
  "Returns md5sum for a message object of type '<Advertise-response>"
  "394a2b6787bc0694573ae81a1842f14b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Advertise-response)))
  "Returns md5sum for a message object of type 'Advertise-response"
  "394a2b6787bc0694573ae81a1842f14b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Advertise-response>)))
  "Returns full string definition for message of type '<Advertise-response>"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%Rule[] watchlist~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Advertise-response)))
  "Returns full string definition for message of type 'Advertise-response"
  (cl:format cl:nil "~%~%~%int8 result~%string error_message~%~%Rule[] watchlist~%~%~%================================================================================~%MSG: gateway_msgs/Rule~%# Standard gateway connection rule~%~%# type of connection (from gateway_msgs.msg.Connection)~%string type~%~%# this is the topic/service name or the action base name (a regex is supported)~%string name ~%~%# (optional) an optional node name can be provided. if node name is not provided~%# then all nodes are matched (also supports regex)~%string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Advertise-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'watchlist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Advertise-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Advertise-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':watchlist (watchlist msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Advertise)))
  'Advertise-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Advertise)))
  'Advertise-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Advertise)))
  "Returns string type for a service object of type '<Advertise>"
  "gateway_msgs/Advertise")