; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude SoftwareInstances.msg.html

(cl:defclass <SoftwareInstances> (roslisp-msg-protocol:ros-message)
  ((instances
    :reader instances
    :initarg :instances
    :type (cl:vector concert_msgs-msg:SoftwareInstance)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:SoftwareInstance :initial-element (cl:make-instance 'concert_msgs-msg:SoftwareInstance))))
)

(cl:defclass SoftwareInstances (<SoftwareInstances>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoftwareInstances>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoftwareInstances)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<SoftwareInstances> is deprecated: use concert_msgs-msg:SoftwareInstances instead.")))

(cl:ensure-generic-function 'instances-val :lambda-list '(m))
(cl:defmethod instances-val ((m <SoftwareInstances>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:instances-val is deprecated.  Use concert_msgs-msg:instances instead.")
  (instances m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoftwareInstances>) ostream)
  "Serializes a message object of type '<SoftwareInstances>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'instances))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'instances))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoftwareInstances>) istream)
  "Deserializes a message object of type '<SoftwareInstances>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'instances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'instances)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:SoftwareInstance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoftwareInstances>)))
  "Returns string type for a message object of type '<SoftwareInstances>"
  "concert_msgs/SoftwareInstances")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoftwareInstances)))
  "Returns string type for a message object of type 'SoftwareInstances"
  "concert_msgs/SoftwareInstances")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoftwareInstances>)))
  "Returns md5sum for a message object of type '<SoftwareInstances>"
  "3db13b2ea7c2b945782f742cf7b4ac03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoftwareInstances)))
  "Returns md5sum for a message object of type 'SoftwareInstances"
  "3db13b2ea7c2b945782f742cf7b4ac03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoftwareInstances>)))
  "Returns full string definition for message of type '<SoftwareInstances>"
  (cl:format cl:nil "SoftwareInstance[] instances~%~%================================================================================~%MSG: concert_msgs/SoftwareInstance~%# Runtime~%string  resource_name~%string  name~%~%int16   max_count~%string  namespace~%string[] users~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoftwareInstances)))
  "Returns full string definition for message of type 'SoftwareInstances"
  (cl:format cl:nil "SoftwareInstance[] instances~%~%================================================================================~%MSG: concert_msgs/SoftwareInstance~%# Runtime~%string  resource_name~%string  name~%~%int16   max_count~%string  namespace~%string[] users~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoftwareInstances>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'instances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoftwareInstances>))
  "Converts a ROS message object to a list"
  (cl:list 'SoftwareInstances
    (cl:cons ':instances (instances msg))
))
