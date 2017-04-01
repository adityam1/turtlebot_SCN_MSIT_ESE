; Auto-generated. Do not edit!


(cl:in-package gateway_msgs-srv)


;//! \htmlinclude SetWatcherPeriod-request.msg.html

(cl:defclass <SetWatcherPeriod-request> (roslisp-msg-protocol:ros-message)
  ((period
    :reader period
    :initarg :period
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetWatcherPeriod-request (<SetWatcherPeriod-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWatcherPeriod-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWatcherPeriod-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<SetWatcherPeriod-request> is deprecated: use gateway_msgs-srv:SetWatcherPeriod-request instead.")))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <SetWatcherPeriod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:period-val is deprecated.  Use gateway_msgs-srv:period instead.")
  (period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWatcherPeriod-request>) ostream)
  "Serializes a message object of type '<SetWatcherPeriod-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWatcherPeriod-request>) istream)
  "Deserializes a message object of type '<SetWatcherPeriod-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWatcherPeriod-request>)))
  "Returns string type for a service object of type '<SetWatcherPeriod-request>"
  "gateway_msgs/SetWatcherPeriodRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWatcherPeriod-request)))
  "Returns string type for a service object of type 'SetWatcherPeriod-request"
  "gateway_msgs/SetWatcherPeriodRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWatcherPeriod-request>)))
  "Returns md5sum for a message object of type '<SetWatcherPeriod-request>"
  "48c82bd734fbc66058cd96447a09fe59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWatcherPeriod-request)))
  "Returns md5sum for a message object of type 'SetWatcherPeriod-request"
  "48c82bd734fbc66058cd96447a09fe59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWatcherPeriod-request>)))
  "Returns full string definition for message of type '<SetWatcherPeriod-request>"
  (cl:format cl:nil "~%~%float32 period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWatcherPeriod-request)))
  "Returns full string definition for message of type 'SetWatcherPeriod-request"
  (cl:format cl:nil "~%~%float32 period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWatcherPeriod-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWatcherPeriod-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWatcherPeriod-request
    (cl:cons ':period (period msg))
))
;//! \htmlinclude SetWatcherPeriod-response.msg.html

(cl:defclass <SetWatcherPeriod-response> (roslisp-msg-protocol:ros-message)
  ((last_period
    :reader last_period
    :initarg :last_period
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetWatcherPeriod-response (<SetWatcherPeriod-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWatcherPeriod-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWatcherPeriod-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gateway_msgs-srv:<SetWatcherPeriod-response> is deprecated: use gateway_msgs-srv:SetWatcherPeriod-response instead.")))

(cl:ensure-generic-function 'last_period-val :lambda-list '(m))
(cl:defmethod last_period-val ((m <SetWatcherPeriod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gateway_msgs-srv:last_period-val is deprecated.  Use gateway_msgs-srv:last_period instead.")
  (last_period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWatcherPeriod-response>) ostream)
  "Serializes a message object of type '<SetWatcherPeriod-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'last_period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWatcherPeriod-response>) istream)
  "Deserializes a message object of type '<SetWatcherPeriod-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_period) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWatcherPeriod-response>)))
  "Returns string type for a service object of type '<SetWatcherPeriod-response>"
  "gateway_msgs/SetWatcherPeriodResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWatcherPeriod-response)))
  "Returns string type for a service object of type 'SetWatcherPeriod-response"
  "gateway_msgs/SetWatcherPeriodResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWatcherPeriod-response>)))
  "Returns md5sum for a message object of type '<SetWatcherPeriod-response>"
  "48c82bd734fbc66058cd96447a09fe59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWatcherPeriod-response)))
  "Returns md5sum for a message object of type 'SetWatcherPeriod-response"
  "48c82bd734fbc66058cd96447a09fe59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWatcherPeriod-response>)))
  "Returns full string definition for message of type '<SetWatcherPeriod-response>"
  (cl:format cl:nil "~%float32 last_period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWatcherPeriod-response)))
  "Returns full string definition for message of type 'SetWatcherPeriod-response"
  (cl:format cl:nil "~%float32 last_period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWatcherPeriod-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWatcherPeriod-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWatcherPeriod-response
    (cl:cons ':last_period (last_period msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWatcherPeriod)))
  'SetWatcherPeriod-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWatcherPeriod)))
  'SetWatcherPeriod-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWatcherPeriod)))
  "Returns string type for a service object of type '<SetWatcherPeriod>"
  "gateway_msgs/SetWatcherPeriod")