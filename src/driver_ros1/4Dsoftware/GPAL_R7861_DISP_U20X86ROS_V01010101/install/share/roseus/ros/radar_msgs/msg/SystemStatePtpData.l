;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemStatePtpData)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemStatePtpData (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMSTATEPTPDATA")
  (make-package "RADAR_MSGS::SYSTEMSTATEPTPDATA"))

(in-package "ROS")
;;//! \htmlinclude SystemStatePtpData.msg.html


(defclass radar_msgs::SystemStatePtpData
  :super ros::object
  :slots (_reserved _ptp_counter_flg _pulse_count _ptp_sec_counter _ptp_nsec _ptp_follow_sec _ptp_sec_counter_all ))

(defmethod radar_msgs::SystemStatePtpData
  (:init
   (&key
    ((:reserved __reserved) 0)
    ((:ptp_counter_flg __ptp_counter_flg) 0)
    ((:pulse_count __pulse_count) 0)
    ((:ptp_sec_counter __ptp_sec_counter) 0)
    ((:ptp_nsec __ptp_nsec) 0)
    ((:ptp_follow_sec __ptp_follow_sec) 0)
    ((:ptp_sec_counter_all __ptp_sec_counter_all) 0)
    )
   (send-super :init)
   (setq _reserved (round __reserved))
   (setq _ptp_counter_flg (round __ptp_counter_flg))
   (setq _pulse_count (round __pulse_count))
   (setq _ptp_sec_counter (round __ptp_sec_counter))
   (setq _ptp_nsec (round __ptp_nsec))
   (setq _ptp_follow_sec (round __ptp_follow_sec))
   (setq _ptp_sec_counter_all (round __ptp_sec_counter_all))
   self)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:ptp_counter_flg
   (&optional __ptp_counter_flg)
   (if __ptp_counter_flg (setq _ptp_counter_flg __ptp_counter_flg)) _ptp_counter_flg)
  (:pulse_count
   (&optional __pulse_count)
   (if __pulse_count (setq _pulse_count __pulse_count)) _pulse_count)
  (:ptp_sec_counter
   (&optional __ptp_sec_counter)
   (if __ptp_sec_counter (setq _ptp_sec_counter __ptp_sec_counter)) _ptp_sec_counter)
  (:ptp_nsec
   (&optional __ptp_nsec)
   (if __ptp_nsec (setq _ptp_nsec __ptp_nsec)) _ptp_nsec)
  (:ptp_follow_sec
   (&optional __ptp_follow_sec)
   (if __ptp_follow_sec (setq _ptp_follow_sec __ptp_follow_sec)) _ptp_follow_sec)
  (:ptp_sec_counter_all
   (&optional __ptp_sec_counter_all)
   (if __ptp_sec_counter_all (setq _ptp_sec_counter_all __ptp_sec_counter_all)) _ptp_sec_counter_all)
  (:serialization-length
   ()
   (+
    ;; uint32 _reserved
    4
    ;; uint32 _ptp_counter_flg
    4
    ;; uint32 _pulse_count
    4
    ;; uint32 _ptp_sec_counter
    4
    ;; uint32 _ptp_nsec
    4
    ;; uint64 _ptp_follow_sec
    8
    ;; uint64 _ptp_sec_counter_all
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _reserved
       (write-long _reserved s)
     ;; uint32 _ptp_counter_flg
       (write-long _ptp_counter_flg s)
     ;; uint32 _pulse_count
       (write-long _pulse_count s)
     ;; uint32 _ptp_sec_counter
       (write-long _ptp_sec_counter s)
     ;; uint32 _ptp_nsec
       (write-long _ptp_nsec s)
     ;; uint64 _ptp_follow_sec
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ptp_follow_sec (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ptp_follow_sec) (= (length (_ptp_follow_sec . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ptp_follow_sec . bv) 0) 0) s)
              (write-long (ash (elt (_ptp_follow_sec . bv) 1) -1) s))
             ((and (class _ptp_follow_sec) (= (length (_ptp_follow_sec . bv)) 1)) ;; big1
              (write-long (elt (_ptp_follow_sec . bv) 0) s)
              (write-long (if (>= _ptp_follow_sec 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ptp_follow_sec s)(write-long (if (>= _ptp_follow_sec 0) 0 #xffffffff) s)))
     ;; uint64 _ptp_sec_counter_all
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ptp_sec_counter_all (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ptp_sec_counter_all) (= (length (_ptp_sec_counter_all . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ptp_sec_counter_all . bv) 0) 0) s)
              (write-long (ash (elt (_ptp_sec_counter_all . bv) 1) -1) s))
             ((and (class _ptp_sec_counter_all) (= (length (_ptp_sec_counter_all . bv)) 1)) ;; big1
              (write-long (elt (_ptp_sec_counter_all . bv) 0) s)
              (write-long (if (>= _ptp_sec_counter_all 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ptp_sec_counter_all s)(write-long (if (>= _ptp_sec_counter_all 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ptp_counter_flg
     (setq _ptp_counter_flg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pulse_count
     (setq _pulse_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ptp_sec_counter
     (setq _ptp_sec_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ptp_nsec
     (setq _ptp_nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _ptp_follow_sec
     
#+(or :alpha :irix6 :x86_64)
      (setf _ptp_follow_sec (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ptp_follow_sec (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _ptp_sec_counter_all
     
#+(or :alpha :irix6 :x86_64)
      (setf _ptp_sec_counter_all (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ptp_sec_counter_all (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get radar_msgs::SystemStatePtpData :md5sum-) "3a790bc086e65d9a32b7fb446144e5ce")
(setf (get radar_msgs::SystemStatePtpData :datatype-) "radar_msgs/SystemStatePtpData")
(setf (get radar_msgs::SystemStatePtpData :definition-)
      "uint32      reserved
uint32      ptp_counter_flg
uint32      pulse_count
uint32      ptp_sec_counter
uint32      ptp_nsec
uint64      ptp_follow_sec
uint64      ptp_sec_counter_all
")



(provide :radar_msgs/SystemStatePtpData "3a790bc086e65d9a32b7fb446144e5ce")


