; Auto-generated. Do not edit!


(cl:in-package scheduler_msgs-msg)


;//! \htmlinclude Resource.msg.html

(cl:defclass <Resource> (roslisp-msg-protocol:ros-message)
  ((rapp
    :reader rapp
    :initarg :rapp
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform "")
   (remappings
    :reader remappings
    :initarg :remappings
    :type (cl:vector rocon_std_msgs-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Remapping :initial-element (cl:make-instance 'rocon_std_msgs-msg:Remapping)))
   (parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector rocon_std_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:KeyValue :initial-element (cl:make-instance 'rocon_std_msgs-msg:KeyValue))))
)

(cl:defclass Resource (<Resource>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Resource>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Resource)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scheduler_msgs-msg:<Resource> is deprecated: use scheduler_msgs-msg:Resource instead.")))

(cl:ensure-generic-function 'rapp-val :lambda-list '(m))
(cl:defmethod rapp-val ((m <Resource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:rapp-val is deprecated.  Use scheduler_msgs-msg:rapp instead.")
  (rapp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Resource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:id-val is deprecated.  Use scheduler_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <Resource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:uri-val is deprecated.  Use scheduler_msgs-msg:uri instead.")
  (uri m))

(cl:ensure-generic-function 'remappings-val :lambda-list '(m))
(cl:defmethod remappings-val ((m <Resource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:remappings-val is deprecated.  Use scheduler_msgs-msg:remappings instead.")
  (remappings m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <Resource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scheduler_msgs-msg:parameters-val is deprecated.  Use scheduler_msgs-msg:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Resource>) ostream)
  "Serializes a message object of type '<Resource>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rapp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rapp))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remappings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remappings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Resource>) istream)
  "Deserializes a message object of type '<Resource>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rapp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rapp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remappings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remappings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Resource>)))
  "Returns string type for a message object of type '<Resource>"
  "scheduler_msgs/Resource")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Resource)))
  "Returns string type for a message object of type 'Resource"
  "scheduler_msgs/Resource")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Resource>)))
  "Returns md5sum for a message object of type '<Resource>"
  "754fd8dd757d06fa1564264b85a21995")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Resource)))
  "Returns md5sum for a message object of type 'Resource"
  "754fd8dd757d06fa1564264b85a21995")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Resource>)))
  "Returns full string definition for message of type '<Resource>"
  (cl:format cl:nil "### ROCON resource request or response.~%#~%#   A scheduler_msgs/Request message includes one Resource message for~%#   each desired resource.  The scheduler responds using this same~%#   message to identify exactly what corresponding resource it has~%#   granted.~%~%# This is usually a uniquely identifying ros_package/rapp name~%# identifier, which is unique because ros packages are unique.~%string rapp~%~%# Unique identifier assigned by the requester to track resources~%# assigned in the scheduler feedback.~%uuid_msgs/UniqueID id~%~%# Uniform Resource Identifier for the platform.  ROCON defines two~%# kinds of URI strings:~%#~%# 1) A \"resource description URI\" is a canonical string for a specific~%#    device.  All components are fully resolved to their most specific~%#    values, like:~%#~%#      \"rocon:/turtlebot/dude3/hydro/precise\"~%#~%#    The scheduler provides fully resolved resource description URIs~%#    in its feedback for requests that have been granted.~%#~%# 2) A \"request URI\" may provide a similar descriptive representation,~%#    or may include patterns for matching multiple alternative~%#    platforms.  Omitted or '*' patterns match any valid value:~%#~%#      \"\"                               # (empty string): any platform~%#      \"rocon:/turtlebot\"               # any turtlebot~%#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type~%#      \"rocon:/*/dude3\"                 # any device named dude3~%#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform~%#~%string uri~%~%# Remappings which get passed on for starting the rapps. Also potentially for~%# more esoteric use cases such as checking whether an app is sharable.~%rocon_std_msgs/Remapping[] remappings~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Resource)))
  "Returns full string definition for message of type 'Resource"
  (cl:format cl:nil "### ROCON resource request or response.~%#~%#   A scheduler_msgs/Request message includes one Resource message for~%#   each desired resource.  The scheduler responds using this same~%#   message to identify exactly what corresponding resource it has~%#   granted.~%~%# This is usually a uniquely identifying ros_package/rapp name~%# identifier, which is unique because ros packages are unique.~%string rapp~%~%# Unique identifier assigned by the requester to track resources~%# assigned in the scheduler feedback.~%uuid_msgs/UniqueID id~%~%# Uniform Resource Identifier for the platform.  ROCON defines two~%# kinds of URI strings:~%#~%# 1) A \"resource description URI\" is a canonical string for a specific~%#    device.  All components are fully resolved to their most specific~%#    values, like:~%#~%#      \"rocon:/turtlebot/dude3/hydro/precise\"~%#~%#    The scheduler provides fully resolved resource description URIs~%#    in its feedback for requests that have been granted.~%#~%# 2) A \"request URI\" may provide a similar descriptive representation,~%#    or may include patterns for matching multiple alternative~%#    platforms.  Omitted or '*' patterns match any valid value:~%#~%#      \"\"                               # (empty string): any platform~%#      \"rocon:/turtlebot\"               # any turtlebot~%#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type~%#      \"rocon:/*/dude3\"                 # any device named dude3~%#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform~%#~%string uri~%~%# Remappings which get passed on for starting the rapps. Also potentially for~%# more esoteric use cases such as checking whether an app is sharable.~%rocon_std_msgs/Remapping[] remappings~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Resource>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rapp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'uri))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remappings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Resource>))
  "Converts a ROS message object to a list"
  (cl:list 'Resource
    (cl:cons ':rapp (rapp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':uri (uri msg))
    (cl:cons ':remappings (remappings msg))
    (cl:cons ':parameters (parameters msg))
))
