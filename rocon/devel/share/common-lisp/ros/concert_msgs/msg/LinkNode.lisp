; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude LinkNode.msg.html

(cl:defclass <LinkNode> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (resource
    :reader resource
    :initarg :resource
    :type cl:string
    :initform "")
   (min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (max
    :reader max
    :initarg :max
    :type cl:fixnum
    :initform 0)
   (force_name_matching
    :reader force_name_matching
    :initarg :force_name_matching
    :type cl:boolean
    :initform cl:nil)
   (parameters
    :reader parameters
    :initarg :parameters
    :type rocon_std_msgs-msg:KeyValue
    :initform (cl:make-instance 'rocon_std_msgs-msg:KeyValue)))
)

(cl:defclass LinkNode (<LinkNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinkNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinkNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<LinkNode> is deprecated: use concert_msgs-msg:LinkNode instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LinkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:id-val is deprecated.  Use concert_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'resource-val :lambda-list '(m))
(cl:defmethod resource-val ((m <LinkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:resource-val is deprecated.  Use concert_msgs-msg:resource instead.")
  (resource m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <LinkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:min-val is deprecated.  Use concert_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <LinkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:max-val is deprecated.  Use concert_msgs-msg:max instead.")
  (max m))

(cl:ensure-generic-function 'force_name_matching-val :lambda-list '(m))
(cl:defmethod force_name_matching-val ((m <LinkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:force_name_matching-val is deprecated.  Use concert_msgs-msg:force_name_matching instead.")
  (force_name_matching m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <LinkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:parameters-val is deprecated.  Use concert_msgs-msg:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LinkNode>)))
    "Constants for message type '<LinkNode>"
  '((:UNLIMITED_RESOURCE . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LinkNode)))
    "Constants for message type 'LinkNode"
  '((:UNLIMITED_RESOURCE . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinkNode>) ostream)
  "Serializes a message object of type '<LinkNode>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'resource))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'resource))
  (cl:let* ((signed (cl:slot-value msg 'min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'force_name_matching) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parameters) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinkNode>) istream)
  "Deserializes a message object of type '<LinkNode>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'resource) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'resource) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'force_name_matching) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parameters) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinkNode>)))
  "Returns string type for a message object of type '<LinkNode>"
  "concert_msgs/LinkNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinkNode)))
  "Returns string type for a message object of type 'LinkNode"
  "concert_msgs/LinkNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinkNode>)))
  "Returns md5sum for a message object of type '<LinkNode>"
  "66d27e37c29408b86c119285c34c50cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinkNode)))
  "Returns md5sum for a message object of type 'LinkNode"
  "66d27e37c29408b86c119285c34c50cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinkNode>)))
  "Returns full string definition for message of type '<LinkNode>"
  (cl:format cl:nil "# Representation of a concert client node in the implementation graph~%~%# unique identifier~%string id~%~%# rocon uri representing the required resource, e.g. rocon:/turtlebot/*#turtle_concert/turtle_stroll~%string resource~%~%# Constraints on how many of these nodes may exist~%#   min, max not set -> min = 1, max = 1~%#   min not set -> min = 1~%#   max not set -> max = UNLIMITED_RESOURCE~%# Zero is a valid minimum value~%int8 UNLIMITED_RESOURCE=-1~%int8 min~%int8 max~%~%# Force matching of robot name (only really useful for demos)~%bool force_name_matching~%~%# public parameters for node~%rocon_std_msgs/KeyValue parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinkNode)))
  "Returns full string definition for message of type 'LinkNode"
  (cl:format cl:nil "# Representation of a concert client node in the implementation graph~%~%# unique identifier~%string id~%~%# rocon uri representing the required resource, e.g. rocon:/turtlebot/*#turtle_concert/turtle_stroll~%string resource~%~%# Constraints on how many of these nodes may exist~%#   min, max not set -> min = 1, max = 1~%#   min not set -> min = 1~%#   max not set -> max = UNLIMITED_RESOURCE~%# Zero is a valid minimum value~%int8 UNLIMITED_RESOURCE=-1~%int8 min~%int8 max~%~%# Force matching of robot name (only really useful for demos)~%bool force_name_matching~%~%# public parameters for node~%rocon_std_msgs/KeyValue parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinkNode>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'resource))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinkNode>))
  "Converts a ROS message object to a list"
  (cl:list 'LinkNode
    (cl:cons ':id (id msg))
    (cl:cons ':resource (resource msg))
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
    (cl:cons ':force_name_matching (force_name_matching msg))
    (cl:cons ':parameters (parameters msg))
))
