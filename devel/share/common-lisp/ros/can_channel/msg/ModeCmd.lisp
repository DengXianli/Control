; Auto-generated. Do not edit!


(cl:in-package can_channel-msg)


;//! \htmlinclude ModeCmd.msg.html

(cl:defclass <ModeCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass ModeCmd (<ModeCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_channel-msg:<ModeCmd> is deprecated: use can_channel-msg:ModeCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_channel-msg:header-val is deprecated.  Use can_channel-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ModeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_channel-msg:mode-val is deprecated.  Use can_channel-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeCmd>) ostream)
  "Serializes a message object of type '<ModeCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeCmd>) istream)
  "Deserializes a message object of type '<ModeCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeCmd>)))
  "Returns string type for a message object of type '<ModeCmd>"
  "can_channel/ModeCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeCmd)))
  "Returns string type for a message object of type 'ModeCmd"
  "can_channel/ModeCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeCmd>)))
  "Returns md5sum for a message object of type '<ModeCmd>"
  "b678d03852da9044784d49ed8fcc636e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeCmd)))
  "Returns md5sum for a message object of type 'ModeCmd"
  "b678d03852da9044784d49ed8fcc636e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeCmd>)))
  "Returns full string definition for message of type '<ModeCmd>"
  (cl:format cl:nil "Header header~%int32 mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeCmd)))
  "Returns full string definition for message of type 'ModeCmd"
  (cl:format cl:nil "Header header~%int32 mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeCmd
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
))
