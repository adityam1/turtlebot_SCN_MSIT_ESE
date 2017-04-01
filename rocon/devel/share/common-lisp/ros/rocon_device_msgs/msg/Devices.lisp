; Auto-generated. Do not edit!


(cl:in-package rocon_device_msgs-msg)


;//! \htmlinclude Devices.msg.html

(cl:defclass <Devices> (roslisp-msg-protocol:ros-message)
  ((devices
    :reader devices
    :initarg :devices
    :type (cl:vector rocon_device_msgs-msg:Device)
   :initform (cl:make-array 0 :element-type 'rocon_device_msgs-msg:Device :initial-element (cl:make-instance 'rocon_device_msgs-msg:Device))))
)

(cl:defclass Devices (<Devices>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Devices>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Devices)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_device_msgs-msg:<Devices> is deprecated: use rocon_device_msgs-msg:Devices instead.")))

(cl:ensure-generic-function 'devices-val :lambda-list '(m))
(cl:defmethod devices-val ((m <Devices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-msg:devices-val is deprecated.  Use rocon_device_msgs-msg:devices instead.")
  (devices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Devices>) ostream)
  "Serializes a message object of type '<Devices>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'devices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'devices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Devices>) istream)
  "Deserializes a message object of type '<Devices>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'devices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'devices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_device_msgs-msg:Device))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Devices>)))
  "Returns string type for a message object of type '<Devices>"
  "rocon_device_msgs/Devices")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Devices)))
  "Returns string type for a message object of type 'Devices"
  "rocon_device_msgs/Devices")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Devices>)))
  "Returns md5sum for a message object of type '<Devices>"
  "47ac4241194bb5519686779949c9843b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Devices)))
  "Returns md5sum for a message object of type 'Devices"
  "47ac4241194bb5519686779949c9843b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Devices>)))
  "Returns full string definition for message of type '<Devices>"
  (cl:format cl:nil "Device[] devices~%~%================================================================================~%MSG: rocon_device_msgs/Device~%string label~%string type~%string uuid~%rocon_std_msgs/KeyValue[] data~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Devices)))
  "Returns full string definition for message of type 'Devices"
  (cl:format cl:nil "Device[] devices~%~%================================================================================~%MSG: rocon_device_msgs/Device~%string label~%string type~%string uuid~%rocon_std_msgs/KeyValue[] data~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Devices>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'devices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Devices>))
  "Converts a ROS message object to a list"
  (cl:list 'Devices
    (cl:cons ':devices (devices msg))
))
