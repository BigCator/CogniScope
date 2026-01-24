;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::ProcessStatus)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'ProcessStatus (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::PROCESSSTATUS")
  (make-package "RADAR_MSGS::PROCESSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ProcessStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::ProcessStatus
  :super ros::object
  :slots (_header _radarID _frameCnt _captureTime _frameLostCnt _adcErrCnt _reserved_a _reserved_b _time1DFFT _reserved_c _reserved_d _reserved_e _reserved_f _time2DFFT _reserved_g _reserved_h _reserved_i _reserved_j _timeRDMap _reserved_k _reserved_l _reserved_m _reserved_n _timeCfar _reserved_o _reserved_p _reserved_q _reserved_r _timeDOA _reserved_s _reserved_t _reserved_u _reserved_v _timePCL _reserved_w _reserved_x _reserved_y _reserved_z _timeOD _odTimeoutCnt _selfCaliStatus _reserved_aa _reserved_ab _reserved_ac _reserved_ad ))

(defmethod radar_msgs::ProcessStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:captureTime __captureTime) 0.0)
    ((:frameLostCnt __frameLostCnt) 0)
    ((:adcErrCnt __adcErrCnt) 0)
    ((:reserved_a __reserved_a) 0)
    ((:reserved_b __reserved_b) 0)
    ((:time1DFFT __time1DFFT) 0.0)
    ((:reserved_c __reserved_c) 0)
    ((:reserved_d __reserved_d) 0)
    ((:reserved_e __reserved_e) 0)
    ((:reserved_f __reserved_f) 0)
    ((:time2DFFT __time2DFFT) 0.0)
    ((:reserved_g __reserved_g) 0)
    ((:reserved_h __reserved_h) 0)
    ((:reserved_i __reserved_i) 0)
    ((:reserved_j __reserved_j) 0)
    ((:timeRDMap __timeRDMap) 0.0)
    ((:reserved_k __reserved_k) 0)
    ((:reserved_l __reserved_l) 0)
    ((:reserved_m __reserved_m) 0)
    ((:reserved_n __reserved_n) 0)
    ((:timeCfar __timeCfar) 0.0)
    ((:reserved_o __reserved_o) 0)
    ((:reserved_p __reserved_p) 0)
    ((:reserved_q __reserved_q) 0)
    ((:reserved_r __reserved_r) 0)
    ((:timeDOA __timeDOA) 0.0)
    ((:reserved_s __reserved_s) 0)
    ((:reserved_t __reserved_t) 0)
    ((:reserved_u __reserved_u) 0)
    ((:reserved_v __reserved_v) 0)
    ((:timePCL __timePCL) 0.0)
    ((:reserved_w __reserved_w) 0)
    ((:reserved_x __reserved_x) 0)
    ((:reserved_y __reserved_y) 0)
    ((:reserved_z __reserved_z) 0)
    ((:timeOD __timeOD) 0.0)
    ((:odTimeoutCnt __odTimeoutCnt) 0)
    ((:selfCaliStatus __selfCaliStatus) 0)
    ((:reserved_aa __reserved_aa) 0)
    ((:reserved_ab __reserved_ab) 0)
    ((:reserved_ac __reserved_ac) 0)
    ((:reserved_ad __reserved_ad) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _captureTime (float __captureTime))
   (setq _frameLostCnt (round __frameLostCnt))
   (setq _adcErrCnt (round __adcErrCnt))
   (setq _reserved_a (round __reserved_a))
   (setq _reserved_b (round __reserved_b))
   (setq _time1DFFT (float __time1DFFT))
   (setq _reserved_c (round __reserved_c))
   (setq _reserved_d (round __reserved_d))
   (setq _reserved_e (round __reserved_e))
   (setq _reserved_f (round __reserved_f))
   (setq _time2DFFT (float __time2DFFT))
   (setq _reserved_g (round __reserved_g))
   (setq _reserved_h (round __reserved_h))
   (setq _reserved_i (round __reserved_i))
   (setq _reserved_j (round __reserved_j))
   (setq _timeRDMap (float __timeRDMap))
   (setq _reserved_k (round __reserved_k))
   (setq _reserved_l (round __reserved_l))
   (setq _reserved_m (round __reserved_m))
   (setq _reserved_n (round __reserved_n))
   (setq _timeCfar (float __timeCfar))
   (setq _reserved_o (round __reserved_o))
   (setq _reserved_p (round __reserved_p))
   (setq _reserved_q (round __reserved_q))
   (setq _reserved_r (round __reserved_r))
   (setq _timeDOA (float __timeDOA))
   (setq _reserved_s (round __reserved_s))
   (setq _reserved_t (round __reserved_t))
   (setq _reserved_u (round __reserved_u))
   (setq _reserved_v (round __reserved_v))
   (setq _timePCL (float __timePCL))
   (setq _reserved_w (round __reserved_w))
   (setq _reserved_x (round __reserved_x))
   (setq _reserved_y (round __reserved_y))
   (setq _reserved_z (round __reserved_z))
   (setq _timeOD (float __timeOD))
   (setq _odTimeoutCnt (round __odTimeoutCnt))
   (setq _selfCaliStatus (round __selfCaliStatus))
   (setq _reserved_aa (round __reserved_aa))
   (setq _reserved_ab (round __reserved_ab))
   (setq _reserved_ac (round __reserved_ac))
   (setq _reserved_ad (round __reserved_ad))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radarID
   (&optional __radarID)
   (if __radarID (setq _radarID __radarID)) _radarID)
  (:frameCnt
   (&optional __frameCnt)
   (if __frameCnt (setq _frameCnt __frameCnt)) _frameCnt)
  (:captureTime
   (&optional __captureTime)
   (if __captureTime (setq _captureTime __captureTime)) _captureTime)
  (:frameLostCnt
   (&optional __frameLostCnt)
   (if __frameLostCnt (setq _frameLostCnt __frameLostCnt)) _frameLostCnt)
  (:adcErrCnt
   (&optional __adcErrCnt)
   (if __adcErrCnt (setq _adcErrCnt __adcErrCnt)) _adcErrCnt)
  (:reserved_a
   (&optional __reserved_a)
   (if __reserved_a (setq _reserved_a __reserved_a)) _reserved_a)
  (:reserved_b
   (&optional __reserved_b)
   (if __reserved_b (setq _reserved_b __reserved_b)) _reserved_b)
  (:time1DFFT
   (&optional __time1DFFT)
   (if __time1DFFT (setq _time1DFFT __time1DFFT)) _time1DFFT)
  (:reserved_c
   (&optional __reserved_c)
   (if __reserved_c (setq _reserved_c __reserved_c)) _reserved_c)
  (:reserved_d
   (&optional __reserved_d)
   (if __reserved_d (setq _reserved_d __reserved_d)) _reserved_d)
  (:reserved_e
   (&optional __reserved_e)
   (if __reserved_e (setq _reserved_e __reserved_e)) _reserved_e)
  (:reserved_f
   (&optional __reserved_f)
   (if __reserved_f (setq _reserved_f __reserved_f)) _reserved_f)
  (:time2DFFT
   (&optional __time2DFFT)
   (if __time2DFFT (setq _time2DFFT __time2DFFT)) _time2DFFT)
  (:reserved_g
   (&optional __reserved_g)
   (if __reserved_g (setq _reserved_g __reserved_g)) _reserved_g)
  (:reserved_h
   (&optional __reserved_h)
   (if __reserved_h (setq _reserved_h __reserved_h)) _reserved_h)
  (:reserved_i
   (&optional __reserved_i)
   (if __reserved_i (setq _reserved_i __reserved_i)) _reserved_i)
  (:reserved_j
   (&optional __reserved_j)
   (if __reserved_j (setq _reserved_j __reserved_j)) _reserved_j)
  (:timeRDMap
   (&optional __timeRDMap)
   (if __timeRDMap (setq _timeRDMap __timeRDMap)) _timeRDMap)
  (:reserved_k
   (&optional __reserved_k)
   (if __reserved_k (setq _reserved_k __reserved_k)) _reserved_k)
  (:reserved_l
   (&optional __reserved_l)
   (if __reserved_l (setq _reserved_l __reserved_l)) _reserved_l)
  (:reserved_m
   (&optional __reserved_m)
   (if __reserved_m (setq _reserved_m __reserved_m)) _reserved_m)
  (:reserved_n
   (&optional __reserved_n)
   (if __reserved_n (setq _reserved_n __reserved_n)) _reserved_n)
  (:timeCfar
   (&optional __timeCfar)
   (if __timeCfar (setq _timeCfar __timeCfar)) _timeCfar)
  (:reserved_o
   (&optional __reserved_o)
   (if __reserved_o (setq _reserved_o __reserved_o)) _reserved_o)
  (:reserved_p
   (&optional __reserved_p)
   (if __reserved_p (setq _reserved_p __reserved_p)) _reserved_p)
  (:reserved_q
   (&optional __reserved_q)
   (if __reserved_q (setq _reserved_q __reserved_q)) _reserved_q)
  (:reserved_r
   (&optional __reserved_r)
   (if __reserved_r (setq _reserved_r __reserved_r)) _reserved_r)
  (:timeDOA
   (&optional __timeDOA)
   (if __timeDOA (setq _timeDOA __timeDOA)) _timeDOA)
  (:reserved_s
   (&optional __reserved_s)
   (if __reserved_s (setq _reserved_s __reserved_s)) _reserved_s)
  (:reserved_t
   (&optional __reserved_t)
   (if __reserved_t (setq _reserved_t __reserved_t)) _reserved_t)
  (:reserved_u
   (&optional __reserved_u)
   (if __reserved_u (setq _reserved_u __reserved_u)) _reserved_u)
  (:reserved_v
   (&optional __reserved_v)
   (if __reserved_v (setq _reserved_v __reserved_v)) _reserved_v)
  (:timePCL
   (&optional __timePCL)
   (if __timePCL (setq _timePCL __timePCL)) _timePCL)
  (:reserved_w
   (&optional __reserved_w)
   (if __reserved_w (setq _reserved_w __reserved_w)) _reserved_w)
  (:reserved_x
   (&optional __reserved_x)
   (if __reserved_x (setq _reserved_x __reserved_x)) _reserved_x)
  (:reserved_y
   (&optional __reserved_y)
   (if __reserved_y (setq _reserved_y __reserved_y)) _reserved_y)
  (:reserved_z
   (&optional __reserved_z)
   (if __reserved_z (setq _reserved_z __reserved_z)) _reserved_z)
  (:timeOD
   (&optional __timeOD)
   (if __timeOD (setq _timeOD __timeOD)) _timeOD)
  (:odTimeoutCnt
   (&optional __odTimeoutCnt)
   (if __odTimeoutCnt (setq _odTimeoutCnt __odTimeoutCnt)) _odTimeoutCnt)
  (:selfCaliStatus
   (&optional __selfCaliStatus)
   (if __selfCaliStatus (setq _selfCaliStatus __selfCaliStatus)) _selfCaliStatus)
  (:reserved_aa
   (&optional __reserved_aa)
   (if __reserved_aa (setq _reserved_aa __reserved_aa)) _reserved_aa)
  (:reserved_ab
   (&optional __reserved_ab)
   (if __reserved_ab (setq _reserved_ab __reserved_ab)) _reserved_ab)
  (:reserved_ac
   (&optional __reserved_ac)
   (if __reserved_ac (setq _reserved_ac __reserved_ac)) _reserved_ac)
  (:reserved_ad
   (&optional __reserved_ad)
   (if __reserved_ad (setq _reserved_ad __reserved_ad)) _reserved_ad)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; float32 _captureTime
    4
    ;; uint32 _frameLostCnt
    4
    ;; uint32 _adcErrCnt
    4
    ;; uint32 _reserved_a
    4
    ;; uint32 _reserved_b
    4
    ;; float32 _time1DFFT
    4
    ;; uint32 _reserved_c
    4
    ;; uint32 _reserved_d
    4
    ;; uint32 _reserved_e
    4
    ;; uint32 _reserved_f
    4
    ;; float32 _time2DFFT
    4
    ;; uint32 _reserved_g
    4
    ;; uint32 _reserved_h
    4
    ;; uint32 _reserved_i
    4
    ;; uint32 _reserved_j
    4
    ;; float32 _timeRDMap
    4
    ;; uint32 _reserved_k
    4
    ;; uint32 _reserved_l
    4
    ;; uint32 _reserved_m
    4
    ;; uint32 _reserved_n
    4
    ;; float32 _timeCfar
    4
    ;; uint32 _reserved_o
    4
    ;; uint32 _reserved_p
    4
    ;; uint32 _reserved_q
    4
    ;; uint32 _reserved_r
    4
    ;; float32 _timeDOA
    4
    ;; uint32 _reserved_s
    4
    ;; uint32 _reserved_t
    4
    ;; uint32 _reserved_u
    4
    ;; uint32 _reserved_v
    4
    ;; float32 _timePCL
    4
    ;; uint32 _reserved_w
    4
    ;; uint32 _reserved_x
    4
    ;; uint32 _reserved_y
    4
    ;; uint32 _reserved_z
    4
    ;; float32 _timeOD
    4
    ;; uint32 _odTimeoutCnt
    4
    ;; int32 _selfCaliStatus
    4
    ;; uint32 _reserved_aa
    4
    ;; uint32 _reserved_ab
    4
    ;; uint32 _reserved_ac
    4
    ;; uint32 _reserved_ad
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _radarID
       (write-long _radarID s)
     ;; uint32 _frameCnt
       (write-long _frameCnt s)
     ;; float32 _captureTime
       (sys::poke _captureTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _frameLostCnt
       (write-long _frameLostCnt s)
     ;; uint32 _adcErrCnt
       (write-long _adcErrCnt s)
     ;; uint32 _reserved_a
       (write-long _reserved_a s)
     ;; uint32 _reserved_b
       (write-long _reserved_b s)
     ;; float32 _time1DFFT
       (sys::poke _time1DFFT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _reserved_c
       (write-long _reserved_c s)
     ;; uint32 _reserved_d
       (write-long _reserved_d s)
     ;; uint32 _reserved_e
       (write-long _reserved_e s)
     ;; uint32 _reserved_f
       (write-long _reserved_f s)
     ;; float32 _time2DFFT
       (sys::poke _time2DFFT (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _reserved_g
       (write-long _reserved_g s)
     ;; uint32 _reserved_h
       (write-long _reserved_h s)
     ;; uint32 _reserved_i
       (write-long _reserved_i s)
     ;; uint32 _reserved_j
       (write-long _reserved_j s)
     ;; float32 _timeRDMap
       (sys::poke _timeRDMap (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _reserved_k
       (write-long _reserved_k s)
     ;; uint32 _reserved_l
       (write-long _reserved_l s)
     ;; uint32 _reserved_m
       (write-long _reserved_m s)
     ;; uint32 _reserved_n
       (write-long _reserved_n s)
     ;; float32 _timeCfar
       (sys::poke _timeCfar (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _reserved_o
       (write-long _reserved_o s)
     ;; uint32 _reserved_p
       (write-long _reserved_p s)
     ;; uint32 _reserved_q
       (write-long _reserved_q s)
     ;; uint32 _reserved_r
       (write-long _reserved_r s)
     ;; float32 _timeDOA
       (sys::poke _timeDOA (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _reserved_s
       (write-long _reserved_s s)
     ;; uint32 _reserved_t
       (write-long _reserved_t s)
     ;; uint32 _reserved_u
       (write-long _reserved_u s)
     ;; uint32 _reserved_v
       (write-long _reserved_v s)
     ;; float32 _timePCL
       (sys::poke _timePCL (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _reserved_w
       (write-long _reserved_w s)
     ;; uint32 _reserved_x
       (write-long _reserved_x s)
     ;; uint32 _reserved_y
       (write-long _reserved_y s)
     ;; uint32 _reserved_z
       (write-long _reserved_z s)
     ;; float32 _timeOD
       (sys::poke _timeOD (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _odTimeoutCnt
       (write-long _odTimeoutCnt s)
     ;; int32 _selfCaliStatus
       (write-long _selfCaliStatus s)
     ;; uint32 _reserved_aa
       (write-long _reserved_aa s)
     ;; uint32 _reserved_ab
       (write-long _reserved_ab s)
     ;; uint32 _reserved_ac
       (write-long _reserved_ac s)
     ;; uint32 _reserved_ad
       (write-long _reserved_ad s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _radarID
     (setq _radarID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frameCnt
     (setq _frameCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _captureTime
     (setq _captureTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _frameLostCnt
     (setq _frameLostCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _adcErrCnt
     (setq _adcErrCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_a
     (setq _reserved_a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_b
     (setq _reserved_b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _time1DFFT
     (setq _time1DFFT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _reserved_c
     (setq _reserved_c (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_d
     (setq _reserved_d (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_e
     (setq _reserved_e (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_f
     (setq _reserved_f (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _time2DFFT
     (setq _time2DFFT (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _reserved_g
     (setq _reserved_g (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_h
     (setq _reserved_h (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_i
     (setq _reserved_i (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_j
     (setq _reserved_j (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _timeRDMap
     (setq _timeRDMap (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _reserved_k
     (setq _reserved_k (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_l
     (setq _reserved_l (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_m
     (setq _reserved_m (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_n
     (setq _reserved_n (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _timeCfar
     (setq _timeCfar (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _reserved_o
     (setq _reserved_o (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_p
     (setq _reserved_p (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_q
     (setq _reserved_q (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_r
     (setq _reserved_r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _timeDOA
     (setq _timeDOA (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _reserved_s
     (setq _reserved_s (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_t
     (setq _reserved_t (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_u
     (setq _reserved_u (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_v
     (setq _reserved_v (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _timePCL
     (setq _timePCL (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _reserved_w
     (setq _reserved_w (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_x
     (setq _reserved_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_y
     (setq _reserved_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_z
     (setq _reserved_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _timeOD
     (setq _timeOD (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _odTimeoutCnt
     (setq _odTimeoutCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _selfCaliStatus
     (setq _selfCaliStatus (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_aa
     (setq _reserved_aa (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_ab
     (setq _reserved_ab (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_ac
     (setq _reserved_ac (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reserved_ad
     (setq _reserved_ad (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::ProcessStatus :md5sum-) "3b68402e7d30a9e6144470a4717d74aa")
(setf (get radar_msgs::ProcessStatus :datatype-) "radar_msgs/ProcessStatus")
(setf (get radar_msgs::ProcessStatus :definition-)
      "Header header                   # Includes measurement timestamp and coordinate frame.
uint32 radarID                  # radar ID
uint32 frameCnt                 # frame cnt in radar
float32 captureTime              # LSB=ms
uint32 frameLostCnt             
uint32 adcErrCnt       
uint32 reserved_a
uint32 reserved_b
float32 time1DFFT                # LSB=ms
uint32 reserved_c
uint32 reserved_d
uint32 reserved_e
uint32 reserved_f
float32 time2DFFT                # LSB=ms
uint32 reserved_g
uint32 reserved_h
uint32 reserved_i
uint32 reserved_j
float32 timeRDMap                # LSB=ms
uint32 reserved_k
uint32 reserved_l
uint32 reserved_m
uint32 reserved_n
float32 timeCfar                 # LSB=ms
uint32 reserved_o
uint32 reserved_p
uint32 reserved_q
uint32 reserved_r
float32 timeDOA                  # LSB=ms
uint32 reserved_s
uint32 reserved_t
uint32 reserved_u
uint32 reserved_v
float32 timePCL                  # LSB=ms
uint32 reserved_w                # velocity Estimated
uint32 reserved_x                # ground K
uint32 reserved_y                # ground B
uint32 reserved_z                # pcl delay time, LSB = 0.1ms
float32 timeOD                   # LSB=ms
uint32 odTimeoutCnt             
int32  selfCaliStatus           # 0: cali fails; 1: pre-cali; 1~99: calibrating(in process); 100: cali success
uint32 reserved_aa              # od delay time, LSB = 0.1ms
uint32 reserved_ab
uint32 reserved_ac
uint32 reserved_ad

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
string frame_id

")



(provide :radar_msgs/ProcessStatus "3b68402e7d30a9e6144470a4717d74aa")


