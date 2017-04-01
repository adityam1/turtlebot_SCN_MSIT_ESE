
(cl:in-package :asdf)

(defsystem "rocon_app_manager_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_app_manager_msgs-msg
               :rocon_std_msgs-msg
)
  :components ((:file "_package")
    (:file "StartRapp" :depends-on ("_package_StartRapp"))
    (:file "_package_StartRapp" :depends-on ("_package"))
    (:file "Init" :depends-on ("_package_Init"))
    (:file "_package_Init" :depends-on ("_package"))
    (:file "Invite" :depends-on ("_package_Invite"))
    (:file "_package_Invite" :depends-on ("_package"))
    (:file "StopRapp" :depends-on ("_package_StopRapp"))
    (:file "_package_StopRapp" :depends-on ("_package"))
    (:file "GetRappList" :depends-on ("_package_GetRappList"))
    (:file "_package_GetRappList" :depends-on ("_package"))
  ))