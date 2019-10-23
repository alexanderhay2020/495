
(cl:in-package :asdf)

(defsystem "crazy_turtle-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :turtlesim-msg
)
  :components ((:file "_package")
    (:file "Switch" :depends-on ("_package_Switch"))
    (:file "_package_Switch" :depends-on ("_package"))
  ))