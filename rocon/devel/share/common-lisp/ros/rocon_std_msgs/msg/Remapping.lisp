; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-msg)


;//! \htmlinclude Remapping.msg.html

(cl:defclass <Remapping> (roslisp-msg-protocol:ros-message)
  ((remap_from
    :reader remap_from
    :initarg :remap_from
    :type cl:string
    :initform "")
   (remap_to
    :reader remap_to
    :initarg :remap_to
    :type cl:string
    :initform ""))
)

(cl:defclass Remapping (<Remapping>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Remapping>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Remapping)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-msg:<Remapping> is deprecated: use rocon_std_msgs-msg:Remapping instead.")))

(cl:ensure-generic-function 'remap_from-val :lambda-list '(m))
(cl:defmethod remap_from-val ((m <Remapping>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:remap_from-val is deprecated.  Use rocon_std_msgs-msg:remap_from instead.")
  (remap_from m))

(cl:ensure-generic-function 'remap_to-val :lambda-list '(m))
(cl:defmethod remap_to-val ((m <Remapping>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:remap_to-val is deprecated.  Use rocon_std_msgs-msg:remap_to instead.")
  (remap_to m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Remapping>) ostream)
  "Serializes a message object of type '<Remapping>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remap_from))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remap_from))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remap_to))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remap_to))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Remapping>) istream)
  "Deserializes a message object of type '<Remapping>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remap_from) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remap_from) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remap_to) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remap_to) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Remapping>)))
  "Returns string type for a message object of type '<Remapping>"
  "rocon_std_msgs/Remapping")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Remapping)))
  "Returns string type for a message object of type 'Remapping"
  "rocon_std_msgs/Remapping")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Remapping>)))
  "Returns md5sum for a message object of type '<Remapping>"
  "26f16c667d483280bc5d040bf2c0cd8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Remapping)))
  "Returns md5sum for a message object of type 'Remapping"
  "26f16c667d483280bc5d040bf2c0cd8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Remapping>)))
  "Returns full string definition for message of type '<Remapping>"
  (cl:format cl:nil "# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Remapping)))
  "Returns full string definition for message of type 'Remapping"
  (cl:format cl:nil "# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Remapping>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'remap_from))
     4 (cl:length (cl:slot-value msg 'remap_to))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Remapping>))
  "Converts a ROS message object to a list"
  (cl:list 'Remapping
    (cl:cons ':remap_from (remap_from msg))
    (cl:cons ':remap_to (remap_to msg))
))
