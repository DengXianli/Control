; Auto-generated. Do not edit!


(cl:in-package control-msg)


;//! \htmlinclude VelocityReport.msg.html

(cl:defclass <VelocityReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityReport (<VelocityReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control-msg:<VelocityReport> is deprecated: use control-msg:VelocityReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VelocityReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:header-val is deprecated.  Use control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <VelocityReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:speed-val is deprecated.  Use control-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityReport>) ostream)
  "Serializes a message object of type '<VelocityReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityReport>) istream)
  "Deserializes a message object of type '<VelocityReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityReport>)))
  "Returns string type for a message object of type '<VelocityReport>"
  "control/VelocityReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReport)))
  "Returns string type for a message object of type 'VelocityReport"
  "control/VelocityReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityReport>)))
  "Returns md5sum for a message object of type '<VelocityReport>"
  "d97c628937d47552ba5fcce4399ed962")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityReport)))
  "Returns md5sum for a message object of type 'VelocityReport"
  "d97c628937d47552ba5fcce4399ed962")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityReport>)))
  "Returns full string definition for message of type '<VelocityReport>"
  (cl:format cl:nil "Header header~%~%float32 speed                     # m/s~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityReport)))
  "Returns full string definition for message of type 'VelocityReport"
  (cl:format cl:nil "Header header~%~%float32 speed                     # m/s~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityReport>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityReport
    (cl:cons ':header (header msg))
    (cl:cons ':speed (speed msg))
))
