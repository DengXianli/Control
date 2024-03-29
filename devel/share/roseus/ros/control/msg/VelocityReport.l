;; Auto-generated. Do not edit!


(when (boundp 'control::VelocityReport)
  (if (not (find-package "CONTROL"))
    (make-package "CONTROL"))
  (shadow 'VelocityReport (find-package "CONTROL")))
(unless (find-package "CONTROL::VELOCITYREPORT")
  (make-package "CONTROL::VELOCITYREPORT"))

(in-package "ROS")
;;//! \htmlinclude VelocityReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control::VelocityReport
  :super ros::object
  :slots (_header _speed ))

(defmethod control::VelocityReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _speed (float __speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control::VelocityReport :md5sum-) "d97c628937d47552ba5fcce4399ed962")
(setf (get control::VelocityReport :datatype-) "control/VelocityReport")
(setf (get control::VelocityReport :definition-)
      "Header header

float32 speed                     # m/s
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

")



(provide :control/VelocityReport "d97c628937d47552ba5fcce4399ed962")


