; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude SoftwareProfiles.msg.html

(cl:defclass <SoftwareProfiles> (roslisp-msg-protocol:ros-message)
  ((profiles
    :reader profiles
    :initarg :profiles
    :type (cl:vector concert_msgs-msg:SoftwareProfile)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:SoftwareProfile :initial-element (cl:make-instance 'concert_msgs-msg:SoftwareProfile))))
)

(cl:defclass SoftwareProfiles (<SoftwareProfiles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoftwareProfiles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoftwareProfiles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<SoftwareProfiles> is deprecated: use concert_msgs-msg:SoftwareProfiles instead.")))

(cl:ensure-generic-function 'profiles-val :lambda-list '(m))
(cl:defmethod profiles-val ((m <SoftwareProfiles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:profiles-val is deprecated.  Use concert_msgs-msg:profiles instead.")
  (profiles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoftwareProfiles>) ostream)
  "Serializes a message object of type '<SoftwareProfiles>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'profiles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'profiles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoftwareProfiles>) istream)
  "Deserializes a message object of type '<SoftwareProfiles>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'profiles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'profiles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:SoftwareProfile))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoftwareProfiles>)))
  "Returns string type for a message object of type '<SoftwareProfiles>"
  "concert_msgs/SoftwareProfiles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoftwareProfiles)))
  "Returns string type for a message object of type 'SoftwareProfiles"
  "concert_msgs/SoftwareProfiles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoftwareProfiles>)))
  "Returns md5sum for a message object of type '<SoftwareProfiles>"
  "b1749b57e354bf30f98c3179a4fff5d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoftwareProfiles)))
  "Returns md5sum for a message object of type 'SoftwareProfiles"
  "b1749b57e354bf30f98c3179a4fff5d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoftwareProfiles>)))
  "Returns full string definition for message of type '<SoftwareProfiles>"
  (cl:format cl:nil "SoftwareProfile[] profiles ~%~%================================================================================~%MSG: concert_msgs/SoftwareProfile~%# Configurations~%string resource_name~%string name~%string description~%string author~%string launch~%int16  max_count~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoftwareProfiles)))
  "Returns full string definition for message of type 'SoftwareProfiles"
  (cl:format cl:nil "SoftwareProfile[] profiles ~%~%================================================================================~%MSG: concert_msgs/SoftwareProfile~%# Configurations~%string resource_name~%string name~%string description~%string author~%string launch~%int16  max_count~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoftwareProfiles>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'profiles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoftwareProfiles>))
  "Converts a ROS message object to a list"
  (cl:list 'SoftwareProfiles
    (cl:cons ':profiles (profiles msg))
))
