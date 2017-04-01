
(cl:in-package :asdf)

(defsystem "rocon_tutorial_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetAvailableResources" :depends-on ("_package_GetAvailableResources"))
    (:file "_package_GetAvailableResources" :depends-on ("_package"))
  ))