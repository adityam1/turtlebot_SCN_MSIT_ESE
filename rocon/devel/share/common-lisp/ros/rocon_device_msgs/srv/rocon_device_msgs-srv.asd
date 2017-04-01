
(cl:in-package :asdf)

(defsystem "rocon_device_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_device_msgs-msg
)
  :components ((:file "_package")
    (:file "GetDeviceList" :depends-on ("_package_GetDeviceList"))
    (:file "_package_GetDeviceList" :depends-on ("_package"))
  ))