
(cl:in-package :asdf)

(defsystem "control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlDebug" :depends-on ("_package_ControlDebug"))
    (:file "_package_ControlDebug" :depends-on ("_package"))
    (:file "VelocityReport" :depends-on ("_package_VelocityReport"))
    (:file "_package_VelocityReport" :depends-on ("_package"))
  ))