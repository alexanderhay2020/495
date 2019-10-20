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
  :slots (_twist ))

(defmethod turtle_control::VelTranslateRequest
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _twist __twist)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(defclass turtle_control::VelTranslateResponse
  :super ros::object
  :slots (_tvel ))

(defmethod turtle_control::VelTranslateResponse
  (:init
   (&key
    ((:tvel __tvel) (instance turtle_control::TurtleVel :init))
    )
   (send-super :init)
   (setq _tvel __tvel)
   self)
  (:tvel
   (&rest __tvel)
   (if (keywordp (car __tvel))
       (send* _tvel __tvel)
     (progn
       (if __tvel (setq _tvel (car __tvel)))
       _tvel)))
  (:serialization-length
   ()
   (+
    ;; turtle_control/TurtleVel _tvel
    (send _tvel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtle_control/TurtleVel _tvel
       (send _tvel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtle_control/TurtleVel _tvel
     (send _tvel :deserialize buf ptr-) (incf ptr- (send _tvel :serialization-length))
   ;;
   self)
  )

(defclass turtle_control::VelTranslate
  :super ros::object
  :slots ())

(setf (get turtle_control::VelTranslate :md5sum-) "d19b4868d4bdb68c53ab457836748ae8")
(setf (get turtle_control::VelTranslate :datatype-) "turtle_control/VelTranslate")
(setf (get turtle_control::VelTranslate :request) turtle_control::VelTranslateRequest)
(setf (get turtle_control::VelTranslate :response) turtle_control::VelTranslateResponse)

(defmethod turtle_control::VelTranslateRequest
  (:response () (instance turtle_control::VelTranslateResponse :init)))

(setf (get turtle_control::VelTranslateRequest :md5sum-) "d19b4868d4bdb68c53ab457836748ae8")
(setf (get turtle_control::VelTranslateRequest :datatype-) "turtle_control/VelTranslateRequest")
(setf (get turtle_control::VelTranslateRequest :definition-)
      "geometry_msgs/Twist twist

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
TurtleVel tvel

================================================================================
MSG: turtle_control/TurtleVel
float64 linear # linear velocity
")

(setf (get turtle_control::VelTranslateResponse :md5sum-) "d19b4868d4bdb68c53ab457836748ae8")
(setf (get turtle_control::VelTranslateResponse :datatype-) "turtle_control/VelTranslateResponse")
(setf (get turtle_control::VelTranslateResponse :definition-)
      "geometry_msgs/Twist twist

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
TurtleVel tvel

================================================================================
MSG: turtle_control/TurtleVel
float64 linear # linear velocity
")



(provide :turtle_control/VelTranslate "d19b4868d4bdb68c53ab457836748ae8")


