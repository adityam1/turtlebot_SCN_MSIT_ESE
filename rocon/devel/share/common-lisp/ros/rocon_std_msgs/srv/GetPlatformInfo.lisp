; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-srv)


;//! \htmlinclude GetPlatformInfo-request.msg.html

(cl:defclass <GetPlatformInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPlatformInfo-request (<GetPlatformInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlatformInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlatformInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-srv:<GetPlatformInfo-request> is deprecated: use rocon_std_msgs-srv:GetPlatformInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlatformInfo-request>) ostream)
  "Serializes a message object of type '<GetPlatformInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlatformInfo-request>) istream)
  "Deserializes a message object of type '<GetPlatformInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlatformInfo-request>)))
  "Returns string type for a service object of type '<GetPlatformInfo-request>"
  "rocon_std_msgs/GetPlatformInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlatformInfo-request)))
  "Returns string type for a service object of type 'GetPlatformInfo-request"
  "rocon_std_msgs/GetPlatformInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlatformInfo-request>)))
  "Returns md5sum for a message object of type '<GetPlatformInfo-request>"
  "b7b34c89d857c757ff89bd8e49fa695f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlatformInfo-request)))
  "Returns md5sum for a message object of type 'GetPlatformInfo-request"
  "b7b34c89d857c757ff89bd8e49fa695f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlatformInfo-request>)))
  "Returns full string definition for message of type '<GetPlatformInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlatformInfo-request)))
  "Returns full string definition for message of type 'GetPlatformInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlatformInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlatformInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlatformInfo-request
))
;//! \htmlinclude GetPlatformInfo-response.msg.html

(cl:defclass <GetPlatformInfo-response> (roslisp-msg-protocol:ros-message)
  ((platform_info
    :reader platform_info
    :initarg :platform_info
    :type rocon_std_msgs-msg:PlatformInfo
    :initform (cl:make-instance 'rocon_std_msgs-msg:PlatformInfo)))
)

(cl:defclass GetPlatformInfo-response (<GetPlatformInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlatformInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlatformInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-srv:<GetPlatformInfo-response> is deprecated: use rocon_std_msgs-srv:GetPlatformInfo-response instead.")))

(cl:ensure-generic-function 'platform_info-val :lambda-list '(m))
(cl:defmethod platform_info-val ((m <GetPlatformInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-srv:platform_info-val is deprecated.  Use rocon_std_msgs-srv:platform_info instead.")
  (platform_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlatformInfo-response>) ostream)
  "Serializes a message object of type '<GetPlatformInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'platform_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlatformInfo-response>) istream)
  "Deserializes a message object of type '<GetPlatformInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'platform_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlatformInfo-response>)))
  "Returns string type for a service object of type '<GetPlatformInfo-response>"
  "rocon_std_msgs/GetPlatformInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlatformInfo-response)))
  "Returns string type for a service object of type 'GetPlatformInfo-response"
  "rocon_std_msgs/GetPlatformInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlatformInfo-response>)))
  "Returns md5sum for a message object of type '<GetPlatformInfo-response>"
  "b7b34c89d857c757ff89bd8e49fa695f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlatformInfo-response)))
  "Returns md5sum for a message object of type 'GetPlatformInfo-response"
  "b7b34c89d857c757ff89bd8e49fa695f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlatformInfo-response>)))
  "Returns full string definition for message of type '<GetPlatformInfo-response>"
  (cl:format cl:nil "PlatformInfo platform_info~%~%~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlatformInfo-response)))
  "Returns full string definition for message of type 'GetPlatformInfo-response"
  (cl:format cl:nil "PlatformInfo platform_info~%~%~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlatformInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'platform_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlatformInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlatformInfo-response
    (cl:cons ':platform_info (platform_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPlatformInfo)))
  'GetPlatformInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPlatformInfo)))
  'GetPlatformInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlatformInfo)))
  "Returns string type for a service object of type '<GetPlatformInfo>"
  "rocon_std_msgs/GetPlatformInfo")