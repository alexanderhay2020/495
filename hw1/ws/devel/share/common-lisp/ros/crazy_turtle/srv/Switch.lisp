; Auto-generated. Do not edit!


(cl:in-package crazy_turtle-srv)


;//! \htmlinclude Switch-request.msg.html

(cl:defclass <Switch-request> (roslisp-msg-protocol:ros-message)
  ((mixed_up
    :reader mixed_up
    :initarg :mixed_up
    :type turtlesim-msg:Pose
    :initform (cl:make-instance 'turtlesim-msg:Pose)))
)

(cl:defclass Switch-request (<Switch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Switch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Switch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazy_turtle-srv:<Switch-request> is deprecated: use crazy_turtle-srv:Switch-request instead.")))

(cl:ensure-generic-function 'mixed_up-val :lambda-list '(m))
(cl:defmethod mixed_up-val ((m <Switch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazy_turtle-srv:mixed_up-val is deprecated.  Use crazy_turtle-srv:mixed_up instead.")
  (mixed_up m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Switch-request>) ostream)
  "Serializes a message object of type '<Switch-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mixed_up) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Switch-request>) istream)
  "Deserializes a message object of type '<Switch-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mixed_up) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Switch-request>)))
  "Returns string type for a service object of type '<Switch-request>"
  "crazy_turtle/SwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Switch-request)))
  "Returns string type for a service object of type 'Switch-request"
  "crazy_turtle/SwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Switch-request>)))
  "Returns md5sum for a message object of type '<Switch-request>"
  "3670ec1bdb46b88fbbe4d15e91105ba7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Switch-request)))
  "Returns md5sum for a message object of type 'Switch-request"
  "3670ec1bdb46b88fbbe4d15e91105ba7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Switch-request>)))
  "Returns full string definition for message of type '<Switch-request>"
  (cl:format cl:nil "turtlesim/Pose mixed_up~%~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Switch-request)))
  "Returns full string definition for message of type 'Switch-request"
  (cl:format cl:nil "turtlesim/Pose mixed_up~%~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Switch-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mixed_up))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Switch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Switch-request
    (cl:cons ':mixed_up (mixed_up msg))
))
;//! \htmlinclude Switch-response.msg.html

(cl:defclass <Switch-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Switch-response (<Switch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Switch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Switch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazy_turtle-srv:<Switch-response> is deprecated: use crazy_turtle-srv:Switch-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Switch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazy_turtle-srv:x-val is deprecated.  Use crazy_turtle-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Switch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazy_turtle-srv:y-val is deprecated.  Use crazy_turtle-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Switch-response>) ostream)
  "Serializes a message object of type '<Switch-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Switch-response>) istream)
  "Deserializes a message object of type '<Switch-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Switch-response>)))
  "Returns string type for a service object of type '<Switch-response>"
  "crazy_turtle/SwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Switch-response)))
  "Returns string type for a service object of type 'Switch-response"
  "crazy_turtle/SwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Switch-response>)))
  "Returns md5sum for a message object of type '<Switch-response>"
  "3670ec1bdb46b88fbbe4d15e91105ba7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Switch-response)))
  "Returns md5sum for a message object of type 'Switch-response"
  "3670ec1bdb46b88fbbe4d15e91105ba7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Switch-response>)))
  "Returns full string definition for message of type '<Switch-response>"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Switch-response)))
  "Returns full string definition for message of type 'Switch-response"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Switch-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Switch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Switch-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Switch)))
  'Switch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Switch)))
  'Switch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Switch)))
  "Returns string type for a service object of type '<Switch>"
  "crazy_turtle/Switch")