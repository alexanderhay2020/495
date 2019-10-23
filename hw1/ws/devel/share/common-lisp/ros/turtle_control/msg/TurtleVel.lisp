; Auto-generated. Do not edit!


(cl:in-package turtle_control-msg)


;//! \htmlinclude TurtleVel.msg.html

(cl:defclass <TurtleVel> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type cl:float
    :initform 0.0)
   (angular
    :reader angular
    :initarg :angular
    :type cl:float
    :initform 0.0))
)

(cl:defclass TurtleVel (<TurtleVel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtleVel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtleVel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-msg:<TurtleVel> is deprecated: use turtle_control-msg:TurtleVel instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <TurtleVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:linear-val is deprecated.  Use turtle_control-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <TurtleVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:angular-val is deprecated.  Use turtle_control-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtleVel>) ostream)
  "Serializes a message object of type '<TurtleVel>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtleVel>) istream)
  "Deserializes a message object of type '<TurtleVel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtleVel>)))
  "Returns string type for a message object of type '<TurtleVel>"
  "turtle_control/TurtleVel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleVel)))
  "Returns string type for a message object of type 'TurtleVel"
  "turtle_control/TurtleVel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtleVel>)))
  "Returns md5sum for a message object of type '<TurtleVel>"
  "9d5c2dcd348ac8f76ce2a4307bd63a13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtleVel)))
  "Returns md5sum for a message object of type 'TurtleVel"
  "9d5c2dcd348ac8f76ce2a4307bd63a13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtleVel>)))
  "Returns full string definition for message of type '<TurtleVel>"
  (cl:format cl:nil "float32 linear # linear velocity of turtle~%float32 angular # angular velocity of turtle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtleVel)))
  "Returns full string definition for message of type 'TurtleVel"
  (cl:format cl:nil "float32 linear # linear velocity of turtle~%float32 angular # angular velocity of turtle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtleVel>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtleVel>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtleVel
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
