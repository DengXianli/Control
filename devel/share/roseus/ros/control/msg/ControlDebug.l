;; Auto-generated. Do not edit!


(when (boundp 'control::ControlDebug)
  (if (not (find-package "CONTROL"))
    (make-package "CONTROL"))
  (shadow 'ControlDebug (find-package "CONTROL")))
(unless (find-package "CONTROL::CONTROLDEBUG")
  (make-package "CONTROL::CONTROLDEBUG"))

(in-package "ROS")
;;//! \htmlinclude ControlDebug.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control::ControlDebug
  :super ros::object
  :slots (_header _CurrentSpeed _TargetSpeed _SpeedError _AccelerationCmd _Curvature _LatError _DirError _SteeringAngleCmd _CurvatureContribution _LatContribution _DirContribution _CurrentPose ))

(defmethod control::ControlDebug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:CurrentSpeed __CurrentSpeed) 0.0)
    ((:TargetSpeed __TargetSpeed) 0.0)
    ((:SpeedError __SpeedError) 0.0)
    ((:AccelerationCmd __AccelerationCmd) 0.0)
    ((:Curvature __Curvature) 0.0)
    ((:LatError __LatError) 0.0)
    ((:DirError __DirError) 0.0)
    ((:SteeringAngleCmd __SteeringAngleCmd) 0.0)
    ((:CurvatureContribution __CurvatureContribution) 0.0)
    ((:LatContribution __LatContribution) 0.0)
    ((:DirContribution __DirContribution) 0.0)
    ((:CurrentPose __CurrentPose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _CurrentSpeed (float __CurrentSpeed))
   (setq _TargetSpeed (float __TargetSpeed))
   (setq _SpeedError (float __SpeedError))
   (setq _AccelerationCmd (float __AccelerationCmd))
   (setq _Curvature (float __Curvature))
   (setq _LatError (float __LatError))
   (setq _DirError (float __DirError))
   (setq _SteeringAngleCmd (float __SteeringAngleCmd))
   (setq _CurvatureContribution (float __CurvatureContribution))
   (setq _LatContribution (float __LatContribution))
   (setq _DirContribution (float __DirContribution))
   (setq _CurrentPose __CurrentPose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:CurrentSpeed
   (&optional __CurrentSpeed)
   (if __CurrentSpeed (setq _CurrentSpeed __CurrentSpeed)) _CurrentSpeed)
  (:TargetSpeed
   (&optional __TargetSpeed)
   (if __TargetSpeed (setq _TargetSpeed __TargetSpeed)) _TargetSpeed)
  (:SpeedError
   (&optional __SpeedError)
   (if __SpeedError (setq _SpeedError __SpeedError)) _SpeedError)
  (:AccelerationCmd
   (&optional __AccelerationCmd)
   (if __AccelerationCmd (setq _AccelerationCmd __AccelerationCmd)) _AccelerationCmd)
  (:Curvature
   (&optional __Curvature)
   (if __Curvature (setq _Curvature __Curvature)) _Curvature)
  (:LatError
   (&optional __LatError)
   (if __LatError (setq _LatError __LatError)) _LatError)
  (:DirError
   (&optional __DirError)
   (if __DirError (setq _DirError __DirError)) _DirError)
  (:SteeringAngleCmd
   (&optional __SteeringAngleCmd)
   (if __SteeringAngleCmd (setq _SteeringAngleCmd __SteeringAngleCmd)) _SteeringAngleCmd)
  (:CurvatureContribution
   (&optional __CurvatureContribution)
   (if __CurvatureContribution (setq _CurvatureContribution __CurvatureContribution)) _CurvatureContribution)
  (:LatContribution
   (&optional __LatContribution)
   (if __LatContribution (setq _LatContribution __LatContribution)) _LatContribution)
  (:DirContribution
   (&optional __DirContribution)
   (if __DirContribution (setq _DirContribution __DirContribution)) _DirContribution)
  (:CurrentPose
   (&rest __CurrentPose)
   (if (keywordp (car __CurrentPose))
       (send* _CurrentPose __CurrentPose)
     (progn
       (if __CurrentPose (setq _CurrentPose (car __CurrentPose)))
       _CurrentPose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _CurrentSpeed
    8
    ;; float64 _TargetSpeed
    8
    ;; float64 _SpeedError
    8
    ;; float64 _AccelerationCmd
    8
    ;; float64 _Curvature
    8
    ;; float64 _LatError
    8
    ;; float64 _DirError
    8
    ;; float64 _SteeringAngleCmd
    8
    ;; float64 _CurvatureContribution
    8
    ;; float64 _LatContribution
    8
    ;; float64 _DirContribution
    8
    ;; geometry_msgs/Pose _CurrentPose
    (send _CurrentPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _CurrentSpeed
       (sys::poke _CurrentSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _TargetSpeed
       (sys::poke _TargetSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _SpeedError
       (sys::poke _SpeedError (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AccelerationCmd
       (sys::poke _AccelerationCmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Curvature
       (sys::poke _Curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LatError
       (sys::poke _LatError (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _DirError
       (sys::poke _DirError (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _SteeringAngleCmd
       (sys::poke _SteeringAngleCmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _CurvatureContribution
       (sys::poke _CurvatureContribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LatContribution
       (sys::poke _LatContribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _DirContribution
       (sys::poke _DirContribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _CurrentPose
       (send _CurrentPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _CurrentSpeed
     (setq _CurrentSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _TargetSpeed
     (setq _TargetSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _SpeedError
     (setq _SpeedError (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AccelerationCmd
     (setq _AccelerationCmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Curvature
     (setq _Curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LatError
     (setq _LatError (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _DirError
     (setq _DirError (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _SteeringAngleCmd
     (setq _SteeringAngleCmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _CurvatureContribution
     (setq _CurvatureContribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LatContribution
     (setq _LatContribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _DirContribution
     (setq _DirContribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _CurrentPose
     (send _CurrentPose :deserialize buf ptr-) (incf ptr- (send _CurrentPose :serialization-length))
   ;;
   self)
  )

(setf (get control::ControlDebug :md5sum-) "56d46489b2fb811d53877106c35e508e")
(setf (get control::ControlDebug :datatype-) "control/ControlDebug")
(setf (get control::ControlDebug :definition-)
      "Header header

float64 CurrentSpeed                     # m/s
float64 TargetSpeed                      # m/s
float64 SpeedError                       # m/s
float64 AccelerationCmd                  # m/ss
float64 Curvature                        # rad
float64 LatError                         # m
float64 DirError                         # rad
float64 SteeringAngleCmd                 # rad
float64 CurvatureContribution            # rad
float64 LatContribution                  # rad
float64 DirContribution                  # rad
geometry_msgs/Pose CurrentPose
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :control/ControlDebug "56d46489b2fb811d53877106c35e508e")


