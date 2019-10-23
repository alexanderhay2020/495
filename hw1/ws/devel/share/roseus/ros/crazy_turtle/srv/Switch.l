;; Auto-generated. Do not edit!


(when (boundp 'crazy_turtle::Switch)
  (if (not (find-package "CRAZY_TURTLE"))
    (make-package "CRAZY_TURTLE"))
  (shadow 'Switch (find-package "CRAZY_TURTLE")))
(unless (find-package "CRAZY_TURTLE::SWITCH")
  (make-package "CRAZY_TURTLE::SWITCH"))
(unless (find-package "CRAZY_TURTLE::SWITCHREQUEST")
  (make-package "CRAZY_TURTLE::SWITCHREQUEST"))
(unless (find-package "CRAZY_TURTLE::SWITCHRESPONSE")
  (make-package "CRAZY_TURTLE::SWITCHRESPONSE"))

(in-package "ROS")

(if (not (find-package "TURTLESIM"))
  (ros::roseus-add-msgs "turtlesim"))




(defclass crazy_turtle::SwitchRequest
  :super ros::object
  :slots (_mixed_up ))

(defmethod crazy_turtle::SwitchRequest
  (:init
   (&key
    ((:mixed_up __mixed_up) (instance turtlesim::Pose :init))
    )
   (send-super :init)
   (setq _mixed_up __mixed_up)
   self)
  (:mixed_up
   (&rest __mixed_up)
   (if (keywordp (car __mixed_up))
       (send* _mixed_up __mixed_up)
     (progn
       (if __mixed_up (setq _mixed_up (car __mixed_up)))
       _mixed_up)))
  (:serialization-length
   ()
   (+
    ;; turtlesim/Pose _mixed_up
    (send _mixed_up :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtlesim/Pose _mixed_up
       (send _mixed_up :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtlesim/Pose _mixed_up
     (send _mixed_up :deserialize buf ptr-) (incf ptr- (send _mixed_up :serialization-length))
   ;;
   self)
  )

(defclass crazy_turtle::SwitchResponse
  :super ros::object
  :slots (_x _y ))

(defmethod crazy_turtle::SwitchResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass crazy_turtle::Switch
  :super ros::object
  :slots ())

(setf (get crazy_turtle::Switch :md5sum-) "3670ec1bdb46b88fbbe4d15e91105ba7")
(setf (get crazy_turtle::Switch :datatype-) "crazy_turtle/Switch")
(setf (get crazy_turtle::Switch :request) crazy_turtle::SwitchRequest)
(setf (get crazy_turtle::Switch :response) crazy_turtle::SwitchResponse)

(defmethod crazy_turtle::SwitchRequest
  (:response () (instance crazy_turtle::SwitchResponse :init)))

(setf (get crazy_turtle::SwitchRequest :md5sum-) "3670ec1bdb46b88fbbe4d15e91105ba7")
(setf (get crazy_turtle::SwitchRequest :datatype-) "crazy_turtle/SwitchRequest")
(setf (get crazy_turtle::SwitchRequest :definition-)
      "turtlesim/Pose mixed_up

================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
---
float64 x
float64 y
")

(setf (get crazy_turtle::SwitchResponse :md5sum-) "3670ec1bdb46b88fbbe4d15e91105ba7")
(setf (get crazy_turtle::SwitchResponse :datatype-) "crazy_turtle/SwitchResponse")
(setf (get crazy_turtle::SwitchResponse :definition-)
      "turtlesim/Pose mixed_up

================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
---
float64 x
float64 y
")



(provide :crazy_turtle/Switch "3670ec1bdb46b88fbbe4d15e91105ba7")


