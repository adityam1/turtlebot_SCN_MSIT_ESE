
(cl:in-package :asdf)

(defsystem "scheduler_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_std_msgs-msg
               :std_msgs-msg
               :uuid_msgs-msg
)
  :components ((:file "_package")
    (:file "KnownResources" :depends-on ("_package_KnownResources"))
    (:file "_package_KnownResources" :depends-on ("_package"))
    (:file "SchedulerRequests" :depends-on ("_package_SchedulerRequests"))
    (:file "_package_SchedulerRequests" :depends-on ("_package"))
    (:file "Request" :depends-on ("_package_Request"))
    (:file "_package_Request" :depends-on ("_package"))
    (:file "Resource" :depends-on ("_package_Resource"))
    (:file "_package_Resource" :depends-on ("_package"))
    (:file "CurrentStatus" :depends-on ("_package_CurrentStatus"))
    (:file "_package_CurrentStatus" :depends-on ("_package"))
  ))