
(cl:in-package :asdf)

(defsystem "rocon_std_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetPlatformInfo" :depends-on ("_package_GetPlatformInfo"))
    (:file "_package_GetPlatformInfo" :depends-on ("_package"))
  ))