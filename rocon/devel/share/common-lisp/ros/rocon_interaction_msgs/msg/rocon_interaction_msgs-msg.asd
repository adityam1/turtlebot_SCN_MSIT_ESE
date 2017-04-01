
(cl:in-package :asdf)

(defsystem "rocon_interaction_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_std_msgs-msg
               :uuid_msgs-msg
)
  :components ((:file "_package")
    (:file "InteractiveClients" :depends-on ("_package_InteractiveClients"))
    (:file "_package_InteractiveClients" :depends-on ("_package"))
    (:file "ErrorCodes" :depends-on ("_package_ErrorCodes"))
    (:file "_package_ErrorCodes" :depends-on ("_package"))
    (:file "InteractiveClient" :depends-on ("_package_InteractiveClient"))
    (:file "_package_InteractiveClient" :depends-on ("_package"))
    (:file "Strings" :depends-on ("_package_Strings"))
    (:file "_package_Strings" :depends-on ("_package"))
    (:file "Interaction" :depends-on ("_package_Interaction"))
    (:file "_package_Interaction" :depends-on ("_package"))
    (:file "Pair" :depends-on ("_package_Pair"))
    (:file "_package_Pair" :depends-on ("_package"))
    (:file "Pairing" :depends-on ("_package_Pairing"))
    (:file "_package_Pairing" :depends-on ("_package"))
    (:file "RemoconStatus" :depends-on ("_package_RemoconStatus"))
    (:file "_package_RemoconStatus" :depends-on ("_package"))
  ))