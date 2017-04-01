; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude ServiceProfile.msg.html

(cl:defclass <ServiceProfile> (roslisp-msg-protocol:ros-message)
  ((resource_name
    :reader resource_name
    :initarg :resource_name
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (author
    :reader author
    :initarg :author
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (icon
    :reader icon
    :initarg :icon
    :type rocon_std_msgs-msg:Icon
    :initform (cl:make-instance 'rocon_std_msgs-msg:Icon))
   (launcher_type
    :reader launcher_type
    :initarg :launcher_type
    :type cl:string
    :initform "")
   (launcher
    :reader launcher
    :initarg :launcher
    :type cl:string
    :initform "")
   (interactions
    :reader interactions
    :initarg :interactions
    :type cl:string
    :initform "")
   (parameters
    :reader parameters
    :initarg :parameters
    :type cl:string
    :initform "")
   (parameters_detail
    :reader parameters_detail
    :initarg :parameters_detail
    :type (cl:vector rocon_std_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:KeyValue :initial-element (cl:make-instance 'rocon_std_msgs-msg:KeyValue)))
   (uuid
    :reader uuid
    :initarg :uuid
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServiceProfile (<ServiceProfile>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceProfile>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceProfile)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<ServiceProfile> is deprecated: use concert_msgs-msg:ServiceProfile instead.")))

(cl:ensure-generic-function 'resource_name-val :lambda-list '(m))
(cl:defmethod resource_name-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:resource_name-val is deprecated.  Use concert_msgs-msg:resource_name instead.")
  (resource_name m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:name-val is deprecated.  Use concert_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:description-val is deprecated.  Use concert_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'author-val :lambda-list '(m))
(cl:defmethod author-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:author-val is deprecated.  Use concert_msgs-msg:author instead.")
  (author m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:priority-val is deprecated.  Use concert_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'icon-val :lambda-list '(m))
(cl:defmethod icon-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:icon-val is deprecated.  Use concert_msgs-msg:icon instead.")
  (icon m))

(cl:ensure-generic-function 'launcher_type-val :lambda-list '(m))
(cl:defmethod launcher_type-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:launcher_type-val is deprecated.  Use concert_msgs-msg:launcher_type instead.")
  (launcher_type m))

(cl:ensure-generic-function 'launcher-val :lambda-list '(m))
(cl:defmethod launcher-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:launcher-val is deprecated.  Use concert_msgs-msg:launcher instead.")
  (launcher m))

(cl:ensure-generic-function 'interactions-val :lambda-list '(m))
(cl:defmethod interactions-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:interactions-val is deprecated.  Use concert_msgs-msg:interactions instead.")
  (interactions m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:parameters-val is deprecated.  Use concert_msgs-msg:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'parameters_detail-val :lambda-list '(m))
(cl:defmethod parameters_detail-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:parameters_detail-val is deprecated.  Use concert_msgs-msg:parameters_detail instead.")
  (parameters_detail m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:uuid-val is deprecated.  Use concert_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:status-val is deprecated.  Use concert_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <ServiceProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:enabled-val is deprecated.  Use concert_msgs-msg:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ServiceProfile>)))
    "Constants for message type '<ServiceProfile>"
  '((:TYPE_ROSLAUNCH . roslaunch)
    (:TYPE_CUSTOM . custom)
    (:TYPE_SHADOW . shadow))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ServiceProfile)))
    "Constants for message type 'ServiceProfile"
  '((:TYPE_ROSLAUNCH . roslaunch)
    (:TYPE_CUSTOM . custom)
    (:TYPE_SHADOW . shadow))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceProfile>) ostream)
  "Serializes a message object of type '<ServiceProfile>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'resource_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'resource_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'author))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'author))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'icon) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'launcher_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'launcher_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'launcher))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'launcher))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'interactions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'interactions))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameters))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters_detail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters_detail))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uuid) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceProfile>) istream)
  "Deserializes a message object of type '<ServiceProfile>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'resource_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'resource_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'author) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'author) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'icon) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'launcher_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'launcher_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'launcher) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'launcher) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interactions) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'interactions) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameters_detail) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameters_detail)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uuid) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceProfile>)))
  "Returns string type for a message object of type '<ServiceProfile>"
  "concert_msgs/ServiceProfile")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceProfile)))
  "Returns string type for a message object of type 'ServiceProfile"
  "concert_msgs/ServiceProfile")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceProfile>)))
  "Returns md5sum for a message object of type '<ServiceProfile>"
  "dcb6ede1f2f06a387af71a83b4776139")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceProfile)))
  "Returns md5sum for a message object of type 'ServiceProfile"
  "dcb6ede1f2f06a387af71a83b4776139")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceProfile>)))
  "Returns full string definition for message of type '<ServiceProfile>"
  (cl:format cl:nil "# Constants - service types~%string TYPE_ROSLAUNCH = roslaunch~%string TYPE_CUSTOM    = custom~%string TYPE_SHADOW    = shadow~%~%# Pre-configured parameters~%string                      resource_name~%string                      name~%string                      description~%string                      author~%uint16                      priority~%rocon_std_msgs/Icon         icon~%string                      launcher_type~%string                      launcher~%string                      interactions~%string                      parameters~%rocon_std_msgs/KeyValue[]   parameters_detail~%~%# Initialised parameters (on startup)~%uuid_msgs/UniqueID          uuid~%~%# Runtime variables~%int16                       status~%bool                        enabled~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceProfile)))
  "Returns full string definition for message of type 'ServiceProfile"
  (cl:format cl:nil "# Constants - service types~%string TYPE_ROSLAUNCH = roslaunch~%string TYPE_CUSTOM    = custom~%string TYPE_SHADOW    = shadow~%~%# Pre-configured parameters~%string                      resource_name~%string                      name~%string                      description~%string                      author~%uint16                      priority~%rocon_std_msgs/Icon         icon~%string                      launcher_type~%string                      launcher~%string                      interactions~%string                      parameters~%rocon_std_msgs/KeyValue[]   parameters_detail~%~%# Initialised parameters (on startup)~%uuid_msgs/UniqueID          uuid~%~%# Runtime variables~%int16                       status~%bool                        enabled~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceProfile>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'resource_name))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'author))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'icon))
     4 (cl:length (cl:slot-value msg 'launcher_type))
     4 (cl:length (cl:slot-value msg 'launcher))
     4 (cl:length (cl:slot-value msg 'interactions))
     4 (cl:length (cl:slot-value msg 'parameters))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters_detail) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uuid))
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceProfile>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceProfile
    (cl:cons ':resource_name (resource_name msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':author (author msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':icon (icon msg))
    (cl:cons ':launcher_type (launcher_type msg))
    (cl:cons ':launcher (launcher msg))
    (cl:cons ':interactions (interactions msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':parameters_detail (parameters_detail msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':status (status msg))
    (cl:cons ':enabled (enabled msg))
))
