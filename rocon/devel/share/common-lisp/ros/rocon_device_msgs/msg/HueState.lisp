; Auto-generated. Do not edit!


(cl:in-package rocon_device_msgs-msg)


;//! \htmlinclude HueState.msg.html

(cl:defclass <HueState> (roslisp-msg-protocol:ros-message)
  ((on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil)
   (hue
    :reader hue
    :initarg :hue
    :type cl:fixnum
    :initform 0)
   (sat
    :reader sat
    :initarg :sat
    :type cl:fixnum
    :initform 0)
   (bri
    :reader bri
    :initarg :bri
    :type cl:fixnum
    :initform 0)
   (reachable
    :reader reachable
    :initarg :reachable
    :type cl:boolean
    :initform cl:nil)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass HueState (<HueState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HueState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HueState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_device_msgs-msg:<HueState> is deprecated: use rocon_device_msgs-msg:HueState instead.")))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <HueState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:on-val is deprecated.  Use rocon_device_msgs-msg:on instead.")
  (on m))

(cl:ensure-generic-function 'hue-val :lambda-list '(m))
(cl:defmethod hue-val ((m <HueState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:hue-val is deprecated.  Use rocon_device_msgs-msg:hue instead.")
  (hue m))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <HueState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:sat-val is deprecated.  Use rocon_device_msgs-msg:sat instead.")
  (sat m))

(cl:ensure-generic-function 'bri-val :lambda-list '(m))
(cl:defmethod bri-val ((m <HueState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:bri-val is deprecated.  Use rocon_device_msgs-msg:bri instead.")
  (bri m))

(cl:ensure-generic-function 'reachable-val :lambda-list '(m))
(cl:defmethod reachable-val ((m <HueState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:reachable-val is deprecated.  Use rocon_device_msgs-msg:reachable instead.")
  (reachable m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <HueState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:color-val is deprecated.  Use rocon_device_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HueState>)))
    "Constants for message type '<HueState>"
  '((:OFF . "OFF")
    (:WHITE . "WHITE")
    (:RED . "RED")
    (:GREEN . "GREEN")
    (:BLUE . "BLUE")
    (:YELLOW . "YELLOW")
    (:ORANGE . "ORANGE")
    (:MAGENTA . "MAGENTA")
    (:VIOLET . "VIOLET"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HueState)))
    "Constants for message type 'HueState"
  '((:OFF . "OFF")
    (:WHITE . "WHITE")
    (:RED . "RED")
    (:GREEN . "GREEN")
    (:BLUE . "BLUE")
    (:YELLOW . "YELLOW")
    (:ORANGE . "ORANGE")
    (:MAGENTA . "MAGENTA")
    (:VIOLET . "VIOLET"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HueState>) ostream)
  "Serializes a message object of type '<HueState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bri)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reachable) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HueState>) istream)
  "Deserializes a message object of type '<HueState>"
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bri)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reachable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HueState>)))
  "Returns string type for a message object of type '<HueState>"
  "rocon_device_msgs/HueState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HueState)))
  "Returns string type for a message object of type 'HueState"
  "rocon_device_msgs/HueState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HueState>)))
  "Returns md5sum for a message object of type '<HueState>"
  "3fa6578e37628a062177e792a87fa213")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HueState)))
  "Returns md5sum for a message object of type 'HueState"
  "3fa6578e37628a062177e792a87fa213")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HueState>)))
  "Returns full string definition for message of type '<HueState>"
  (cl:format cl:nil "#pre-define color~%string OFF = \"OFF\"~%string WHITE = \"WHITE\"~%string RED = \"RED\"~%string GREEN = \"GREEN\"~%string BLUE = \"BLUE\"~%string YELLOW = \"YELLOW\"~%string ORANGE = \"ORANGE\"~%string MAGENTA = \"MAGENTA\"~%string VIOLET = \"VIOLET\"~%~%#light on/off status true:on /false:off~%bool on ~%~%#color coordination in HSV color space ~%#http://en.wikipedia.org/wiki/HSL_and_HSV~%uint16 hue #h~%uint8 sat #s~%uint8 bri #v~%~%#light valid status - valid:on /invalid:off~%bool reachable  ~%~%#for set color with pre-define color~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HueState)))
  "Returns full string definition for message of type 'HueState"
  (cl:format cl:nil "#pre-define color~%string OFF = \"OFF\"~%string WHITE = \"WHITE\"~%string RED = \"RED\"~%string GREEN = \"GREEN\"~%string BLUE = \"BLUE\"~%string YELLOW = \"YELLOW\"~%string ORANGE = \"ORANGE\"~%string MAGENTA = \"MAGENTA\"~%string VIOLET = \"VIOLET\"~%~%#light on/off status true:on /false:off~%bool on ~%~%#color coordination in HSV color space ~%#http://en.wikipedia.org/wiki/HSL_and_HSV~%uint16 hue #h~%uint8 sat #s~%uint8 bri #v~%~%#light valid status - valid:on /invalid:off~%bool reachable  ~%~%#for set color with pre-define color~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HueState>))
  (cl:+ 0
     1
     2
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HueState>))
  "Converts a ROS message object to a list"
  (cl:list 'HueState
    (cl:cons ':on (on msg))
    (cl:cons ':hue (hue msg))
    (cl:cons ':sat (sat msg))
    (cl:cons ':bri (bri msg))
    (cl:cons ':reachable (reachable msg))
    (cl:cons ':color (color msg))
))
