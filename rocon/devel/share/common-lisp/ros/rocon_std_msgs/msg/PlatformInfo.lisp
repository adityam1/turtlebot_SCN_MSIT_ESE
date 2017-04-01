; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-msg)


;//! \htmlinclude PlatformInfo.msg.html

(cl:defclass <PlatformInfo> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform "")
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (icon
    :reader icon
    :initarg :icon
    :type rocon_std_msgs-msg:Icon
    :initform (cl:make-instance 'rocon_std_msgs-msg:Icon)))
)

(cl:defclass PlatformInfo (<PlatformInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlatformInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlatformInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-msg:<PlatformInfo> is deprecated: use rocon_std_msgs-msg:PlatformInfo instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <PlatformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:uri-val is deprecated.  Use rocon_std_msgs-msg:uri instead.")
  (uri m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <PlatformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:version-val is deprecated.  Use rocon_std_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'icon-val :lambda-list '(m))
(cl:defmethod icon-val ((m <PlatformInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:icon-val is deprecated.  Use rocon_std_msgs-msg:icon instead.")
  (icon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlatformInfo>) ostream)
  "Serializes a message object of type '<PlatformInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'icon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlatformInfo>) istream)
  "Deserializes a message object of type '<PlatformInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'icon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlatformInfo>)))
  "Returns string type for a message object of type '<PlatformInfo>"
  "rocon_std_msgs/PlatformInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlatformInfo)))
  "Returns string type for a message object of type 'PlatformInfo"
  "rocon_std_msgs/PlatformInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlatformInfo>)))
  "Returns md5sum for a message object of type '<PlatformInfo>"
  "ffe7bd3c68cda016b708f36a9d12b09e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlatformInfo)))
  "Returns md5sum for a message object of type 'PlatformInfo"
  "ffe7bd3c68cda016b708f36a9d12b09e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlatformInfo>)))
  "Returns full string definition for message of type '<PlatformInfo>"
  (cl:format cl:nil "# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlatformInfo)))
  "Returns full string definition for message of type 'PlatformInfo"
  (cl:format cl:nil "# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlatformInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
     4 (cl:length (cl:slot-value msg 'version))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'icon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlatformInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PlatformInfo
    (cl:cons ':uri (uri msg))
    (cl:cons ':version (version msg))
    (cl:cons ':icon (icon msg))
))
