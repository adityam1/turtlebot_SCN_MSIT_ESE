; Auto-generated. Do not edit!


(cl:in-package rocon_service_pair_msgs-msg)


;//! \htmlinclude TestiesRequest.msg.html

(cl:defclass <TestiesRequest> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass TestiesRequest (<TestiesRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestiesRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestiesRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_service_pair_msgs-msg:<TestiesRequest> is deprecated: use rocon_service_pair_msgs-msg:TestiesRequest instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestiesRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_service_pair_msgs-msg:data-val is deprecated.  Use rocon_service_pair_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestiesRequest>) ostream)
  "Serializes a message object of type '<TestiesRequest>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestiesRequest>) istream)
  "Deserializes a message object of type '<TestiesRequest>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestiesRequest>)))
  "Returns string type for a message object of type '<TestiesRequest>"
  "rocon_service_pair_msgs/TestiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestiesRequest)))
  "Returns string type for a message object of type 'TestiesRequest"
  "rocon_service_pair_msgs/TestiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestiesRequest>)))
  "Returns md5sum for a message object of type '<TestiesRequest>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestiesRequest)))
  "Returns md5sum for a message object of type 'TestiesRequest"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestiesRequest>)))
  "Returns full string definition for message of type '<TestiesRequest>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestiesRequest)))
  "Returns full string definition for message of type 'TestiesRequest"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestiesRequest>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestiesRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'TestiesRequest
    (cl:cons ':data (data msg))
))
