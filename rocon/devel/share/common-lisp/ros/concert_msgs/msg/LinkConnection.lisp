; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude LinkConnection.msg.html

(cl:defclass <LinkConnection> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass LinkConnection (<LinkConnection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinkConnection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinkConnection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<LinkConnection> is deprecated: use concert_msgs-msg:LinkConnection instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LinkConnection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:id-val is deprecated.  Use concert_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LinkConnection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:type-val is deprecated.  Use concert_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinkConnection>) ostream)
  "Serializes a message object of type '<LinkConnection>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinkConnection>) istream)
  "Deserializes a message object of type '<LinkConnection>"
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
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinkConnection>)))
  "Returns string type for a message object of type '<LinkConnection>"
  "concert_msgs/LinkConnection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinkConnection)))
  "Returns string type for a message object of type 'LinkConnection"
  "concert_msgs/LinkConnection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinkConnection>)))
  "Returns md5sum for a message object of type '<LinkConnection>"
  "3ba1be4318fd20a9a1eb2187efdddb8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinkConnection)))
  "Returns md5sum for a message object of type 'LinkConnection"
  "3ba1be4318fd20a9a1eb2187efdddb8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinkConnection>)))
  "Returns full string definition for message of type '<LinkConnection>"
  (cl:format cl:nil "# Representation of a topic/action node in the ~%# implementation graph~%~%# unique identifier~%string id~%# type of the topic, e.g. std_msgs/String~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinkConnection)))
  "Returns full string definition for message of type 'LinkConnection"
  (cl:format cl:nil "# Representation of a topic/action node in the ~%# implementation graph~%~%# unique identifier~%string id~%# type of the topic, e.g. std_msgs/String~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinkConnection>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinkConnection>))
  "Converts a ROS message object to a list"
  (cl:list 'LinkConnection
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
))
