; Auto-generated. Do not edit!


(cl:in-package rocon_device_msgs-srv)


;//! \htmlinclude GetDeviceList-request.msg.html

(cl:defclass <GetDeviceList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDeviceList-request (<GetDeviceList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_device_msgs-srv:<GetDeviceList-request> is deprecated: use rocon_device_msgs-srv:GetDeviceList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceList-request>) ostream)
  "Serializes a message object of type '<GetDeviceList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceList-request>) istream)
  "Deserializes a message object of type '<GetDeviceList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceList-request>)))
  "Returns string type for a service object of type '<GetDeviceList-request>"
  "rocon_device_msgs/GetDeviceListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceList-request)))
  "Returns string type for a service object of type 'GetDeviceList-request"
  "rocon_device_msgs/GetDeviceListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceList-request>)))
  "Returns md5sum for a message object of type '<GetDeviceList-request>"
  "47ac4241194bb5519686779949c9843b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceList-request)))
  "Returns md5sum for a message object of type 'GetDeviceList-request"
  "47ac4241194bb5519686779949c9843b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceList-request>)))
  "Returns full string definition for message of type '<GetDeviceList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceList-request)))
  "Returns full string definition for message of type 'GetDeviceList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceList-request
))
;//! \htmlinclude GetDeviceList-response.msg.html

(cl:defclass <GetDeviceList-response> (roslisp-msg-protocol:ros-message)
  ((devices
    :reader devices
    :initarg :devices
    :type (cl:vector rocon_device_msgs-msg:Device)
   :initform (cl:make-array 0 :element-type 'rocon_device_msgs-msg:Device :initial-element (cl:make-instance 'rocon_device_msgs-msg:Device))))
)

(cl:defclass GetDeviceList-response (<GetDeviceList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_device_msgs-srv:<GetDeviceList-response> is deprecated: use rocon_device_msgs-srv:GetDeviceList-response instead.")))

(cl:ensure-generic-function 'devices-val :lambda-list '(m))
(cl:defmethod devices-val ((m <GetDeviceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_device_msgs-srv:devices-val is deprecated.  Use rocon_device_msgs-srv:devices instead.")
  (devices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceList-response>) ostream)
  "Serializes a message object of type '<GetDeviceList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'devices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'devices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceList-response>) istream)
  "Deserializes a message object of type '<GetDeviceList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceList-response>)))
  "Returns string type for a service object of type '<GetDeviceList-response>"
  "rocon_device_msgs/GetDeviceListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceList-response)))
  "Returns string type for a service object of type 'GetDeviceList-response"
  "rocon_device_msgs/GetDeviceListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceList-response>)))
  "Returns md5sum for a message object of type '<GetDeviceList-response>"
  "47ac4241194bb5519686779949c9843b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceList-response)))
  "Returns md5sum for a message object of type 'GetDeviceList-response"
  "47ac4241194bb5519686779949c9843b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceList-response>)))
  "Returns full string definition for message of type '<GetDeviceList-response>"
  (cl:format cl:nil "Device[] devices~%~%~%================================================================================~%MSG: rocon_device_msgs/Device~%string label~%string type~%string uuid~%rocon_std_msgs/KeyValue[] data~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceList-response)))
  "Returns full string definition for message of type 'GetDeviceList-response"
  (cl:format cl:nil "Device[] devices~%~%~%================================================================================~%MSG: rocon_device_msgs/Device~%string label~%string type~%string uuid~%rocon_std_msgs/KeyValue[] data~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'devices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceList-response
    (cl:cons ':devices (devices msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeviceList)))
  'GetDeviceList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeviceList)))
  'GetDeviceList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceList)))
  "Returns string type for a service object of type '<GetDeviceList>"
  "rocon_device_msgs/GetDeviceList")