; Auto-generated. Do not edit!


(cl:in-package scheduler_msgs-msg)


;//! \htmlinclude KnownResources.msg.html

(cl:defclass <KnownResources> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (resources
    :reader resources
    :initarg :resources
    :type (cl:vector scheduler_msgs-msg:CurrentStatus)
   :initform (cl:make-array 0 :element-type 'scheduler_msgs-msg:CurrentStatus :initial-element (cl:make-instance 'scheduler_msgs-msg:CurrentStatus))))
)

(cl:defclass KnownResources (<KnownResources>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KnownResources>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KnownResources)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scheduler_msgs-msg:<KnownResources> is deprecated: use scheduler_msgs-msg:KnownResources instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KnownResources>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:header-val is deprecated.  Use scheduler_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'resources-val :lambda-list '(m))
(cl:defmethod resources-val ((m <KnownResources>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:resources-val is deprecated.  Use scheduler_msgs-msg:resources instead.")
  (resources m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KnownResources>) ostream)
  "Serializes a message object of type '<KnownResources>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'resources))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KnownResources>) istream)
  "Deserializes a message object of type '<KnownResources>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'scheduler_msgs-msg:CurrentStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KnownResources>)))
  "Returns string type for a message object of type '<KnownResources>"
  "scheduler_msgs/KnownResources")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KnownResources)))
  "Returns string type for a message object of type 'KnownResources"
  "scheduler_msgs/KnownResources")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KnownResources>)))
  "Returns md5sum for a message object of type '<KnownResources>"
  "d3e12e9eddf5fe98089b8d550ce49151")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KnownResources)))
  "Returns md5sum for a message object of type 'KnownResources"
  "d3e12e9eddf5fe98089b8d550ce49151")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KnownResources>)))
  "Returns full string definition for message of type '<KnownResources>"
  (cl:format cl:nil "### Known resources.~%#~%#   A ROCON scheduler uses this message to report the status of all~%#   the resources it knows about and manages.~%#~%Header header                   # Time of this status, frame_id irrelevant~%CurrentStatus[] resources       # Status of every currently-known resource~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: scheduler_msgs/CurrentStatus~%### ROCON resource current status.~%#~%#   A ROCON scheduler uses this message to report the status of each~%#   resource it manages.~%#~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%#   A canonical ROCON Uniform Resource Identifier describing this~%#   resource, a fully-resolved character string in the form:~%#~%#      rocon:/platform/name/framework/os~%#~%string uri~%~%##############################################################################~%# Status~%##############################################################################~%~%uint8 status            # Current status of this resource~%~%#  Status value labels:~%uint8 AVAILABLE   = 0   # Available for use~%uint8 ALLOCATED   = 1   # Allocated to some ROCON request~%uint8 MISSING     = 2   # Not currently responding~%uint8 GONE        = 3   # Has left the concert (cleanly)~%~%#   The owner is the unique identifier of the Request message to which~%#   this resource is currently assigned, or a zero UUID if it is not~%#   assigned.  An AVAILABLE resource never has an owner, but a MISSING~%#   one might.~%uuid_msgs/UniqueID owner~%~%#   The priority of an ALLOCATED resource is the priority of its~%#   owning request.  An AVAILABLE resource never has a non-zero~%#   priority, but a MISSING one might.~%int16 priority~%~%#   List of ROCON application names currently available with this~%#   resource. The name string is usually a ROS \"package/node\"~%#   identifier, unique because ROS package names are unique.  The~%#   contents of this list could change over time due to the device's~%#   own activities.~%string[] rapps~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KnownResources)))
  "Returns full string definition for message of type 'KnownResources"
  (cl:format cl:nil "### Known resources.~%#~%#   A ROCON scheduler uses this message to report the status of all~%#   the resources it knows about and manages.~%#~%Header header                   # Time of this status, frame_id irrelevant~%CurrentStatus[] resources       # Status of every currently-known resource~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: scheduler_msgs/CurrentStatus~%### ROCON resource current status.~%#~%#   A ROCON scheduler uses this message to report the status of each~%#   resource it manages.~%#~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%#   A canonical ROCON Uniform Resource Identifier describing this~%#   resource, a fully-resolved character string in the form:~%#~%#      rocon:/platform/name/framework/os~%#~%string uri~%~%##############################################################################~%# Status~%##############################################################################~%~%uint8 status            # Current status of this resource~%~%#  Status value labels:~%uint8 AVAILABLE   = 0   # Available for use~%uint8 ALLOCATED   = 1   # Allocated to some ROCON request~%uint8 MISSING     = 2   # Not currently responding~%uint8 GONE        = 3   # Has left the concert (cleanly)~%~%#   The owner is the unique identifier of the Request message to which~%#   this resource is currently assigned, or a zero UUID if it is not~%#   assigned.  An AVAILABLE resource never has an owner, but a MISSING~%#   one might.~%uuid_msgs/UniqueID owner~%~%#   The priority of an ALLOCATED resource is the priority of its~%#   owning request.  An AVAILABLE resource never has a non-zero~%#   priority, but a MISSING one might.~%int16 priority~%~%#   List of ROCON application names currently available with this~%#   resource. The name string is usually a ROS \"package/node\"~%#   identifier, unique because ROS package names are unique.  The~%#   contents of this list could change over time due to the device's~%#   own activities.~%string[] rapps~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KnownResources>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KnownResources>))
  "Converts a ROS message object to a list"
  (cl:list 'KnownResources
    (cl:cons ':header (header msg))
    (cl:cons ':resources (resources msg))
))
