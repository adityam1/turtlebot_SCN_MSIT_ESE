; Auto-generated. Do not edit!


(cl:in-package concert_workflow_engine_msgs-msg)


;//! \htmlinclude EnableWorkflows.msg.html

(cl:defclass <EnableWorkflows> (roslisp-msg-protocol:ros-message)
  ((service_name
    :reader service_name
    :initarg :service_name
    :type cl:string
    :initform "")
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (workflows
    :reader workflows
    :initarg :workflows
    :type (cl:vector concert_workflow_engine_msgs-msg:Workflow)
   :initform (cl:make-array 0 :element-type 'concert_workflow_engine_msgs-msg:Workflow :initial-element (cl:make-instance 'concert_workflow_engine_msgs-msg:Workflow))))
)

(cl:defclass EnableWorkflows (<EnableWorkflows>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableWorkflows>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableWorkflows)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_workflow_engine_msgs-msg:<EnableWorkflows> is deprecated: use concert_workflow_engine_msgs-msg:EnableWorkflows instead.")))

(cl:ensure-generic-function 'service_name-val :lambda-list '(m))
(cl:defmethod service_name-val ((m <EnableWorkflows>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_workflow_engine_msgs-msg:service_name-val is deprecated.  Use concert_workflow_engine_msgs-msg:service_name instead.")
  (service_name m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <EnableWorkflows>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_workflow_engine_msgs-msg:enable-val is deprecated.  Use concert_workflow_engine_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'workflows-val :lambda-list '(m))
(cl:defmethod workflows-val ((m <EnableWorkflows>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_workflow_engine_msgs-msg:workflows-val is deprecated.  Use concert_workflow_engine_msgs-msg:workflows instead.")
  (workflows m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableWorkflows>) ostream)
  "Serializes a message object of type '<EnableWorkflows>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'workflows))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'workflows))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableWorkflows>) istream)
  "Deserializes a message object of type '<EnableWorkflows>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'service_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'service_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'workflows) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'workflows)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_workflow_engine_msgs-msg:Workflow))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableWorkflows>)))
  "Returns string type for a message object of type '<EnableWorkflows>"
  "concert_workflow_engine_msgs/EnableWorkflows")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableWorkflows)))
  "Returns string type for a message object of type 'EnableWorkflows"
  "concert_workflow_engine_msgs/EnableWorkflows")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableWorkflows>)))
  "Returns md5sum for a message object of type '<EnableWorkflows>"
  "cacdbbe404b169f5b2bf8c4c9a373315")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableWorkflows)))
  "Returns md5sum for a message object of type 'EnableWorkflows"
  "cacdbbe404b169f5b2bf8c4c9a373315")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableWorkflows>)))
  "Returns full string definition for message of type '<EnableWorkflows>"
  (cl:format cl:nil "string service_name~%bool enable~%Workflow[] workflows~%================================================================================~%MSG: concert_workflow_engine_msgs/Workflow~%string data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableWorkflows)))
  "Returns full string definition for message of type 'EnableWorkflows"
  (cl:format cl:nil "string service_name~%bool enable~%Workflow[] workflows~%================================================================================~%MSG: concert_workflow_engine_msgs/Workflow~%string data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableWorkflows>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service_name))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'workflows) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableWorkflows>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableWorkflows
    (cl:cons ':service_name (service_name msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':workflows (workflows msg))
))
