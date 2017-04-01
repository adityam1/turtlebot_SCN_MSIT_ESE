; Auto-generated. Do not edit!


(cl:in-package scheduler_msgs-msg)


;//! \htmlinclude Request.msg.html

(cl:defclass <Request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (resources
    :reader resources
    :initarg :resources
    :type (cl:vector scheduler_msgs-msg:Resource)
   :initform (cl:make-array 0 :element-type 'scheduler_msgs-msg:Resource :initial-element (cl:make-instance 'scheduler_msgs-msg:Resource)))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (reason
    :reader reason
    :initarg :reason
    :type cl:fixnum
    :initform 0)
   (problem
    :reader problem
    :initarg :problem
    :type cl:string
    :initform "")
   (availability
    :reader availability
    :initarg :availability
    :type cl:real
    :initform 0)
   (hold_time
    :reader hold_time
    :initarg :hold_time
    :type cl:real
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Request (<Request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scheduler_msgs-msg:<Request> is deprecated: use scheduler_msgs-msg:Request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:id-val is deprecated.  Use scheduler_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'resources-val :lambda-list '(m))
(cl:defmethod resources-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:resources-val is deprecated.  Use scheduler_msgs-msg:resources instead.")
  (resources m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:status-val is deprecated.  Use scheduler_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:reason-val is deprecated.  Use scheduler_msgs-msg:reason instead.")
  (reason m))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:problem-val is deprecated.  Use scheduler_msgs-msg:problem instead.")
  (problem m))

(cl:ensure-generic-function 'availability-val :lambda-list '(m))
(cl:defmethod availability-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:availability-val is deprecated.  Use scheduler_msgs-msg:availability instead.")
  (availability m))

(cl:ensure-generic-function 'hold_time-val :lambda-list '(m))
(cl:defmethod hold_time-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:hold_time-val is deprecated.  Use scheduler_msgs-msg:hold_time instead.")
  (hold_time m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:priority-val is deprecated.  Use scheduler_msgs-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Request>)))
    "Constants for message type '<Request>"
  '((:NEW . 0)
    (:RESERVED . 1)
    (:WAITING . 2)
    (:GRANTED . 3)
    (:PREEMPTING . 4)
    (:CANCELING . 5)
    (:CLOSED . 6)
    (:NONE . 0)
    (:PREEMPTED . 1)
    (:BUSY . 2)
    (:UNAVAILABLE . 3)
    (:TIMEOUT . 4)
    (:INVALID . 5)
    (:BACKGROUND_PRIORITY . -20000)
    (:LOW_PRIORITY . -10000)
    (:DEFAULT_PRIORITY . 0)
    (:HIGH_PRIORITY . 10000)
    (:CRITICAL_PRIORITY . 20000))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Request)))
    "Constants for message type 'Request"
  '((:NEW . 0)
    (:RESERVED . 1)
    (:WAITING . 2)
    (:GRANTED . 3)
    (:PREEMPTING . 4)
    (:CANCELING . 5)
    (:CLOSED . 6)
    (:NONE . 0)
    (:PREEMPTED . 1)
    (:BUSY . 2)
    (:UNAVAILABLE . 3)
    (:TIMEOUT . 4)
    (:INVALID . 5)
    (:BACKGROUND_PRIORITY . -20000)
    (:LOW_PRIORITY . -10000)
    (:DEFAULT_PRIORITY . 0)
    (:HIGH_PRIORITY . 10000)
    (:CRITICAL_PRIORITY . 20000))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Request>) ostream)
  "Serializes a message object of type '<Request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'resources))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reason)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'problem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'problem))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'availability)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'availability) (cl:floor (cl:slot-value msg 'availability)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'hold_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'hold_time) (cl:floor (cl:slot-value msg 'hold_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Request>) istream)
  "Deserializes a message object of type '<Request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'scheduler_msgs-msg:Resource))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reason)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'problem) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'problem) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'availability) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hold_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Request>)))
  "Returns string type for a message object of type '<Request>"
  "scheduler_msgs/Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Request)))
  "Returns string type for a message object of type 'Request"
  "scheduler_msgs/Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Request>)))
  "Returns md5sum for a message object of type '<Request>"
  "1556d9f8919617c2f52b2a4ab15f6468")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Request)))
  "Returns md5sum for a message object of type 'Request"
  "1556d9f8919617c2f52b2a4ab15f6468")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Request>)))
  "Returns full string definition for message of type '<Request>"
  (cl:format cl:nil "### Resource request description~%#~%#   This tracks the progress of a single requested resource group.~%#   All these resources will be granted, preempted or canceled~%#   together as a unit.~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier~%Resource[] resources    # List of requested rapps and platforms~%~%##############################################################################~%# State~%##############################################################################~%~%uint8 status            # Current status of this request~%uint8 reason            # Reason for this status~%string problem          # Convenience message for introspecting on the reason ~%~%#  Status value labels:~%uint8 NEW         = 0   # New request for the scheduler~%uint8 RESERVED    = 1   # Request for a reservation at some future time~%uint8 WAITING     = 2   # Request has been queued by the scheduler~%uint8 GRANTED     = 3   # Request was granted by the scheduler~%uint8 PREEMPTING  = 4   # The scheduler wants to preempt this~%                        #   previously-granted request, but the~%                        #   requester has not yet canceled it~%uint8 CANCELING   = 5   # The requester wishes to cancel this~%                        #   request, but the scheduler has not yet~%                        #   confirmed that it is closed~%uint8 CLOSED      = 6   # Request is now closed (terminal state)~%~%# Reason labels:~%uint8 NONE        = 0   # No reason provided~%uint8 PREEMPTED   = 1   # Preempted for higher-priority task~%uint8 BUSY        = 2   # Requested resource busy elsewhere~%uint8 UNAVAILABLE = 3   # Requested resource not available~%uint8 TIMEOUT     = 4   # Lost contact with requester~%uint8 INVALID     = 5   # Ill-formed request: see problem string for details~%~%##############################################################################~%# Scheduling Variables~%##############################################################################~%~%time     availability   # Estimated time of availability (zero if unknown)~%duration hold_time      # Estimated hold time once allocated (zero if unknown)~%int16    priority       # Current priority of this request~%~%# Priority labels:~%int16 BACKGROUND_PRIORITY = -20000      # When nothing else to do~%int16 LOW_PRIORITY = -10000             # Low-priority task~%int16 DEFAULT_PRIORITY = 0              # Sane default priority~%int16 HIGH_PRIORITY = 10000             # High-priority task~%int16 CRITICAL_PRIORITY = 20000         # Mission-critical task~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: scheduler_msgs/Resource~%### ROCON resource request or response.~%#~%#   A scheduler_msgs/Request message includes one Resource message for~%#   each desired resource.  The scheduler responds using this same~%#   message to identify exactly what corresponding resource it has~%#   granted.~%~%# This is usually a uniquely identifying ros_package/rapp name~%# identifier, which is unique because ros packages are unique.~%string rapp~%~%# Unique identifier assigned by the requester to track resources~%# assigned in the scheduler feedback.~%uuid_msgs/UniqueID id~%~%# Uniform Resource Identifier for the platform.  ROCON defines two~%# kinds of URI strings:~%#~%# 1) A \"resource description URI\" is a canonical string for a specific~%#    device.  All components are fully resolved to their most specific~%#    values, like:~%#~%#      \"rocon:/turtlebot/dude3/hydro/precise\"~%#~%#    The scheduler provides fully resolved resource description URIs~%#    in its feedback for requests that have been granted.~%#~%# 2) A \"request URI\" may provide a similar descriptive representation,~%#    or may include patterns for matching multiple alternative~%#    platforms.  Omitted or '*' patterns match any valid value:~%#~%#      \"\"                               # (empty string): any platform~%#      \"rocon:/turtlebot\"               # any turtlebot~%#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type~%#      \"rocon:/*/dude3\"                 # any device named dude3~%#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform~%#~%string uri~%~%# Remappings which get passed on for starting the rapps. Also potentially for~%# more esoteric use cases such as checking whether an app is sharable.~%rocon_std_msgs/Remapping[] remappings~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Request)))
  "Returns full string definition for message of type 'Request"
  (cl:format cl:nil "### Resource request description~%#~%#   This tracks the progress of a single requested resource group.~%#   All these resources will be granted, preempted or canceled~%#   together as a unit.~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier~%Resource[] resources    # List of requested rapps and platforms~%~%##############################################################################~%# State~%##############################################################################~%~%uint8 status            # Current status of this request~%uint8 reason            # Reason for this status~%string problem          # Convenience message for introspecting on the reason ~%~%#  Status value labels:~%uint8 NEW         = 0   # New request for the scheduler~%uint8 RESERVED    = 1   # Request for a reservation at some future time~%uint8 WAITING     = 2   # Request has been queued by the scheduler~%uint8 GRANTED     = 3   # Request was granted by the scheduler~%uint8 PREEMPTING  = 4   # The scheduler wants to preempt this~%                        #   previously-granted request, but the~%                        #   requester has not yet canceled it~%uint8 CANCELING   = 5   # The requester wishes to cancel this~%                        #   request, but the scheduler has not yet~%                        #   confirmed that it is closed~%uint8 CLOSED      = 6   # Request is now closed (terminal state)~%~%# Reason labels:~%uint8 NONE        = 0   # No reason provided~%uint8 PREEMPTED   = 1   # Preempted for higher-priority task~%uint8 BUSY        = 2   # Requested resource busy elsewhere~%uint8 UNAVAILABLE = 3   # Requested resource not available~%uint8 TIMEOUT     = 4   # Lost contact with requester~%uint8 INVALID     = 5   # Ill-formed request: see problem string for details~%~%##############################################################################~%# Scheduling Variables~%##############################################################################~%~%time     availability   # Estimated time of availability (zero if unknown)~%duration hold_time      # Estimated hold time once allocated (zero if unknown)~%int16    priority       # Current priority of this request~%~%# Priority labels:~%int16 BACKGROUND_PRIORITY = -20000      # When nothing else to do~%int16 LOW_PRIORITY = -10000             # Low-priority task~%int16 DEFAULT_PRIORITY = 0              # Sane default priority~%int16 HIGH_PRIORITY = 10000             # High-priority task~%int16 CRITICAL_PRIORITY = 20000         # Mission-critical task~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: scheduler_msgs/Resource~%### ROCON resource request or response.~%#~%#   A scheduler_msgs/Request message includes one Resource message for~%#   each desired resource.  The scheduler responds using this same~%#   message to identify exactly what corresponding resource it has~%#   granted.~%~%# This is usually a uniquely identifying ros_package/rapp name~%# identifier, which is unique because ros packages are unique.~%string rapp~%~%# Unique identifier assigned by the requester to track resources~%# assigned in the scheduler feedback.~%uuid_msgs/UniqueID id~%~%# Uniform Resource Identifier for the platform.  ROCON defines two~%# kinds of URI strings:~%#~%# 1) A \"resource description URI\" is a canonical string for a specific~%#    device.  All components are fully resolved to their most specific~%#    values, like:~%#~%#      \"rocon:/turtlebot/dude3/hydro/precise\"~%#~%#    The scheduler provides fully resolved resource description URIs~%#    in its feedback for requests that have been granted.~%#~%# 2) A \"request URI\" may provide a similar descriptive representation,~%#    or may include patterns for matching multiple alternative~%#    platforms.  Omitted or '*' patterns match any valid value:~%#~%#      \"\"                               # (empty string): any platform~%#      \"rocon:/turtlebot\"               # any turtlebot~%#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type~%#      \"rocon:/*/dude3\"                 # any device named dude3~%#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform~%#~%string uri~%~%# Remappings which get passed on for starting the rapps. Also potentially for~%# more esoteric use cases such as checking whether an app is sharable.~%rocon_std_msgs/Remapping[] remappings~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'problem))
     8
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Request>))
  "Converts a ROS message object to a list"
  (cl:list 'Request
    (cl:cons ':id (id msg))
    (cl:cons ':resources (resources msg))
    (cl:cons ':status (status msg))
    (cl:cons ':reason (reason msg))
    (cl:cons ':problem (problem msg))
    (cl:cons ':availability (availability msg))
    (cl:cons ':hold_time (hold_time msg))
    (cl:cons ':priority (priority msg))
))
