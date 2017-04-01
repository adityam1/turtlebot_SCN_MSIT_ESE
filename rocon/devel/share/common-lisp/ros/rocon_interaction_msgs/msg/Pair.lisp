; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude Pair.msg.html

(cl:defclass <Pair> (roslisp-msg-protocol:ros-message)
  ((rapp
    :reader rapp
    :initarg :rapp
    :type cl:string
    :initform "")
   (remocon
    :reader remocon
    :initarg :remocon
    :type cl:string
    :initform ""))
)

(cl:defclass Pair (<Pair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<Pair> is deprecated: use rocon_interaction_msgs-msg:Pair instead.")))

(cl:ensure-generic-function 'rapp-val :lambda-list '(m))
(cl:defmethod rapp-val ((m <Pair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:rapp-val is deprecated.  Use rocon_interaction_msgs-msg:rapp instead.")
  (rapp m))

(cl:ensure-generic-function 'remocon-val :lambda-list '(m))
(cl:defmethod remocon-val ((m <Pair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:remocon-val is deprecated.  Use rocon_interaction_msgs-msg:remocon instead.")
  (remocon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pair>) ostream)
  "Serializes a message object of type '<Pair>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rapp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rapp))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remocon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remocon))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pair>) istream)
  "Deserializes a message object of type '<Pair>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rapp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rapp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remocon) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remocon) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pair>)))
  "Returns string type for a message object of type '<Pair>"
  "rocon_interaction_msgs/Pair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pair)))
  "Returns string type for a message object of type 'Pair"
  "rocon_interaction_msgs/Pair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pair>)))
  "Returns md5sum for a message object of type '<Pair>"
  "eee13ef64ff35326a7c0b99255f90428")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pair)))
  "Returns md5sum for a message object of type 'Pair"
  "eee13ef64ff35326a7c0b99255f90428")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pair>)))
  "Returns full string definition for message of type '<Pair>"
  (cl:format cl:nil "# Indicates what pairs (rapp, remocon) are running at any point in time.~%# If none, these values drop back to empty strings.~%~%string rapp~%string remocon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pair)))
  "Returns full string definition for message of type 'Pair"
  (cl:format cl:nil "# Indicates what pairs (rapp, remocon) are running at any point in time.~%# If none, these values drop back to empty strings.~%~%string rapp~%string remocon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pair>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rapp))
     4 (cl:length (cl:slot-value msg 'remocon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pair>))
  "Converts a ROS message object to a list"
  (cl:list 'Pair
    (cl:cons ':rapp (rapp msg))
    (cl:cons ':remocon (remocon msg))
))
