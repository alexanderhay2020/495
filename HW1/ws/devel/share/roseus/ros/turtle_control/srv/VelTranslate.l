;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::VelTranslate)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'VelTranslate (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::VELTRANSLATE")
  (make-package "TURTLE_CONTROL::VELTRANSLATE"))
(unless (find-package "TURTLE_CONTROL::VELTRANSLATEREQUEST")
  (make-package "TURTLE_CONTROL::VELTRANSLATEREQUEST"))
(unless (find-package "TURTLE_CONTROL::VELTRANSLATERESPONSE")
  (make-package "TURTLE_CONTROL::VELTRANSLATERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass turtle_control::VelTranslateRequest
  :super ros::object
  :slots (_TurtleVel ))

(defmethod turtle_control::VelTranslateRequest
  (:init
   (&key
    ((:TurtleVel __TurtleVel) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _TurtleVel __TurtleVel)
   self)
  (:TurtleVel
   (&rest __TurtleVel)
   (if (keywordp (car __TurtleVel))
       (send* _TurtleVel __TurtleVel)
     (progn
       (if __TurtleVel (setq _TurtleVel (car __TurtleVel)))
       _TurtleVel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _TurtleVel
    (send _TurtleVel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _TurtleVel
       (send _TurtleVel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _TurtleVel
     (send _TurtleVel :deserialize buf ptr-) (incf ptr- (send _TurtleVel :serialization-length))
   ;;
   self)
  )

(defclass turtle_control::VelTranslateResponse
  :super ros::object
  :slots (_TurtleVelReturn ))

(defmethod turtle_control::VelTranslateResponse
  (:init
   (&key
    ((:TurtleVelReturn __TurtleVelReturn) (instance turtle_control::TurtleVel :init))
    )
   (send-super :init)
   (setq _TurtleVelReturn __TurtleVelReturn)
   self)
  (:TurtleVelReturn
   (&rest __TurtleVelReturn)
   (if (keywordp (car __TurtleVelReturn))
       (send* _TurtleVelReturn __TurtleVelReturn)
     (progn
       (if __TurtleVelReturn (setq _TurtleVelReturn (car __TurtleVelReturn)))
       _TurtleVelReturn)))
  (:serialization-length
   ()
   (+
    ;; turtle_control/TurtleVel _TurtleVelReturn
    (send _TurtleVelReturn :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtle_control/TurtleVel _TurtleVelReturn
       (send _TurtleVelReturn :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtle_control/TurtleVel _TurtleVelReturn
     (send _TurtleVelReturn :deserialize buf ptr-) (incf ptr- (send _TurtleVelReturn :serialization-length))
   ;;
   self)
  )

(defclass turtle_control::VelTranslate
  :super ros::object
  :slots ())

(setf (get turtle_control::VelTranslate :md5sum-) "0b2d8c5b37cf4fe9f75f19f798d7275b")
(setf (get turtle_control::VelTranslate :datatype-) "turtle_control/VelTranslate")
(setf (get turtle_control::VelTranslate :request) turtle_control::VelTranslateRequest)
(setf (get turtle_control::VelTranslate :response) turtle_control::VelTranslateResponse)

(defmethod turtle_control::VelTranslateRequest
  (:response () (instance turtle_control::VelTranslateResponse :init)))

(setf (get turtle_control::VelTranslateRequest :md5sum-) "0b2d8c5b37cf4fe9f75f19f798d7275b")
(setf (get turtle_control::VelTranslateRequest :datatype-) "turtle_control/VelTranslateRequest")
(setf (get turtle_control::VelTranslateRequest :definition-)
      "geometry_msgs/Twist TurtleVel

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
TurtleVel TurtleVelReturn


================================================================================
MSG: turtle_control/TurtleVel
float32 linear # linear velocity of turtle
float32 angular # angular velocity of turtle
")

(setf (get turtle_control::VelTranslateResponse :md5sum-) "0b2d8c5b37cf4fe9f75f19f798d7275b")
(setf (get turtle_control::VelTranslateResponse :datatype-) "turtle_control/VelTranslateResponse")
(setf (get turtle_control::VelTranslateResponse :definition-)
      "geometry_msgs/Twist TurtleVel

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
TurtleVel TurtleVelReturn


================================================================================
MSG: turtle_control/TurtleVel
float32 linear # linear velocity of turtle
float32 angular # angular velocity of turtle
")



(provide :turtle_control/VelTranslate "0b2d8c5b37cf4fe9f75f19f798d7275b")


