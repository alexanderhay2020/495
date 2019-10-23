
(cl:in-package :asdf)

(defsystem "turtle_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :turtle_control-msg
)
  :components ((:file "_package")
    (:file "VelTranslate" :depends-on ("_package_VelTranslate"))
    (:file "_package_VelTranslate" :depends-on ("_package"))
  ))