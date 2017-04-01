
(cl:in-package :asdf)

(defsystem "rocon_service_pair_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :uuid_msgs-msg
)
  :components ((:file "_package")
    (:file "TestiesPairResponse" :depends-on ("_package_TestiesPairResponse"))
    (:file "_package_TestiesPairResponse" :depends-on ("_package"))
    (:file "TestiesRequest" :depends-on ("_package_TestiesRequest"))
    (:file "_package_TestiesRequest" :depends-on ("_package"))
    (:file "TestiesPair" :depends-on ("_package_TestiesPair"))
    (:file "_package_TestiesPair" :depends-on ("_package"))
    (:file "TestiesPairRequest" :depends-on ("_package_TestiesPairRequest"))
    (:file "_package_TestiesPairRequest" :depends-on ("_package"))
    (:file "TestiesResponse" :depends-on ("_package_TestiesResponse"))
    (:file "_package_TestiesResponse" :depends-on ("_package"))
  ))