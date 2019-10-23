
(cl:in-package :asdf)

(defsystem "turtle_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurtleVel" :depends-on ("_package_TurtleVel"))
    (:file "_package_TurtleVel" :depends-on ("_package"))
  ))