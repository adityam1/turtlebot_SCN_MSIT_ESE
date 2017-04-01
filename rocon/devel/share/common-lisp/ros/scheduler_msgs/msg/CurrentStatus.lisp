; Auto-generated. Do not edit!


(cl:in-package scheduler_msgs-msg)


;//! \htmlinclude CurrentStatus.msg.html

(cl:defclass <CurrentStatus> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (owner
    :reader owner
    :initarg :owner
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (rapps
    :reader rapps
    :initarg :rapps
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CurrentStatus (<CurrentStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scheduler_msgs-msg:<CurrentStatus> is deprecated: use scheduler_msgs-msg:CurrentStatus instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <CurrentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:uri-val is deprecated.  Use scheduler_msgs-msg:uri instead.")
  (uri m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CurrentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:status-val is deprecated.  Use scheduler_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'owner-val :lambda-list '(m))
(cl:defmethod owner-val ((m <CurrentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:owner-val is deprecated.  Use scheduler_msgs-msg:owner instead.")
  (owner m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <CurrentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:priority-val is deprecated.  Use scheduler_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'rapps-val :lambda-list '(m))
(cl:defmethod rapps-val ((m <CurrentStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:rapps-val is deprecated.  Use scheduler_msgs-msg:rapps instead.")
  (rapps m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CurrentStatus>)))
    "Constants for message type '<CurrentStatus>"
  '((:AVAILABLE . 0)
    (:ALLOCATED . 1)
    (:MISSING . 2)
    (:GONE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CurrentStatus)))
    "Constants for message type 'CurrentStatus"
  '((:AVAILABLE . 0)
    (:ALLOCATED . 1)
    (:MISSING . 2)
    (:GONE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentStatus>) ostream)
  "Serializes a message object of type '<CurrentStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'owner) ostream)
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rapps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'rapps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentStatus>) istream)
  "Deserializes a message object of type '<CurrentStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'owner) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rapps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rapps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentStatus>)))
  "Returns string type for a message object of type '<CurrentStatus>"
  "scheduler_msgs/CurrentStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentStatus)))
  "Returns string type for a message object of type 'CurrentStatus"
  "scheduler_msgs/CurrentStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentStatus>)))
  "Returns md5sum for a message object of type '<CurrentStatus>"
  "6aad8a50fb8e5cf19eb4622c1c4b6467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentStatus)))
  "Returns md5sum for a message object of type 'CurrentStatus"
  "6aad8a50fb8e5cf19eb4622c1c4b6467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentStatus>)))
  "Returns full string definition for message of type '<CurrentStatus>"
  (cl:format cl:nil "### ROCON resource current status.~%#~%#   A ROCON scheduler uses this message to report the status of each~%#   resource it manages.~%#~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%#   A canonical ROCON Uniform Resource Identifier describing this~%#   resource, a fully-resolved character string in the form:~%#~%#      rocon:/platform/name/framework/os~%#~%string uri~%~%##############################################################################~%# Status~%##############################################################################~%~%uint8 status            # Current status of this resource~%~%#  Status value labels:~%uint8 AVAILABLE   = 0   # Available for use~%uint8 ALLOCATED   = 1   # Allocated to some ROCON request~%uint8 MISSING     = 2   # Not currently responding~%uint8 GONE        = 3   # Has left the concert (cleanly)~%~%#   The owner is the unique identifier of the Request message to which~%#   this resource is currently assigned, or a zero UUID if it is not~%#   assigned.  An AVAILABLE resource never has an owner, but a MISSING~%#   one might.~%uuid_msgs/UniqueID owner~%~%#   The priority of an ALLOCATED resource is the priority of its~%#   owning request.  An AVAILABLE resource never has a non-zero~%#   priority, but a MISSING one might.~%int16 priority~%~%#   List of ROCON application names currently available with this~%#   resource. The name string is usually a ROS \"package/node\"~%#   identifier, unique because ROS package names are unique.  The~%#   contents of this list could change over time due to the device's~%#   own activities.~%string[] rapps~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentStatus)))
  "Returns full string definition for message of type 'CurrentStatus"
  (cl:format cl:nil "### ROCON resource current status.~%#~%#   A ROCON scheduler uses this message to report the status of each~%#   resource it manages.~%#~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%#   A canonical ROCON Uniform Resource Identifier describing this~%#   resource, a fully-resolved character string in the form:~%#~%#      rocon:/platform/name/framework/os~%#~%string uri~%~%##############################################################################~%# Status~%##############################################################################~%~%uint8 status            # Current status of this resource~%~%#  Status value labels:~%uint8 AVAILABLE   = 0   # Available for use~%uint8 ALLOCATED   = 1   # Allocated to some ROCON request~%uint8 MISSING     = 2   # Not currently responding~%uint8 GONE        = 3   # Has left the concert (cleanly)~%~%#   The owner is the unique identifier of the Request message to which~%#   this resource is currently assigned, or a zero UUID if it is not~%#   assigned.  An AVAILABLE resource never has an owner, but a MISSING~%#   one might.~%uuid_msgs/UniqueID owner~%~%#   The priority of an ALLOCATED resource is the priority of its~%#   owning request.  An AVAILABLE resource never has a non-zero~%#   priority, but a MISSING one might.~%int16 priority~%~%#   List of ROCON application names currently available with this~%#   resource. The name string is usually a ROS \"package/node\"~%#   identifier, unique because ROS package names are unique.  The~%#   contents of this list could change over time due to the device's~%#   own activities.~%string[] rapps~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'owner))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rapps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentStatus
    (cl:cons ':uri (uri msg))
    (cl:cons ':status (status msg))
    (cl:cons ':owner (owner msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':rapps (rapps msg))
))
