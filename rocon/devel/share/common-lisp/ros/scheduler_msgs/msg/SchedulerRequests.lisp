; Auto-generated. Do not edit!


(cl:in-package scheduler_msgs-msg)


;//! \htmlinclude SchedulerRequests.msg.html

(cl:defclass <SchedulerRequests> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (requester
    :reader requester
    :initarg :requester
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (requests
    :reader requests
    :initarg :requests
    :type (cl:vector scheduler_msgs-msg:Request)
   :initform (cl:make-array 0 :element-type 'scheduler_msgs-msg:Request :initial-element (cl:make-instance 'scheduler_msgs-msg:Request))))
)

(cl:defclass SchedulerRequests (<SchedulerRequests>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SchedulerRequests>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SchedulerRequests)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scheduler_msgs-msg:<SchedulerRequests> is deprecated: use scheduler_msgs-msg:SchedulerRequests instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SchedulerRequests>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:header-val is deprecated.  Use scheduler_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'requester-val :lambda-list '(m))
(cl:defmethod requester-val ((m <SchedulerRequests>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:requester-val is deprecated.  Use scheduler_msgs-msg:requester instead.")
  (requester m))

(cl:ensure-generic-function 'requests-val :lambda-list '(m))
(cl:defmethod requests-val ((m <SchedulerRequests>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:requests-val is deprecated.  Use scheduler_msgs-msg:requests instead.")
  (requests m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SchedulerRequests>) ostream)
  "Serializes a message object of type '<SchedulerRequests>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'requester) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'requests))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'requests))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SchedulerRequests>) istream)
  "Deserializes a message object of type '<SchedulerRequests>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'requester) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'requests) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'requests)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'scheduler_msgs-msg:Request))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SchedulerRequests>)))
  "Returns string type for a message object of type '<SchedulerRequests>"
  "scheduler_msgs/SchedulerRequests")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SchedulerRequests)))
  "Returns string type for a message object of type 'SchedulerRequests"
  "scheduler_msgs/SchedulerRequests")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SchedulerRequests>)))
  "Returns md5sum for a message object of type '<SchedulerRequests>"
  "d0adc2f83296939c4b208a3e0619e86f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SchedulerRequests)))
  "Returns md5sum for a message object of type 'SchedulerRequests"
  "d0adc2f83296939c4b208a3e0619e86f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SchedulerRequests>)))
  "Returns full string definition for message of type '<SchedulerRequests>"
  (cl:format cl:nil "### Scheduler Requests~%#~%#   Rocon services send this message on the scheduler's input topic to~%#   make or update their resource requests.  All resources they~%#   currently have or desire should be included.~%#~%#   If not all of the requested resources are immediately available,~%#   the scheduler will queue those requests and provide feedback using~%#   a message of the same type.  The requester should wait until~%#   feedback indicates the associated resources are available.  It may~%#   cancel some requests at any time via an new allocation message.~%#~%Header header                   # Time of this status, frame_id irrelevant~%uuid_msgs/UniqueID requester    # Requester identifier~%Request[] requests              # Status of every currently-known request~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: scheduler_msgs/Request~%### Resource request description~%#~%#   This tracks the progress of a single requested resource group.~%#   All these resources will be granted, preempted or canceled~%#   together as a unit.~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier~%Resource[] resources    # List of requested rapps and platforms~%~%##############################################################################~%# State~%##############################################################################~%~%uint8 status            # Current status of this request~%uint8 reason            # Reason for this status~%string problem          # Convenience message for introspecting on the reason ~%~%#  Status value labels:~%uint8 NEW         = 0   # New request for the scheduler~%uint8 RESERVED    = 1   # Request for a reservation at some future time~%uint8 WAITING     = 2   # Request has been queued by the scheduler~%uint8 GRANTED     = 3   # Request was granted by the scheduler~%uint8 PREEMPTING  = 4   # The scheduler wants to preempt this~%                        #   previously-granted request, but the~%                        #   requester has not yet canceled it~%uint8 CANCELING   = 5   # The requester wishes to cancel this~%                        #   request, but the scheduler has not yet~%                        #   confirmed that it is closed~%uint8 CLOSED      = 6   # Request is now closed (terminal state)~%~%# Reason labels:~%uint8 NONE        = 0   # No reason provided~%uint8 PREEMPTED   = 1   # Preempted for higher-priority task~%uint8 BUSY        = 2   # Requested resource busy elsewhere~%uint8 UNAVAILABLE = 3   # Requested resource not available~%uint8 TIMEOUT     = 4   # Lost contact with requester~%uint8 INVALID     = 5   # Ill-formed request: see problem string for details~%~%##############################################################################~%# Scheduling Variables~%##############################################################################~%~%time     availability   # Estimated time of availability (zero if unknown)~%duration hold_time      # Estimated hold time once allocated (zero if unknown)~%int16    priority       # Current priority of this request~%~%# Priority labels:~%int16 BACKGROUND_PRIORITY = -20000      # When nothing else to do~%int16 LOW_PRIORITY = -10000             # Low-priority task~%int16 DEFAULT_PRIORITY = 0              # Sane default priority~%int16 HIGH_PRIORITY = 10000             # High-priority task~%int16 CRITICAL_PRIORITY = 20000         # Mission-critical task~%~%================================================================================~%MSG: scheduler_msgs/Resource~%### ROCON resource request or response.~%#~%#   A scheduler_msgs/Request message includes one Resource message for~%#   each desired resource.  The scheduler responds using this same~%#   message to identify exactly what corresponding resource it has~%#   granted.~%~%# This is usually a uniquely identifying ros_package/rapp name~%# identifier, which is unique because ros packages are unique.~%string rapp~%~%# Unique identifier assigned by the requester to track resources~%# assigned in the scheduler feedback.~%uuid_msgs/UniqueID id~%~%# Uniform Resource Identifier for the platform.  ROCON defines two~%# kinds of URI strings:~%#~%# 1) A \"resource description URI\" is a canonical string for a specific~%#    device.  All components are fully resolved to their most specific~%#    values, like:~%#~%#      \"rocon:/turtlebot/dude3/hydro/precise\"~%#~%#    The scheduler provides fully resolved resource description URIs~%#    in its feedback for requests that have been granted.~%#~%# 2) A \"request URI\" may provide a similar descriptive representation,~%#    or may include patterns for matching multiple alternative~%#    platforms.  Omitted or '*' patterns match any valid value:~%#~%#      \"\"                               # (empty string): any platform~%#      \"rocon:/turtlebot\"               # any turtlebot~%#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type~%#      \"rocon:/*/dude3\"                 # any device named dude3~%#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform~%#~%string uri~%~%# Remappings which get passed on for starting the rapps. Also potentially for~%# more esoteric use cases such as checking whether an app is sharable.~%rocon_std_msgs/Remapping[] remappings~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SchedulerRequests)))
  "Returns full string definition for message of type 'SchedulerRequests"
  (cl:format cl:nil "### Scheduler Requests~%#~%#   Rocon services send this message on the scheduler's input topic to~%#   make or update their resource requests.  All resources they~%#   currently have or desire should be included.~%#~%#   If not all of the requested resources are immediately available,~%#   the scheduler will queue those requests and provide feedback using~%#   a message of the same type.  The requester should wait until~%#   feedback indicates the associated resources are available.  It may~%#   cancel some requests at any time via an new allocation message.~%#~%Header header                   # Time of this status, frame_id irrelevant~%uuid_msgs/UniqueID requester    # Requester identifier~%Request[] requests              # Status of every currently-known request~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: scheduler_msgs/Request~%### Resource request description~%#~%#   This tracks the progress of a single requested resource group.~%#   All these resources will be granted, preempted or canceled~%#   together as a unit.~%~%##############################################################################~%# Resource Identification~%##############################################################################~%~%uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier~%Resource[] resources    # List of requested rapps and platforms~%~%##############################################################################~%# State~%##############################################################################~%~%uint8 status            # Current status of this request~%uint8 reason            # Reason for this status~%string problem          # Convenience message for introspecting on the reason ~%~%#  Status value labels:~%uint8 NEW         = 0   # New request for the scheduler~%uint8 RESERVED    = 1   # Request for a reservation at some future time~%uint8 WAITING     = 2   # Request has been queued by the scheduler~%uint8 GRANTED     = 3   # Request was granted by the scheduler~%uint8 PREEMPTING  = 4   # The scheduler wants to preempt this~%                        #   previously-granted request, but the~%                        #   requester has not yet canceled it~%uint8 CANCELING   = 5   # The requester wishes to cancel this~%                        #   request, but the scheduler has not yet~%                        #   confirmed that it is closed~%uint8 CLOSED      = 6   # Request is now closed (terminal state)~%~%# Reason labels:~%uint8 NONE        = 0   # No reason provided~%uint8 PREEMPTED   = 1   # Preempted for higher-priority task~%uint8 BUSY        = 2   # Requested resource busy elsewhere~%uint8 UNAVAILABLE = 3   # Requested resource not available~%uint8 TIMEOUT     = 4   # Lost contact with requester~%uint8 INVALID     = 5   # Ill-formed request: see problem string for details~%~%##############################################################################~%# Scheduling Variables~%##############################################################################~%~%time     availability   # Estimated time of availability (zero if unknown)~%duration hold_time      # Estimated hold time once allocated (zero if unknown)~%int16    priority       # Current priority of this request~%~%# Priority labels:~%int16 BACKGROUND_PRIORITY = -20000      # When nothing else to do~%int16 LOW_PRIORITY = -10000             # Low-priority task~%int16 DEFAULT_PRIORITY = 0              # Sane default priority~%int16 HIGH_PRIORITY = 10000             # High-priority task~%int16 CRITICAL_PRIORITY = 20000         # Mission-critical task~%~%================================================================================~%MSG: scheduler_msgs/Resource~%### ROCON resource request or response.~%#~%#   A scheduler_msgs/Request message includes one Resource message for~%#   each desired resource.  The scheduler responds using this same~%#   message to identify exactly what corresponding resource it has~%#   granted.~%~%# This is usually a uniquely identifying ros_package/rapp name~%# identifier, which is unique because ros packages are unique.~%string rapp~%~%# Unique identifier assigned by the requester to track resources~%# assigned in the scheduler feedback.~%uuid_msgs/UniqueID id~%~%# Uniform Resource Identifier for the platform.  ROCON defines two~%# kinds of URI strings:~%#~%# 1) A \"resource description URI\" is a canonical string for a specific~%#    device.  All components are fully resolved to their most specific~%#    values, like:~%#~%#      \"rocon:/turtlebot/dude3/hydro/precise\"~%#~%#    The scheduler provides fully resolved resource description URIs~%#    in its feedback for requests that have been granted.~%#~%# 2) A \"request URI\" may provide a similar descriptive representation,~%#    or may include patterns for matching multiple alternative~%#    platforms.  Omitted or '*' patterns match any valid value:~%#~%#      \"\"                               # (empty string): any platform~%#      \"rocon:/turtlebot\"               # any turtlebot~%#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type~%#      \"rocon:/*/dude3\"                 # any device named dude3~%#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform~%#~%string uri~%~%# Remappings which get passed on for starting the rapps. Also potentially for~%# more esoteric use cases such as checking whether an app is sharable.~%rocon_std_msgs/Remapping[] remappings~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SchedulerRequests>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'requester))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'requests) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SchedulerRequests>))
  "Converts a ROS message object to a list"
  (cl:list 'SchedulerRequests
    (cl:cons ':header (header msg))
    (cl:cons ':requester (requester msg))
    (cl:cons ':requests (requests msg))
))
