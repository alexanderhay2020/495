;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::TurtleVel)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'TurtleVel (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::TURTLEVEL")
  (make-package "TURTLE_CONTROL::TURTLEVEL"))

(in-package "ROS")
;;//! \htmlinclude TurtleVel.msg.html


(defclass turtle_control::TurtleVel
  :super ros::object
  :slots (_linear _angular ))

(defmethod turtle_control::TurtleVel
  (:init
   (&key
    ((:linear __linear) 0.0)
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _linear (float __linear))
   (setq _angular (float __angular))
   self)
  (:linear
   (&optional __linear)
   (if __linear (setq _linear __linear)) _linear)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float64 _linear
    8
    ;; float64 _angular
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear
       (sys::poke _linear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear
     (setq _linear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular
     (setq _angular (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get turtle_control::TurtleVel :md5sum-) "144a16e4d6b53a0dbadc2e617460a173")
(setf (get turtle_control::TurtleVel :datatype-) "turtle_control/TurtleVel")
(setf (get turtle_control::TurtleVel :definition-)
      "float64 linear # 3vector {x, y, z}
float64 angular # 3vector {x, y, z}

")



(provide :turtle_control/TurtleVel "144a16e4d6b53a0dbadc2e617460a173")


