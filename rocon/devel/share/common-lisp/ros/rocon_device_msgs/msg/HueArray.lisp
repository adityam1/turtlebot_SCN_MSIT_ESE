; Auto-generated. Do not edit!


(cl:in-package rocon_device_msgs-msg)


;//! \htmlinclude HueArray.msg.html

(cl:defclass <HueArray> (roslisp-msg-protocol:ros-message)
  ((hue_list
    :reader hue_list
    :initarg :hue_list
    :type (cl:vector rocon_device_msgs-msg:Hue)
   :initform (cl:make-array 0 :element-type 'rocon_device_msgs-msg:Hue :initial-element (cl:make-instance 'rocon_device_msgs-msg:Hue))))
)

(cl:defclass HueArray (<HueArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HueArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HueArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_device_msgs-msg:<HueArray> is deprecated: use rocon_device_msgs-msg:HueArray instead.")))

(cl:ensure-generic-function 'hue_list-val :lambda-list '(m))
(cl:defmethod hue_list-val ((m <HueArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:hue_list-val is deprecated.  Use rocon_device_msgs-msg:hue_list instead.")
  (hue_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HueArray>) ostream)
  "Serializes a message object of type '<HueArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hue_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hue_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HueArray>) istream)
  "Deserializes a message object of type '<HueArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hue_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hue_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_device_msgs-msg:Hue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HueArray>)))
  "Returns string type for a message object of type '<HueArray>"
  "rocon_device_msgs/HueArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HueArray)))
  "Returns string type for a message object of type 'HueArray"
  "rocon_device_msgs/HueArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HueArray>)))
  "Returns md5sum for a message object of type '<HueArray>"
  "ac7d5d01d5d83c6c14384ec4d7c8d7da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HueArray)))
  "Returns md5sum for a message object of type 'HueArray"
  "ac7d5d01d5d83c6c14384ec4d7c8d7da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HueArray>)))
  "Returns full string definition for message of type '<HueArray>"
  (cl:format cl:nil "Hue[] hue_list~%~%================================================================================~%MSG: rocon_device_msgs/Hue~%int32 light_id~%string type~%string name~%string modelid~%string swvesion~%HueState state~%================================================================================~%MSG: rocon_device_msgs/HueState~%#pre-define color~%string OFF = \"OFF\"~%string WHITE = \"WHITE\"~%string RED = \"RED\"~%string GREEN = \"GREEN\"~%string BLUE = \"BLUE\"~%string YELLOW = \"YELLOW\"~%string ORANGE = \"ORANGE\"~%string MAGENTA = \"MAGENTA\"~%string VIOLET = \"VIOLET\"~%~%#light on/off status true:on /false:off~%bool on ~%~%#color coordination in HSV color space ~%#http://en.wikipedia.org/wiki/HSL_and_HSV~%uint16 hue #h~%uint8 sat #s~%uint8 bri #v~%~%#light valid status - valid:on /invalid:off~%bool reachable  ~%~%#for set color with pre-define color~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HueArray)))
  "Returns full string definition for message of type 'HueArray"
  (cl:format cl:nil "Hue[] hue_list~%~%================================================================================~%MSG: rocon_device_msgs/Hue~%int32 light_id~%string type~%string name~%string modelid~%string swvesion~%HueState state~%================================================================================~%MSG: rocon_device_msgs/HueState~%#pre-define color~%string OFF = \"OFF\"~%string WHITE = \"WHITE\"~%string RED = \"RED\"~%string GREEN = \"GREEN\"~%string BLUE = \"BLUE\"~%string YELLOW = \"YELLOW\"~%string ORANGE = \"ORANGE\"~%string MAGENTA = \"MAGENTA\"~%string VIOLET = \"VIOLET\"~%~%#light on/off status true:on /false:off~%bool on ~%~%#color coordination in HSV color space ~%#http://en.wikipedia.org/wiki/HSL_and_HSV~%uint16 hue #h~%uint8 sat #s~%uint8 bri #v~%~%#light valid status - valid:on /invalid:off~%bool reachable  ~%~%#for set color with pre-define color~%string color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HueArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hue_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HueArray>))
  "Converts a ROS message object to a list"
  (cl:list 'HueArray
    (cl:cons ':hue_list (hue_list msg))
))
