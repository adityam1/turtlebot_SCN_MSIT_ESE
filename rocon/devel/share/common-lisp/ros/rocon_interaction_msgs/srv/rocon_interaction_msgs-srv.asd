
(cl:in-package :asdf)

(defsystem "rocon_interaction_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_interaction_msgs-msg
)
  :components ((:file "_package")
    (:file "GetRoles" :depends-on ("_package_GetRoles"))
    (:file "_package_GetRoles" :depends-on ("_package"))
    (:file "RequestInteraction" :depends-on ("_package_RequestInteraction"))
    (:file "_package_RequestInteraction" :depends-on ("_package"))
    (:file "SetInteractions" :depends-on ("_package_SetInteractions"))
    (:file "_package_SetInteractions" :depends-on ("_package"))
    (:file "GetInteraction" :depends-on ("_package_GetInteraction"))
    (:file "_package_GetInteraction" :depends-on ("_package"))
    (:file "GetInteractions" :depends-on ("_package_GetInteractions"))
    (:file "_package_GetInteractions" :depends-on ("_package"))
  ))