; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude Pairing.msg.html

(cl:defclass <Pairing> (roslisp-msg-protocol:ros-message)
  ((rapp
    :reader rapp
    :initarg :rapp
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

(cl:defclass Pairing (<Pairing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pairing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pairing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<Pairing> is deprecated: use rocon_interaction_msgs-msg:Pairing instead.")))

(cl:ensure-generic-function 'rapp-val :lambda-list '(m))
(cl:defmethod rapp-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:rapp-val is deprecated.  Use rocon_interaction_msgs-msg:rapp instead.")
  (rapp m))

(cl:ensure-generic-function 'remappings-val :lambda-list '(m))
(cl:defmethod remappings-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:remappings-val is deprecated.  Use rocon_interaction_msgs-msg:remappings instead.")
  (remappings m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:parameters-val is deprecated.  Use rocon_interaction_msgs-msg:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pairing>) ostream)
  "Serializes a message object of type '<Pairing>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rapp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rapp))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pairing>) istream)
  "Deserializes a message object of type '<Pairing>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rapp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rapp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pairing>)))
  "Returns string type for a message object of type '<Pairing>"
  "rocon_interaction_msgs/Pairing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pairing)))
  "Returns string type for a message object of type 'Pairing"
  "rocon_interaction_msgs/Pairing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pairing>)))
  "Returns md5sum for a message object of type '<Pairing>"
  "f2a37586e7b5f4eb13fa7aa69cfea487")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pairing)))
  "Returns md5sum for a message object of type 'Pairing"
  "f2a37586e7b5f4eb13fa7aa69cfea487")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pairing>)))
  "Returns full string definition for message of type '<Pairing>"
  (cl:format cl:nil "# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pairing)))
  "Returns full string definition for message of type 'Pairing"
  (cl:format cl:nil "# Properties of a paired app that is destined to work with a rocon interaction.~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pairing>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rapp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remappings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pairing>))
  "Converts a ROS message object to a list"
  (cl:list 'Pairing
    (cl:cons ':rapp (rapp msg))
    (cl:cons ':remappings (remappings msg))
    (cl:cons ':parameters (parameters msg))
))
