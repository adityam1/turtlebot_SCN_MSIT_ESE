; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude Services.msg.html

(cl:defclass <Services> (roslisp-msg-protocol:ros-message)
  ((services
    :reader services
    :initarg :services
    :type (cl:vector concert_msgs-msg:ServiceProfile)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ServiceProfile :initial-element (cl:make-instance 'concert_msgs-msg:ServiceProfile))))
)

(cl:defclass Services (<Services>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Services>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Services)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<Services> is deprecated: use concert_msgs-msg:Services instead.")))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <Services>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:services-val is deprecated.  Use concert_msgs-msg:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Services>) ostream)
  "Serializes a message object of type '<Services>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'services))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Services>) istream)
  "Deserializes a message object of type '<Services>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ServiceProfile))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Services>)))
  "Returns string type for a message object of type '<Services>"
  "concert_msgs/Services")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Services)))
  "Returns string type for a message object of type 'Services"
  "concert_msgs/Services")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Services>)))
  "Returns md5sum for a message object of type '<Services>"
  "385406088e57b4886d05051733612cb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Services)))
  "Returns md5sum for a message object of type 'Services"
  "385406088e57b4886d05051733612cb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Services>)))
  "Returns full string definition for message of type '<Services>"
  (cl:format cl:nil "ServiceProfile[] services~%~%================================================================================~%MSG: concert_msgs/ServiceProfile~%# Constants - service types~%string TYPE_ROSLAUNCH = roslaunch~%string TYPE_CUSTOM    = custom~%string TYPE_SHADOW    = shadow~%~%# Pre-configured parameters~%string                      resource_name~%string                      name~%string                      description~%string                      author~%uint16                      priority~%rocon_std_msgs/Icon         icon~%string                      launcher_type~%string                      launcher~%string                      interactions~%string                      parameters~%rocon_std_msgs/KeyValue[]   parameters_detail~%~%# Initialised parameters (on startup)~%uuid_msgs/UniqueID          uuid~%~%# Runtime variables~%int16                       status~%bool                        enabled~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Services)))
  "Returns full string definition for message of type 'Services"
  (cl:format cl:nil "ServiceProfile[] services~%~%================================================================================~%MSG: concert_msgs/ServiceProfile~%# Constants - service types~%string TYPE_ROSLAUNCH = roslaunch~%string TYPE_CUSTOM    = custom~%string TYPE_SHADOW    = shadow~%~%# Pre-configured parameters~%string                      resource_name~%string                      name~%string                      description~%string                      author~%uint16                      priority~%rocon_std_msgs/Icon         icon~%string                      launcher_type~%string                      launcher~%string                      interactions~%string                      parameters~%rocon_std_msgs/KeyValue[]   parameters_detail~%~%# Initialised parameters (on startup)~%uuid_msgs/UniqueID          uuid~%~%# Runtime variables~%int16                       status~%bool                        enabled~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Services>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Services>))
  "Converts a ROS message object to a list"
  (cl:list 'Services
    (cl:cons ':services (services msg))
))
