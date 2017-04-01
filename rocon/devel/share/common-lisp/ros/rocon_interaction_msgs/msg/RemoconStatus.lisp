; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude RemoconStatus.msg.html

(cl:defclass <RemoconStatus> (roslisp-msg-protocol:ros-message)
  ((platform_info
    :reader platform_info
    :initarg :platform_info
    :type rocon_std_msgs-msg:PlatformInfo
    :initform (cl:make-instance 'rocon_std_msgs-msg:PlatformInfo))
   (uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform "")
   (running_interactions
    :reader running_interactions
    :initarg :running_interactions
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform ""))
)

(cl:defclass RemoconStatus (<RemoconStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoconStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoconStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<RemoconStatus> is deprecated: use rocon_interaction_msgs-msg:RemoconStatus instead.")))

(cl:ensure-generic-function 'platform_info-val :lambda-list '(m))
(cl:defmethod platform_info-val ((m <RemoconStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:platform_info-val is deprecated.  Use rocon_interaction_msgs-msg:platform_info instead.")
  (platform_info m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <RemoconStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:uuid-val is deprecated.  Use rocon_interaction_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'running_interactions-val :lambda-list '(m))
(cl:defmethod running_interactions-val ((m <RemoconStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:running_interactions-val is deprecated.  Use rocon_interaction_msgs-msg:running_interactions instead.")
  (running_interactions m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <RemoconStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:version-val is deprecated.  Use rocon_interaction_msgs-msg:version instead.")
  (version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoconStatus>) ostream)
  "Serializes a message object of type '<RemoconStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'platform_info) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'running_interactions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'running_interactions))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoconStatus>) istream)
  "Deserializes a message object of type '<RemoconStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'platform_info) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'running_interactions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'running_interactions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoconStatus>)))
  "Returns string type for a message object of type '<RemoconStatus>"
  "rocon_interaction_msgs/RemoconStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoconStatus)))
  "Returns string type for a message object of type 'RemoconStatus"
  "rocon_interaction_msgs/RemoconStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoconStatus>)))
  "Returns md5sum for a message object of type '<RemoconStatus>"
  "c7efa16bc8273de65267b6c5877e7d5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoconStatus)))
  "Returns md5sum for a message object of type 'RemoconStatus"
  "c7efa16bc8273de65267b6c5877e7d5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoconStatus>)))
  "Returns full string definition for message of type '<RemoconStatus>"
  (cl:format cl:nil "# Used by the remocons to inform the concert of it's current status. They should~%# publish this as a latched publisher.~%~%rocon_std_msgs/PlatformInfo platform_info~%# The remocon id~%# This should be a '32 character Type 4 uuid hex string'~%string uuid~%~%~%# We should be using this, but java can't handle the type, reintegrate when we bugfix.~%# uuid_msgs/UniqueID[] running_interactions~%~%# This is a crc32 hash code we use because of the above.~%int32[] running_interactions~%~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoconStatus)))
  "Returns full string definition for message of type 'RemoconStatus"
  (cl:format cl:nil "# Used by the remocons to inform the concert of it's current status. They should~%# publish this as a latched publisher.~%~%rocon_std_msgs/PlatformInfo platform_info~%# The remocon id~%# This should be a '32 character Type 4 uuid hex string'~%string uuid~%~%~%# We should be using this, but java can't handle the type, reintegrate when we bugfix.~%# uuid_msgs/UniqueID[] running_interactions~%~%# This is a crc32 hash code we use because of the above.~%int32[] running_interactions~%~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%~%================================================================================~%MSG: rocon_std_msgs/PlatformInfo~%# Provides platform details for robots, software or human~%# interactive devices.~%~%########################### Variables ###########################~%~%# rocon universal resource identifier~%string uri~%# rocon version compatibility identifier (used when connecting to concerts)~%string version~%Icon icon~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoconStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'platform_info))
     4 (cl:length (cl:slot-value msg 'uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'running_interactions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoconStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoconStatus
    (cl:cons ':platform_info (platform_info msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':running_interactions (running_interactions msg))
    (cl:cons ':version (version msg))
))
