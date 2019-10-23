; Auto-generated. Do not edit!


(cl:in-package turtle_control-srv)


;//! \htmlinclude VelTranslate-request.msg.html

(cl:defclass <VelTranslate-request> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass VelTranslate-request (<VelTranslate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelTranslate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelTranslate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<VelTranslate-request> is deprecated: use turtle_control-srv:VelTranslate-request instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <VelTranslate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:twist-val is deprecated.  Use turtle_control-srv:twist instead.")
  (twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelTranslate-request>) ostream)
  "Serializes a message object of type '<VelTranslate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelTranslate-request>) istream)
  "Deserializes a message object of type '<VelTranslate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelTranslate-request>)))
  "Returns string type for a service object of type '<VelTranslate-request>"
  "turtle_control/VelTranslateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelTranslate-request)))
  "Returns string type for a service object of type 'VelTranslate-request"
  "turtle_control/VelTranslateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelTranslate-request>)))
  "Returns md5sum for a message object of type '<VelTranslate-request>"
  "cf2a08b505b561a876017bf49e86a2f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelTranslate-request)))
  "Returns md5sum for a message object of type 'VelTranslate-request"
  "cf2a08b505b561a876017bf49e86a2f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelTranslate-request>)))
  "Returns full string definition for message of type '<VelTranslate-request>"
  (cl:format cl:nil "geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelTranslate-request)))
  "Returns full string definition for message of type 'VelTranslate-request"
  (cl:format cl:nil "geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelTranslate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelTranslate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VelTranslate-request
    (cl:cons ':twist (twist msg))
))
;//! \htmlinclude VelTranslate-response.msg.html

(cl:defclass <VelTranslate-response> (roslisp-msg-protocol:ros-message)
  ((turtle_vel
    :reader turtle_vel
    :initarg :turtle_vel
    :type turtle_control-msg:TurtleVel
    :initform (cl:make-instance 'turtle_control-msg:TurtleVel)))
)

(cl:defclass VelTranslate-response (<VelTranslate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelTranslate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelTranslate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-srv:<VelTranslate-response> is deprecated: use turtle_control-srv:VelTranslate-response instead.")))

(cl:ensure-generic-function 'turtle_vel-val :lambda-list '(m))
(cl:defmethod turtle_vel-val ((m <VelTranslate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-srv:turtle_vel-val is deprecated.  Use turtle_control-srv:turtle_vel instead.")
  (turtle_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelTranslate-response>) ostream)
  "Serializes a message object of type '<VelTranslate-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turtle_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelTranslate-response>) istream)
  "Deserializes a message object of type '<VelTranslate-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turtle_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelTranslate-response>)))
  "Returns string type for a service object of type '<VelTranslate-response>"
  "turtle_control/VelTranslateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelTranslate-response)))
  "Returns string type for a service object of type 'VelTranslate-response"
  "turtle_control/VelTranslateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelTranslate-response>)))
  "Returns md5sum for a message object of type '<VelTranslate-response>"
  "cf2a08b505b561a876017bf49e86a2f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelTranslate-response)))
  "Returns md5sum for a message object of type 'VelTranslate-response"
  "cf2a08b505b561a876017bf49e86a2f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelTranslate-response>)))
  "Returns full string definition for message of type '<VelTranslate-response>"
  (cl:format cl:nil "TurtleVel turtle_vel~%~%~%================================================================================~%MSG: turtle_control/TurtleVel~%float64 linear # 3vector {x, y, z}~%float64 angular # 3vector {x, y, z}~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelTranslate-response)))
  "Returns full string definition for message of type 'VelTranslate-response"
  (cl:format cl:nil "TurtleVel turtle_vel~%~%~%================================================================================~%MSG: turtle_control/TurtleVel~%float64 linear # 3vector {x, y, z}~%float64 angular # 3vector {x, y, z}~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelTranslate-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turtle_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelTranslate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VelTranslate-response
    (cl:cons ':turtle_vel (turtle_vel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VelTranslate)))
  'VelTranslate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VelTranslate)))
  'VelTranslate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelTranslate)))
  "Returns string type for a service object of type '<VelTranslate>"
  "turtle_control/VelTranslate")