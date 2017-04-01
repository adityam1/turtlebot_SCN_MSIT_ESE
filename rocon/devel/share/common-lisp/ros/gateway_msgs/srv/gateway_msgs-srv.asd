
(cl:in-package :asdf)

(defsystem "gateway_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :gateway_msgs-msg
)
  :components ((:file "_package")
    (:file "Remote" :depends-on ("_package_Remote"))
    (:file "_package_Remote" :depends-on ("_package"))
    (:file "ConnectHub" :depends-on ("_package_ConnectHub"))
    (:file "_package_ConnectHub" :depends-on ("_package"))
    (:file "AdvertiseAll" :depends-on ("_package_AdvertiseAll"))
    (:file "_package_AdvertiseAll" :depends-on ("_package"))
    (:file "SetWatcherPeriod" :depends-on ("_package_SetWatcherPeriod"))
    (:file "_package_SetWatcherPeriod" :depends-on ("_package"))
    (:file "RemoteGatewayInfo" :depends-on ("_package_RemoteGatewayInfo"))
    (:file "_package_RemoteGatewayInfo" :depends-on ("_package"))
    (:file "RemoteAll" :depends-on ("_package_RemoteAll"))
    (:file "_package_RemoteAll" :depends-on ("_package"))
    (:file "Advertise" :depends-on ("_package_Advertise"))
    (:file "_package_Advertise" :depends-on ("_package"))
  ))