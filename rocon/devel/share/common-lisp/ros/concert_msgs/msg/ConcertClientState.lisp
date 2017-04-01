; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude ConcertClientState.msg.html

(cl:defclass <ConcertClientState> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ConcertClientState (<ConcertClientState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConcertClientState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConcertClientState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<ConcertClientState> is deprecated: use concert_msgs-msg:ConcertClientState instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConcertClientState>)))
    "Constants for message type '<ConcertClientState>"
  '((:PENDING . pending)
    (:BAD . bad)
    (:BLOCKING . blocking)
    (:BUSY . busy)
    (:UNINVITED . uninvited)
    (:JOINING . joining)
    (:AVAILABLE . available)
    (:MISSING . missing)
    (:GONE . gone))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConcertClientState)))
    "Constants for message type 'ConcertClientState"
  '((:PENDING . pending)
    (:BAD . bad)
    (:BLOCKING . blocking)
    (:BUSY . busy)
    (:UNINVITED . uninvited)
    (:JOINING . joining)
    (:AVAILABLE . available)
    (:MISSING . missing)
    (:GONE . gone))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConcertClientState>) ostream)
  "Serializes a message object of type '<ConcertClientState>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConcertClientState>) istream)
  "Deserializes a message object of type '<ConcertClientState>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConcertClientState>)))
  "Returns string type for a message object of type '<ConcertClientState>"
  "concert_msgs/ConcertClientState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConcertClientState)))
  "Returns string type for a message object of type 'ConcertClientState"
  "concert_msgs/ConcertClientState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConcertClientState>)))
  "Returns md5sum for a message object of type '<ConcertClientState>"
  "216b7a80921438395a695bb265efcaf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConcertClientState)))
  "Returns md5sum for a message object of type 'ConcertClientState"
  "216b7a80921438395a695bb265efcaf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConcertClientState>)))
  "Returns full string definition for message of type '<ConcertClientState>"
  (cl:format cl:nil "# States of concert clients, these should always be synced with what is provided in ConductorGraph.msg~%# (for completeness, but also because I do some funny magic to extra the possible list of states from there). ~%~%# pending introspection, the client's advertised handles have not yet been pulled in so we can't do anything yet~%string PENDING   = pending~%# the ip is invalid, unreachable or some other problem meaning we have to absolutely ignore it~%string BAD       = bad~%# happens if it is firewalling, we are remote and it is local only, we aren't in its whitelist, or in its blacklist~%string BLOCKING  = blocking~%# busy serving another remote controller~%string BUSY      = busy~%# waiting for a concert to invite it~%string UNINVITED = uninvited~%# in the middle of joining (or rejecting) an invitation from our concert~%string JOINING   = joining~%# is available for use inside this concert~%string AVAILABLE = available~%# has lost connection (wireless)~%string MISSING   = missing~%# has left the concert~%string GONE      = gone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConcertClientState)))
  "Returns full string definition for message of type 'ConcertClientState"
  (cl:format cl:nil "# States of concert clients, these should always be synced with what is provided in ConductorGraph.msg~%# (for completeness, but also because I do some funny magic to extra the possible list of states from there). ~%~%# pending introspection, the client's advertised handles have not yet been pulled in so we can't do anything yet~%string PENDING   = pending~%# the ip is invalid, unreachable or some other problem meaning we have to absolutely ignore it~%string BAD       = bad~%# happens if it is firewalling, we are remote and it is local only, we aren't in its whitelist, or in its blacklist~%string BLOCKING  = blocking~%# busy serving another remote controller~%string BUSY      = busy~%# waiting for a concert to invite it~%string UNINVITED = uninvited~%# in the middle of joining (or rejecting) an invitation from our concert~%string JOINING   = joining~%# is available for use inside this concert~%string AVAILABLE = available~%# has lost connection (wireless)~%string MISSING   = missing~%# has left the concert~%string GONE      = gone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConcertClientState>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConcertClientState>))
  "Converts a ROS message object to a list"
  (cl:list 'ConcertClientState
))
