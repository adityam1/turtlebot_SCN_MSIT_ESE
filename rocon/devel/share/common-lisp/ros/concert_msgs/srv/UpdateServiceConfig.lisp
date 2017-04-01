; Auto-generated. Do not edit!


(cl:in-package concert_msgs-srv)


;//! \htmlinclude UpdateServiceConfig-request.msg.html

(cl:defclass <UpdateServiceConfig-request> (roslisp-msg-protocol:ros-message)
  ((service_profile
    :reader service_profile
    :initarg :service_profile
    :type concert_msgs-msg:ServiceProfile
    :initform (cl:make-instance 'concert_msgs-msg:ServiceProfile)))
)

(cl:defclass UpdateServiceConfig-request (<UpdateServiceConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateServiceConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateServiceConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-srv:<UpdateServiceConfig-request> is deprecated: use concert_msgs-srv:UpdateServiceConfig-request instead.")))

(cl:ensure-generic-function 'service_profile-val :lambda-list '(m))
(cl:defmethod service_profile-val ((m <UpdateServiceConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:service_profile-val is deprecated.  Use concert_msgs-srv:service_profile instead.")
  (service_profile m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateServiceConfig-request>) ostream)
  "Serializes a message object of type '<UpdateServiceConfig-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'service_profile) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateServiceConfig-request>) istream)
  "Deserializes a message object of type '<UpdateServiceConfig-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'service_profile) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateServiceConfig-request>)))
  "Returns string type for a service object of type '<UpdateServiceConfig-request>"
  "concert_msgs/UpdateServiceConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateServiceConfig-request)))
  "Returns string type for a service object of type 'UpdateServiceConfig-request"
  "concert_msgs/UpdateServiceConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateServiceConfig-request>)))
  "Returns md5sum for a message object of type '<UpdateServiceConfig-request>"
  "c2c38c5e15ad95a99a740e6b43e333e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateServiceConfig-request)))
  "Returns md5sum for a message object of type 'UpdateServiceConfig-request"
  "c2c38c5e15ad95a99a740e6b43e333e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateServiceConfig-request>)))
  "Returns full string definition for message of type '<UpdateServiceConfig-request>"
  (cl:format cl:nil "ServiceProfile service_profile~%~%================================================================================~%MSG: concert_msgs/ServiceProfile~%# Constants - service types~%string TYPE_ROSLAUNCH = roslaunch~%string TYPE_CUSTOM    = custom~%string TYPE_SHADOW    = shadow~%~%# Pre-configured parameters~%string                      resource_name~%string                      name~%string                      description~%string                      author~%uint16                      priority~%rocon_std_msgs/Icon         icon~%string                      launcher_type~%string                      launcher~%string                      interactions~%string                      parameters~%rocon_std_msgs/KeyValue[]   parameters_detail~%~%# Initialised parameters (on startup)~%uuid_msgs/UniqueID          uuid~%~%# Runtime variables~%int16                       status~%bool                        enabled~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateServiceConfig-request)))
  "Returns full string definition for message of type 'UpdateServiceConfig-request"
  (cl:format cl:nil "ServiceProfile service_profile~%~%================================================================================~%MSG: concert_msgs/ServiceProfile~%# Constants - service types~%string TYPE_ROSLAUNCH = roslaunch~%string TYPE_CUSTOM    = custom~%string TYPE_SHADOW    = shadow~%~%# Pre-configured parameters~%string                      resource_name~%string                      name~%string                      description~%string                      author~%uint16                      priority~%rocon_std_msgs/Icon         icon~%string                      launcher_type~%string                      launcher~%string                      interactions~%string                      parameters~%rocon_std_msgs/KeyValue[]   parameters_detail~%~%# Initialised parameters (on startup)~%uuid_msgs/UniqueID          uuid~%~%# Runtime variables~%int16                       status~%bool                        enabled~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateServiceConfig-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'service_profile))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateServiceConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateServiceConfig-request
    (cl:cons ':service_profile (service_profile msg))
))
;//! \htmlinclude UpdateServiceConfig-response.msg.html

(cl:defclass <UpdateServiceConfig-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UpdateServiceConfig-response (<UpdateServiceConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateServiceConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateServiceConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-srv:<UpdateServiceConfig-response> is deprecated: use concert_msgs-srv:UpdateServiceConfig-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateServiceConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:success-val is deprecated.  Use concert_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <UpdateServiceConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-srv:error_message-val is deprecated.  Use concert_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateServiceConfig-response>) ostream)
  "Serializes a message object of type '<UpdateServiceConfig-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateServiceConfig-response>) istream)
  "Deserializes a message object of type '<UpdateServiceConfig-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateServiceConfig-response>)))
  "Returns string type for a service object of type '<UpdateServiceConfig-response>"
  "concert_msgs/UpdateServiceConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateServiceConfig-response)))
  "Returns string type for a service object of type 'UpdateServiceConfig-response"
  "concert_msgs/UpdateServiceConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateServiceConfig-response>)))
  "Returns md5sum for a message object of type '<UpdateServiceConfig-response>"
  "c2c38c5e15ad95a99a740e6b43e333e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateServiceConfig-response)))
  "Returns md5sum for a message object of type 'UpdateServiceConfig-response"
  "c2c38c5e15ad95a99a740e6b43e333e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateServiceConfig-response>)))
  "Returns full string definition for message of type '<UpdateServiceConfig-response>"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateServiceConfig-response)))
  "Returns full string definition for message of type 'UpdateServiceConfig-response"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateServiceConfig-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateServiceConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateServiceConfig-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateServiceConfig)))
  'UpdateServiceConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateServiceConfig)))
  'UpdateServiceConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateServiceConfig)))
  "Returns string type for a service object of type '<UpdateServiceConfig>"
  "concert_msgs/UpdateServiceConfig")