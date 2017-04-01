; Auto-generated. Do not edit!


(cl:in-package rocon_app_manager_msgs-srv)


;//! \htmlinclude GetRappList-request.msg.html

(cl:defclass <GetRappList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRappList-request (<GetRappList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRappList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRappList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<GetRappList-request> is deprecated: use rocon_app_manager_msgs-srv:GetRappList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRappList-request>) ostream)
  "Serializes a message object of type '<GetRappList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRappList-request>) istream)
  "Deserializes a message object of type '<GetRappList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRappList-request>)))
  "Returns string type for a service object of type '<GetRappList-request>"
  "rocon_app_manager_msgs/GetRappListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRappList-request)))
  "Returns string type for a service object of type 'GetRappList-request"
  "rocon_app_manager_msgs/GetRappListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRappList-request>)))
  "Returns md5sum for a message object of type '<GetRappList-request>"
  "68cf30e80880962b92b2794f1f078c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRappList-request)))
  "Returns md5sum for a message object of type 'GetRappList-request"
  "68cf30e80880962b92b2794f1f078c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRappList-request>)))
  "Returns full string definition for message of type '<GetRappList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRappList-request)))
  "Returns full string definition for message of type 'GetRappList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRappList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRappList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRappList-request
))
;//! \htmlinclude GetRappList-response.msg.html

(cl:defclass <GetRappList-response> (roslisp-msg-protocol:ros-message)
  ((available_rapps
    :reader available_rapps
    :initarg :available_rapps
    :type (cl:vector rocon_app_manager_msgs-msg:Rapp)
   :initform (cl:make-array 0 :element-type 'rocon_app_manager_msgs-msg:Rapp :initial-element (cl:make-instance 'rocon_app_manager_msgs-msg:Rapp)))
   (running_rapps
    :reader running_rapps
    :initarg :running_rapps
    :type (cl:vector rocon_app_manager_msgs-msg:Rapp)
   :initform (cl:make-array 0 :element-type 'rocon_app_manager_msgs-msg:Rapp :initial-element (cl:make-instance 'rocon_app_manager_msgs-msg:Rapp))))
)

(cl:defclass GetRappList-response (<GetRappList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRappList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRappList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_app_manager_msgs-srv:<GetRappList-response> is deprecated: use rocon_app_manager_msgs-srv:GetRappList-response instead.")))

(cl:ensure-generic-function 'available_rapps-val :lambda-list '(m))
(cl:defmethod available_rapps-val ((m <GetRappList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:available_rapps-val is deprecated.  Use rocon_app_manager_msgs-srv:available_rapps instead.")
  (available_rapps m))

(cl:ensure-generic-function 'running_rapps-val :lambda-list '(m))
(cl:defmethod running_rapps-val ((m <GetRappList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_app_manager_msgs-srv:running_rapps-val is deprecated.  Use rocon_app_manager_msgs-srv:running_rapps instead.")
  (running_rapps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRappList-response>) ostream)
  "Serializes a message object of type '<GetRappList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_rapps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'available_rapps))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'running_rapps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'running_rapps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRappList-response>) istream)
  "Deserializes a message object of type '<GetRappList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available_rapps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_rapps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_app_manager_msgs-msg:Rapp))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'running_rapps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'running_rapps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_app_manager_msgs-msg:Rapp))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRappList-response>)))
  "Returns string type for a service object of type '<GetRappList-response>"
  "rocon_app_manager_msgs/GetRappListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRappList-response)))
  "Returns string type for a service object of type 'GetRappList-response"
  "rocon_app_manager_msgs/GetRappListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRappList-response>)))
  "Returns md5sum for a message object of type '<GetRappList-response>"
  "68cf30e80880962b92b2794f1f078c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRappList-response)))
  "Returns md5sum for a message object of type 'GetRappList-response"
  "68cf30e80880962b92b2794f1f078c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRappList-response>)))
  "Returns full string definition for message of type '<GetRappList-response>"
  (cl:format cl:nil "Rapp[] available_rapps~%Rapp[] running_rapps~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRappList-response)))
  "Returns full string definition for message of type 'GetRappList-response"
  (cl:format cl:nil "Rapp[] available_rapps~%Rapp[] running_rapps~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRappList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_rapps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'running_rapps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRappList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRappList-response
    (cl:cons ':available_rapps (available_rapps msg))
    (cl:cons ':running_rapps (running_rapps msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRappList)))
  'GetRappList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRappList)))
  'GetRappList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRappList)))
  "Returns string type for a service object of type '<GetRappList>"
  "rocon_app_manager_msgs/GetRappList")