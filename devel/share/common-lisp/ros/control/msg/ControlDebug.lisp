; Auto-generated. Do not edit!


(cl:in-package control-msg)


;//! \htmlinclude ControlDebug.msg.html

(cl:defclass <ControlDebug> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (CurrentSpeed
    :reader CurrentSpeed
    :initarg :CurrentSpeed
    :type cl:float
    :initform 0.0)
   (TargetSpeed
    :reader TargetSpeed
    :initarg :TargetSpeed
    :type cl:float
    :initform 0.0)
   (SpeedError
    :reader SpeedError
    :initarg :SpeedError
    :type cl:float
    :initform 0.0)
   (AccelerationCmd
    :reader AccelerationCmd
    :initarg :AccelerationCmd
    :type cl:float
    :initform 0.0)
   (Curvature
    :reader Curvature
    :initarg :Curvature
    :type cl:float
    :initform 0.0)
   (LatError
    :reader LatError
    :initarg :LatError
    :type cl:float
    :initform 0.0)
   (DirError
    :reader DirError
    :initarg :DirError
    :type cl:float
    :initform 0.0)
   (SteeringAngleCmd
    :reader SteeringAngleCmd
    :initarg :SteeringAngleCmd
    :type cl:float
    :initform 0.0)
   (CurvatureContribution
    :reader CurvatureContribution
    :initarg :CurvatureContribution
    :type cl:float
    :initform 0.0)
   (LatContribution
    :reader LatContribution
    :initarg :LatContribution
    :type cl:float
    :initform 0.0)
   (DirContribution
    :reader DirContribution
    :initarg :DirContribution
    :type cl:float
    :initform 0.0)
   (CurrentPose
    :reader CurrentPose
    :initarg :CurrentPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ControlDebug (<ControlDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control-msg:<ControlDebug> is deprecated: use control-msg:ControlDebug instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:header-val is deprecated.  Use control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'CurrentSpeed-val :lambda-list '(m))
(cl:defmethod CurrentSpeed-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:CurrentSpeed-val is deprecated.  Use control-msg:CurrentSpeed instead.")
  (CurrentSpeed m))

(cl:ensure-generic-function 'TargetSpeed-val :lambda-list '(m))
(cl:defmethod TargetSpeed-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:TargetSpeed-val is deprecated.  Use control-msg:TargetSpeed instead.")
  (TargetSpeed m))

(cl:ensure-generic-function 'SpeedError-val :lambda-list '(m))
(cl:defmethod SpeedError-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:SpeedError-val is deprecated.  Use control-msg:SpeedError instead.")
  (SpeedError m))

(cl:ensure-generic-function 'AccelerationCmd-val :lambda-list '(m))
(cl:defmethod AccelerationCmd-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:AccelerationCmd-val is deprecated.  Use control-msg:AccelerationCmd instead.")
  (AccelerationCmd m))

(cl:ensure-generic-function 'Curvature-val :lambda-list '(m))
(cl:defmethod Curvature-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:Curvature-val is deprecated.  Use control-msg:Curvature instead.")
  (Curvature m))

(cl:ensure-generic-function 'LatError-val :lambda-list '(m))
(cl:defmethod LatError-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:LatError-val is deprecated.  Use control-msg:LatError instead.")
  (LatError m))

(cl:ensure-generic-function 'DirError-val :lambda-list '(m))
(cl:defmethod DirError-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:DirError-val is deprecated.  Use control-msg:DirError instead.")
  (DirError m))

(cl:ensure-generic-function 'SteeringAngleCmd-val :lambda-list '(m))
(cl:defmethod SteeringAngleCmd-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:SteeringAngleCmd-val is deprecated.  Use control-msg:SteeringAngleCmd instead.")
  (SteeringAngleCmd m))

(cl:ensure-generic-function 'CurvatureContribution-val :lambda-list '(m))
(cl:defmethod CurvatureContribution-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:CurvatureContribution-val is deprecated.  Use control-msg:CurvatureContribution instead.")
  (CurvatureContribution m))

(cl:ensure-generic-function 'LatContribution-val :lambda-list '(m))
(cl:defmethod LatContribution-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:LatContribution-val is deprecated.  Use control-msg:LatContribution instead.")
  (LatContribution m))

(cl:ensure-generic-function 'DirContribution-val :lambda-list '(m))
(cl:defmethod DirContribution-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:DirContribution-val is deprecated.  Use control-msg:DirContribution instead.")
  (DirContribution m))

(cl:ensure-generic-function 'CurrentPose-val :lambda-list '(m))
(cl:defmethod CurrentPose-val ((m <ControlDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control-msg:CurrentPose-val is deprecated.  Use control-msg:CurrentPose instead.")
  (CurrentPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlDebug>) ostream)
  "Serializes a message object of type '<ControlDebug>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'CurrentSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TargetSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SpeedError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'AccelerationCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'LatError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'DirError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SteeringAngleCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'CurvatureContribution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'LatContribution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'DirContribution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'CurrentPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlDebug>) istream)
  "Deserializes a message object of type '<ControlDebug>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CurrentSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TargetSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SpeedError) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AccelerationCmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Curvature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LatError) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DirError) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SteeringAngleCmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'CurvatureContribution) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LatContribution) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DirContribution) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'CurrentPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlDebug>)))
  "Returns string type for a message object of type '<ControlDebug>"
  "control/ControlDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlDebug)))
  "Returns string type for a message object of type 'ControlDebug"
  "control/ControlDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlDebug>)))
  "Returns md5sum for a message object of type '<ControlDebug>"
  "56d46489b2fb811d53877106c35e508e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlDebug)))
  "Returns md5sum for a message object of type 'ControlDebug"
  "56d46489b2fb811d53877106c35e508e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlDebug>)))
  "Returns full string definition for message of type '<ControlDebug>"
  (cl:format cl:nil "Header header~%~%float64 CurrentSpeed                     # m/s~%float64 TargetSpeed                      # m/s~%float64 SpeedError                       # m/s~%float64 AccelerationCmd                  # m/ss~%float64 Curvature                        # rad~%float64 LatError                         # m~%float64 DirError                         # rad~%float64 SteeringAngleCmd                 # rad~%float64 CurvatureContribution            # rad~%float64 LatContribution                  # rad~%float64 DirContribution                  # rad~%geometry_msgs/Pose CurrentPose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlDebug)))
  "Returns full string definition for message of type 'ControlDebug"
  (cl:format cl:nil "Header header~%~%float64 CurrentSpeed                     # m/s~%float64 TargetSpeed                      # m/s~%float64 SpeedError                       # m/s~%float64 AccelerationCmd                  # m/ss~%float64 Curvature                        # rad~%float64 LatError                         # m~%float64 DirError                         # rad~%float64 SteeringAngleCmd                 # rad~%float64 CurvatureContribution            # rad~%float64 LatContribution                  # rad~%float64 DirContribution                  # rad~%geometry_msgs/Pose CurrentPose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlDebug>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'CurrentPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlDebug
    (cl:cons ':header (header msg))
    (cl:cons ':CurrentSpeed (CurrentSpeed msg))
    (cl:cons ':TargetSpeed (TargetSpeed msg))
    (cl:cons ':SpeedError (SpeedError msg))
    (cl:cons ':AccelerationCmd (AccelerationCmd msg))
    (cl:cons ':Curvature (Curvature msg))
    (cl:cons ':LatError (LatError msg))
    (cl:cons ':DirError (DirError msg))
    (cl:cons ':SteeringAngleCmd (SteeringAngleCmd msg))
    (cl:cons ':CurvatureContribution (CurvatureContribution msg))
    (cl:cons ':LatContribution (LatContribution msg))
    (cl:cons ':DirContribution (DirContribution msg))
    (cl:cons ':CurrentPose (CurrentPose msg))
))
