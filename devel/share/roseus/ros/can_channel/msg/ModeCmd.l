;; Auto-generated. Do not edit!


(when (boundp 'can_channel::ModeCmd)
  (if (not (find-package "CAN_CHANNEL"))
    (make-package "CAN_CHANNEL"))
  (shadow 'ModeCmd (find-package "CAN_CHANNEL")))
(unless (find-package "CAN_CHANNEL::MODECMD")
  (make-package "CAN_CHANNEL::MODECMD"))

(in-package "ROS")
;;//! \htmlinclude ModeCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass can_channel::ModeCmd
  :super ros::object
  :slots (_header _mode ))

(defmethod can_channel::ModeCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get can_channel::ModeCmd :md5sum-) "b678d03852da9044784d49ed8fcc636e")
(setf (get can_channel::ModeCmd :datatype-) "can_channel/ModeCmd")
(setf (get can_channel::ModeCmd :definition-)
      "Header header
int32 mode

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



(provide :can_channel/ModeCmd "b678d03852da9044784d49ed8fcc636e")


