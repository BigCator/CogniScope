
(cl:in-package :asdf)

(defsystem "rslidar_sdk-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "gps_location" :depends-on ("_package_gps_location"))
    (:file "_package_gps_location" :depends-on ("_package"))
  ))