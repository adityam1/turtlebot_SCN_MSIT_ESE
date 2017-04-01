; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude LinkGraph.msg.html

(cl:defclass <LinkGraph> (roslisp-msg-protocol:ros-message)
  ((nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector concert_msgs-msg:LinkNode)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:LinkNode :initial-element (cl:make-instance 'concert_msgs-msg:LinkNode)))
   (topics
    :reader topics
    :initarg :topics
    :type (cl:vector concert_msgs-msg:LinkConnection)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:LinkConnection :initial-element (cl:make-instance 'concert_msgs-msg:LinkConnection)))
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector concert_msgs-msg:LinkConnection)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:LinkConnection :initial-element (cl:make-instance 'concert_msgs-msg:LinkConnection)))
   (services
    :reader services
    :initarg :services
    :type (cl:vector concert_msgs-msg:LinkConnection)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:LinkConnection :initial-element (cl:make-instance 'concert_msgs-msg:LinkConnection)))
   (edges
    :reader edges
    :initarg :edges
    :type (cl:vector concert_msgs-msg:LinkEdge)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:LinkEdge :initial-element (cl:make-instance 'concert_msgs-msg:LinkEdge))))
)

(cl:defclass LinkGraph (<LinkGraph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinkGraph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinkGraph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<LinkGraph> is deprecated: use concert_msgs-msg:LinkGraph instead.")))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <LinkGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:nodes-val is deprecated.  Use concert_msgs-msg:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <LinkGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:topics-val is deprecated.  Use concert_msgs-msg:topics instead.")
  (topics m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <LinkGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:actions-val is deprecated.  Use concert_msgs-msg:actions instead.")
  (actions m))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <LinkGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:services-val is deprecated.  Use concert_msgs-msg:services instead.")
  (services m))

(cl:ensure-generic-function 'edges-val :lambda-list '(m))
(cl:defmethod edges-val ((m <LinkGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:edges-val is deprecated.  Use concert_msgs-msg:edges instead.")
  (edges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinkGraph>) ostream)
  "Serializes a message object of type '<LinkGraph>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'topics))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'services))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinkGraph>) istream)
  "Deserializes a message object of type '<LinkGraph>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:LinkNode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:LinkConnection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:LinkConnection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:LinkConnection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:LinkEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinkGraph>)))
  "Returns string type for a message object of type '<LinkGraph>"
  "concert_msgs/LinkGraph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinkGraph)))
  "Returns string type for a message object of type 'LinkGraph"
  "concert_msgs/LinkGraph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinkGraph>)))
  "Returns md5sum for a message object of type '<LinkGraph>"
  "227c6e11d605d4647851f3e358cf10ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinkGraph)))
  "Returns md5sum for a message object of type 'LinkGraph"
  "227c6e11d605d4647851f3e358cf10ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinkGraph>)))
  "Returns full string definition for message of type '<LinkGraph>"
  (cl:format cl:nil "# A list of 'named' nodes, e.g. linux.*.ros.robosem.rocon_teleop~%~%LinkNode[]        nodes~%LinkConnection[]  topics~%LinkConnection[]  actions~%LinkConnection[]  services~%LinkEdge[]        edges~%~%================================================================================~%MSG: concert_msgs/LinkNode~%# Representation of a concert client node in the implementation graph~%~%# unique identifier~%string id~%~%# rocon uri representing the required resource, e.g. rocon:/turtlebot/*#turtle_concert/turtle_stroll~%string resource~%~%# Constraints on how many of these nodes may exist~%#   min, max not set -> min = 1, max = 1~%#   min not set -> min = 1~%#   max not set -> max = UNLIMITED_RESOURCE~%# Zero is a valid minimum value~%int8 UNLIMITED_RESOURCE=-1~%int8 min~%int8 max~%~%# Force matching of robot name (only really useful for demos)~%bool force_name_matching~%~%# public parameters for node~%rocon_std_msgs/KeyValue parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: concert_msgs/LinkConnection~%# Representation of a topic/action node in the ~%# implementation graph~%~%# unique identifier~%string id~%# type of the topic, e.g. std_msgs/String~%string type~%~%================================================================================~%MSG: concert_msgs/LinkEdge~%# Edge of the implementation graph. Client-Topic, or ~%# Topic-Client or Client-Action or Action-Client~%~%string start~%string finish~%string remap_from~%string remap_to~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinkGraph)))
  "Returns full string definition for message of type 'LinkGraph"
  (cl:format cl:nil "# A list of 'named' nodes, e.g. linux.*.ros.robosem.rocon_teleop~%~%LinkNode[]        nodes~%LinkConnection[]  topics~%LinkConnection[]  actions~%LinkConnection[]  services~%LinkEdge[]        edges~%~%================================================================================~%MSG: concert_msgs/LinkNode~%# Representation of a concert client node in the implementation graph~%~%# unique identifier~%string id~%~%# rocon uri representing the required resource, e.g. rocon:/turtlebot/*#turtle_concert/turtle_stroll~%string resource~%~%# Constraints on how many of these nodes may exist~%#   min, max not set -> min = 1, max = 1~%#   min not set -> min = 1~%#   max not set -> max = UNLIMITED_RESOURCE~%# Zero is a valid minimum value~%int8 UNLIMITED_RESOURCE=-1~%int8 min~%int8 max~%~%# Force matching of robot name (only really useful for demos)~%bool force_name_matching~%~%# public parameters for node~%rocon_std_msgs/KeyValue parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: concert_msgs/LinkConnection~%# Representation of a topic/action node in the ~%# implementation graph~%~%# unique identifier~%string id~%# type of the topic, e.g. std_msgs/String~%string type~%~%================================================================================~%MSG: concert_msgs/LinkEdge~%# Edge of the implementation graph. Client-Topic, or ~%# Topic-Client or Client-Action or Action-Client~%~%string start~%string finish~%string remap_from~%string remap_to~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinkGraph>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinkGraph>))
  "Converts a ROS message object to a list"
  (cl:list 'LinkGraph
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':topics (topics msg))
    (cl:cons ':actions (actions msg))
    (cl:cons ':services (services msg))
    (cl:cons ':edges (edges msg))
))
