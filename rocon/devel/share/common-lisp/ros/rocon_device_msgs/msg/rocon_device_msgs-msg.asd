
(cl:in-package :asdf)

(defsystem "rocon_device_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_std_msgs-msg
)
  :components ((:file "_package")
    (:file "Device" :depends-on ("_package_Device"))
    (:file "_package_Device" :depends-on ("_package"))
    (:file "Devices" :depends-on ("_package_Devices"))
    (:file "_package_Devices" :depends-on ("_package"))
    (:file "Hue" :depends-on ("_package_Hue"))
    (:file "_package_Hue" :depends-on ("_package"))
    (:file "HueArray" :depends-on ("_package_HueArray"))
    (:file "_package_HueArray" :depends-on ("_package"))
    (:file "HueState" :depends-on ("_package_HueState"))
    (:file "_package_HueState" :depends-on ("_package"))
  ))