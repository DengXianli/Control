
(cl:in-package :asdf)

(defsystem "can_channel-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ModeCmd" :depends-on ("_package_ModeCmd"))
    (:file "_package_ModeCmd" :depends-on ("_package"))
  ))