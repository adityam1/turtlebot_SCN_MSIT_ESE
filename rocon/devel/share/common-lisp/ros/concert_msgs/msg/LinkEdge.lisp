; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude LinkEdge.msg.html

(cl:defclass <LinkEdge> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:string
    :initform "")
   (finish
    :reader finish
    :initarg :finish
    :type cl:string
    :initform "")
   (remap_from
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

(cl:defclass LinkEdge (<LinkEdge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinkEdge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinkEdge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<LinkEdge> is deprecated: use concert_msgs-msg:LinkEdge instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <LinkEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:start-val is deprecated.  Use concert_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'finish-val :lambda-list '(m))
(cl:defmethod finish-val ((m <LinkEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:finish-val is deprecated.  Use concert_msgs-msg:finish instead.")
  (finish m))

(cl:ensure-generic-function 'remap_from-val :lambda-list '(m))
(cl:defmethod remap_from-val ((m <LinkEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:remap_from-val is deprecated.  Use concert_msgs-msg:remap_from instead.")
  (remap_from m))

(cl:ensure-generic-function 'remap_to-val :lambda-list '(m))
(cl:defmethod remap_to-val ((m <LinkEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:remap_to-val is deprecated.  Use concert_msgs-msg:remap_to instead.")
  (remap_to m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinkEdge>) ostream)
  "Serializes a message object of type '<LinkEdge>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'finish))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'finish))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinkEdge>) istream)
  "Deserializes a message object of type '<LinkEdge>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'finish) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'finish) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinkEdge>)))
  "Returns string type for a message object of type '<LinkEdge>"
  "concert_msgs/LinkEdge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinkEdge)))
  "Returns string type for a message object of type 'LinkEdge"
  "concert_msgs/LinkEdge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinkEdge>)))
  "Returns md5sum for a message object of type '<LinkEdge>"
  "01f86ee3e51dd78d2e2153a94d6f3865")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinkEdge)))
  "Returns md5sum for a message object of type 'LinkEdge"
  "01f86ee3e51dd78d2e2153a94d6f3865")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinkEdge>)))
  "Returns full string definition for message of type '<LinkEdge>"
  (cl:format cl:nil "# Edge of the implementation graph. Client-Topic, or ~%# Topic-Client or Client-Action or Action-Client~%~%string start~%string finish~%string remap_from~%string remap_to~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinkEdge)))
  "Returns full string definition for message of type 'LinkEdge"
  (cl:format cl:nil "# Edge of the implementation graph. Client-Topic, or ~%# Topic-Client or Client-Action or Action-Client~%~%string start~%string finish~%string remap_from~%string remap_to~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinkEdge>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'start))
     4 (cl:length (cl:slot-value msg 'finish))
     4 (cl:length (cl:slot-value msg 'remap_from))
     4 (cl:length (cl:slot-value msg 'remap_to))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinkEdge>))
  "Converts a ROS message object to a list"
  (cl:list 'LinkEdge
    (cl:cons ':start (start msg))
    (cl:cons ':finish (finish msg))
    (cl:cons ':remap_from (remap_from msg))
    (cl:cons ':remap_to (remap_to msg))
))
