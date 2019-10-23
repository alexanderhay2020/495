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
  :slots (_turtle_vel ))

(defmethod turtle_control::VelTranslateResponse
  (:init
   (&key
    ((:turtle_vel __turtle_vel) (instance turtle_control::TurtleVel :init))
    )
   (send-super :init)
   (setq _turtle_vel __turtle_vel)
   self)
  (:turtle_vel
   (&rest __turtle_vel)
   (if (keywordp (car __turtle_vel))
       (send* _turtle_vel __turtle_vel)
     (progn
       (if __turtle_vel (setq _turtle_vel (car __turtle_vel)))
       _turtle_vel)))
  (:serialization-length
   ()
   (+
    ;; turtle_control/TurtleVel _turtle_vel
    (send _turtle_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtle_control/TurtleVel _turtle_vel
       (send _turtle_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtle_control/TurtleVel _turtle_vel
     (send _turtle_vel :deserialize buf ptr-) (incf ptr- (send _turtle_vel :serialization-length))
   ;;
   self)
  )

(defclass turtle_control::VelTranslate
  :super ros::object
  :slots ())

(setf (get turtle_control::VelTranslate :md5sum-) "cf2a08b505b561a876017bf49e86a2f9")
(setf (get turtle_control::VelTranslate :datatype-) "turtle_control/VelTranslate")
(setf (get turtle_control::VelTranslate :request) turtle_control::VelTranslateRequest)
(setf (get turtle_control::VelTranslate :response) turtle_control::VelTranslateResponse)

(defmethod turtle_control::VelTranslateRequest
  (:response () (instance turtle_control::VelTranslateResponse :init)))

(setf (get turtle_control::VelTranslateRequest :md5sum-) "cf2a08b505b561a876017bf49e86a2f9")
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
TurtleVel turtle_vel


================================================================================
MSG: turtle_control/TurtleVel
float64 linear # 3vector {x, y, z}
float64 angular # 3vector {x, y, z}
")

(setf (get turtle_control::VelTranslateResponse :md5sum-) "cf2a08b505b561a876017bf49e86a2f9")
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
TurtleVel turtle_vel


================================================================================
MSG: turtle_control/TurtleVel
float64 linear # 3vector {x, y, z}
float64 angular # 3vector {x, y, z}
")



(provide :turtle_control/VelTranslate "cf2a08b505b561a876017bf49e86a2f9")


