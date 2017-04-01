; Auto-generated. Do not edit!


(cl:in-package rocon_device_msgs-msg)


;//! \htmlinclude Hue.msg.html

(cl:defclass <Hue> (roslisp-msg-protocol:ros-message)
  ((light_id
    :reader light_id
    :initarg :light_id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (modelid
    :reader modelid
    :initarg :modelid
    :type cl:string
    :initform "")
   (swvesion
    :reader swvesion
    :initarg :swvesion
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type rocon_device_msgs-msg:HueState
    :initform (cl:make-instance 'rocon_device_msgs-msg:HueState)))
)

(cl:defclass Hue (<Hue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_device_msgs-msg:<Hue> is deprecated: use rocon_device_msgs-msg:Hue instead.")))

(cl:ensure-generic-function 'light_id-val :lambda-list '(m))
(cl:defmethod light_id-val ((m <Hue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:light_id-val is deprecated.  Use rocon_device_msgs-msg:light_id instead.")
  (light_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Hue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:type-val is deprecated.  Use rocon_device_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Hue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:name-val is deprecated.  Use rocon_device_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'modelid-val :lambda-list '(m))
(cl:defmethod modelid-val ((m <Hue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:modelid-val is deprecated.  Use rocon_device_msgs-msg:modelid instead.")
  (modelid m))

(cl:ensure-generic-function 'swvesion-val :lambda-list '(m))
(cl:defmethod swvesion-val ((m <Hue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:swvesion-val is deprecated.  Use rocon_device_msgs-msg:swvesion instead.")
  (swvesion m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Hue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:state-val is deprecated.  Use rocon_device_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hue>) ostream)
  "Serializes a message object of type '<Hue>"
  (cl:let* ((signed (cl:slot-value msg 'light_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'modelid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'modelid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'swvesion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'swvesion))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hue>) istream)
  "Deserializes a message object of type '<Hue>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'modelid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'modelid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'swvesion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'swvesion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hue>)))
  "Returns string type for a message object of type '<Hue>"
  "rocon_device_msgs/Hue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hue)))
  "Returns string type for a message object of type 'Hue"
  "rocon_device_msgs/Hue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hue>)))
  "Returns md5sum for a message object of type '<Hue>"
  "468758d766494876ea4e198e409600ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hue)))
  "Returns md5sum for a message object of type 'Hue"
  "468758d766494876ea4e198e409600ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hue>)))
  "Returns full string definition for message of type '<Hue>"
  (cl:format cl:nil "int32 light_id~%string type~%string name~%string modelid~%string swvesion~%HueState state~%================================================================================~%MSG: rocon_device_msgs/HueState~%#pre-define color~%string OFF = \"OFF\"~%string WHITE = \"WHITE\"~%string RED = \"RED\"~%string GREEN = \"GREEN\"~%string BLUE = \"BLUE\"~%string YELLOW = \"YELLOW\"~%string ORANGE = \"ORANGE\"~%string MAGENTA = \"MAGENTA\"~%string VIOLET = \"VIOLET\"~%~%#light on/off status true:on /false:off~%bool on ~%~%#color coordination in HSV color space ~%#http://en.wikipedia.org/wiki/HSL_and_HSV~%uint16 hue #h~%uint8 sat #s~%uint8 bri #v~%~%#light valid status - valid:on /invalid:off~%bool reachable  ~%~%#for set color with pre-define color~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hue)))
  "Returns full string definition for message of type 'Hue"
  (cl:format cl:nil "int32 light_id~%string type~%string name~%string modelid~%string swvesion~%HueState state~%================================================================================~%MSG: rocon_device_msgs/HueState~%#pre-define color~%string OFF = \"OFF\"~%string WHITE = \"WHITE\"~%string RED = \"RED\"~%string GREEN = \"GREEN\"~%string BLUE = \"BLUE\"~%string YELLOW = \"YELLOW\"~%string ORANGE = \"ORANGE\"~%string MAGENTA = \"MAGENTA\"~%string VIOLET = \"VIOLET\"~%~%#light on/off status true:on /false:off~%bool on ~%~%#color coordination in HSV color space ~%#http://en.wikipedia.org/wiki/HSL_and_HSV~%uint16 hue #h~%uint8 sat #s~%uint8 bri #v~%~%#light valid status - valid:on /invalid:off~%bool reachable  ~%~%#for set color with pre-define color~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hue>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'modelid))
     4 (cl:length (cl:slot-value msg 'swvesion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hue>))
  "Converts a ROS message object to a list"
  (cl:list 'Hue
    (cl:cons ':light_id (light_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':modelid (modelid msg))
    (cl:cons ':swvesion (swvesion msg))
    (cl:cons ':state (state msg))
))
