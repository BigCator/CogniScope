;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RadarTarget)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RadarTarget (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RADARTARGET")
  (make-package "RADAR_MSGS::RADARTARGET"))

(in-package "ROS")
;;//! \htmlinclude RadarTarget.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::RadarTarget
  :super ros::object
  :slots (_header _radarID _frameCnt _type _targetNum _polarState _x _y _z _v _azimuth _elevation _snr _power _valid_flg _existance_probability _motion_state _detection_class _reset_cnt _odTimeoutCnt _reserved_a _reserved_b _reserved_c _reserved_d _reserved_e _reserved_f _reserved_g _reserved_h _reserved_i _reserved_j _reserved_k _reserved_l _reserved_m _reserved_n _reserved_o ))

(defmethod radar_msgs::RadarTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:type __type) 0)
    ((:targetNum __targetNum) 0)
    ((:polarState __polarState) 0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:azimuth __azimuth) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:elevation __elevation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:snr __snr) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:power __power) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:valid_flg __valid_flg) (make-array 0 :initial-element 0 :element-type :integer))
    ((:existance_probability __existance_probability) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motion_state __motion_state) (make-array 0 :initial-element 0 :element-type :integer))
    ((:detection_class __detection_class) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reset_cnt __reset_cnt) (make-array 0 :initial-element 0 :element-type :integer))
    ((:odTimeoutCnt __odTimeoutCnt) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_a __reserved_a) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_b __reserved_b) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_c __reserved_c) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_d __reserved_d) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_e __reserved_e) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_f __reserved_f) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_g __reserved_g) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_h __reserved_h) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_i __reserved_i) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_j __reserved_j) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reserved_k __reserved_k) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reserved_l __reserved_l) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reserved_m __reserved_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reserved_n __reserved_n) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reserved_o __reserved_o) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _type (round __type))
   (setq _targetNum (round __targetNum))
   (setq _polarState (round __polarState))
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _v __v)
   (setq _azimuth __azimuth)
   (setq _elevation __elevation)
   (setq _snr __snr)
   (setq _power __power)
   (setq _valid_flg __valid_flg)
   (setq _existance_probability __existance_probability)
   (setq _motion_state __motion_state)
   (setq _detection_class __detection_class)
   (setq _reset_cnt __reset_cnt)
   (setq _odTimeoutCnt __odTimeoutCnt)
   (setq _reserved_a __reserved_a)
   (setq _reserved_b __reserved_b)
   (setq _reserved_c __reserved_c)
   (setq _reserved_d __reserved_d)
   (setq _reserved_e __reserved_e)
   (setq _reserved_f __reserved_f)
   (setq _reserved_g __reserved_g)
   (setq _reserved_h __reserved_h)
   (setq _reserved_i __reserved_i)
   (setq _reserved_j __reserved_j)
   (setq _reserved_k __reserved_k)
   (setq _reserved_l __reserved_l)
   (setq _reserved_m __reserved_m)
   (setq _reserved_n __reserved_n)
   (setq _reserved_o __reserved_o)
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
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:targetNum
   (&optional __targetNum)
   (if __targetNum (setq _targetNum __targetNum)) _targetNum)
  (:polarState
   (&optional __polarState)
   (if __polarState (setq _polarState __polarState)) _polarState)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:snr
   (&optional __snr)
   (if __snr (setq _snr __snr)) _snr)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:valid_flg
   (&optional __valid_flg)
   (if __valid_flg (setq _valid_flg __valid_flg)) _valid_flg)
  (:existance_probability
   (&optional __existance_probability)
   (if __existance_probability (setq _existance_probability __existance_probability)) _existance_probability)
  (:motion_state
   (&optional __motion_state)
   (if __motion_state (setq _motion_state __motion_state)) _motion_state)
  (:detection_class
   (&optional __detection_class)
   (if __detection_class (setq _detection_class __detection_class)) _detection_class)
  (:reset_cnt
   (&optional __reset_cnt)
   (if __reset_cnt (setq _reset_cnt __reset_cnt)) _reset_cnt)
  (:odTimeoutCnt
   (&optional __odTimeoutCnt)
   (if __odTimeoutCnt (setq _odTimeoutCnt __odTimeoutCnt)) _odTimeoutCnt)
  (:reserved_a
   (&optional __reserved_a)
   (if __reserved_a (setq _reserved_a __reserved_a)) _reserved_a)
  (:reserved_b
   (&optional __reserved_b)
   (if __reserved_b (setq _reserved_b __reserved_b)) _reserved_b)
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
  (:reserved_o
   (&optional __reserved_o)
   (if __reserved_o (setq _reserved_o __reserved_o)) _reserved_o)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; uint32 _type
    4
    ;; uint32 _targetNum
    4
    ;; uint32 _polarState
    4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _z
    (* 4    (length _z)) 4
    ;; float32[] _v
    (* 4    (length _v)) 4
    ;; float32[] _azimuth
    (* 4    (length _azimuth)) 4
    ;; float32[] _elevation
    (* 4    (length _elevation)) 4
    ;; float32[] _snr
    (* 4    (length _snr)) 4
    ;; float32[] _power
    (* 4    (length _power)) 4
    ;; uint16[] _valid_flg
    (* 2    (length _valid_flg)) 4
    ;; uint16[] _existance_probability
    (* 2    (length _existance_probability)) 4
    ;; uint16[] _motion_state
    (* 2    (length _motion_state)) 4
    ;; uint16[] _detection_class
    (* 2    (length _detection_class)) 4
    ;; uint16[] _reset_cnt
    (* 2    (length _reset_cnt)) 4
    ;; int16[] _odTimeoutCnt
    (* 2    (length _odTimeoutCnt)) 4
    ;; uint16[] _reserved_a
    (* 2    (length _reserved_a)) 4
    ;; uint16[] _reserved_b
    (* 2    (length _reserved_b)) 4
    ;; uint16[] _reserved_c
    (* 2    (length _reserved_c)) 4
    ;; uint16[] _reserved_d
    (* 2    (length _reserved_d)) 4
    ;; uint16[] _reserved_e
    (* 2    (length _reserved_e)) 4
    ;; int16[] _reserved_f
    (* 2    (length _reserved_f)) 4
    ;; int16[] _reserved_g
    (* 2    (length _reserved_g)) 4
    ;; int16[] _reserved_h
    (* 2    (length _reserved_h)) 4
    ;; int16[] _reserved_i
    (* 2    (length _reserved_i)) 4
    ;; int16[] _reserved_j
    (* 2    (length _reserved_j)) 4
    ;; float32[] _reserved_k
    (* 4    (length _reserved_k)) 4
    ;; float32[] _reserved_l
    (* 4    (length _reserved_l)) 4
    ;; float32[] _reserved_m
    (* 4    (length _reserved_m)) 4
    ;; float32[] _reserved_n
    (* 4    (length _reserved_n)) 4
    ;; float32[] _reserved_o
    (* 4    (length _reserved_o)) 4
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
     ;; uint32 _type
       (write-long _type s)
     ;; uint32 _targetNum
       (write-long _targetNum s)
     ;; uint32 _polarState
       (write-long _polarState s)
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z
     (write-long (length _z) s)
     (dotimes (i (length _z))
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v
     (write-long (length _v) s)
     (dotimes (i (length _v))
       (sys::poke (elt _v i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _azimuth
     (write-long (length _azimuth) s)
     (dotimes (i (length _azimuth))
       (sys::poke (elt _azimuth i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _elevation
     (write-long (length _elevation) s)
     (dotimes (i (length _elevation))
       (sys::poke (elt _elevation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _snr
     (write-long (length _snr) s)
     (dotimes (i (length _snr))
       (sys::poke (elt _snr i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _power
     (write-long (length _power) s)
     (dotimes (i (length _power))
       (sys::poke (elt _power i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint16[] _valid_flg
     (write-long (length _valid_flg) s)
     (dotimes (i (length _valid_flg))
       (write-word (elt _valid_flg i) s)
       )
     ;; uint16[] _existance_probability
     (write-long (length _existance_probability) s)
     (dotimes (i (length _existance_probability))
       (write-word (elt _existance_probability i) s)
       )
     ;; uint16[] _motion_state
     (write-long (length _motion_state) s)
     (dotimes (i (length _motion_state))
       (write-word (elt _motion_state i) s)
       )
     ;; uint16[] _detection_class
     (write-long (length _detection_class) s)
     (dotimes (i (length _detection_class))
       (write-word (elt _detection_class i) s)
       )
     ;; uint16[] _reset_cnt
     (write-long (length _reset_cnt) s)
     (dotimes (i (length _reset_cnt))
       (write-word (elt _reset_cnt i) s)
       )
     ;; int16[] _odTimeoutCnt
     (write-long (length _odTimeoutCnt) s)
     (dotimes (i (length _odTimeoutCnt))
       (write-word (elt _odTimeoutCnt i) s)
       )
     ;; uint16[] _reserved_a
     (write-long (length _reserved_a) s)
     (dotimes (i (length _reserved_a))
       (write-word (elt _reserved_a i) s)
       )
     ;; uint16[] _reserved_b
     (write-long (length _reserved_b) s)
     (dotimes (i (length _reserved_b))
       (write-word (elt _reserved_b i) s)
       )
     ;; uint16[] _reserved_c
     (write-long (length _reserved_c) s)
     (dotimes (i (length _reserved_c))
       (write-word (elt _reserved_c i) s)
       )
     ;; uint16[] _reserved_d
     (write-long (length _reserved_d) s)
     (dotimes (i (length _reserved_d))
       (write-word (elt _reserved_d i) s)
       )
     ;; uint16[] _reserved_e
     (write-long (length _reserved_e) s)
     (dotimes (i (length _reserved_e))
       (write-word (elt _reserved_e i) s)
       )
     ;; int16[] _reserved_f
     (write-long (length _reserved_f) s)
     (dotimes (i (length _reserved_f))
       (write-word (elt _reserved_f i) s)
       )
     ;; int16[] _reserved_g
     (write-long (length _reserved_g) s)
     (dotimes (i (length _reserved_g))
       (write-word (elt _reserved_g i) s)
       )
     ;; int16[] _reserved_h
     (write-long (length _reserved_h) s)
     (dotimes (i (length _reserved_h))
       (write-word (elt _reserved_h i) s)
       )
     ;; int16[] _reserved_i
     (write-long (length _reserved_i) s)
     (dotimes (i (length _reserved_i))
       (write-word (elt _reserved_i i) s)
       )
     ;; int16[] _reserved_j
     (write-long (length _reserved_j) s)
     (dotimes (i (length _reserved_j))
       (write-word (elt _reserved_j i) s)
       )
     ;; float32[] _reserved_k
     (write-long (length _reserved_k) s)
     (dotimes (i (length _reserved_k))
       (sys::poke (elt _reserved_k i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _reserved_l
     (write-long (length _reserved_l) s)
     (dotimes (i (length _reserved_l))
       (sys::poke (elt _reserved_l i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _reserved_m
     (write-long (length _reserved_m) s)
     (dotimes (i (length _reserved_m))
       (sys::poke (elt _reserved_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _reserved_n
     (write-long (length _reserved_n) s)
     (dotimes (i (length _reserved_n))
       (sys::poke (elt _reserved_n i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _reserved_o
     (write-long (length _reserved_o) s)
     (dotimes (i (length _reserved_o))
       (sys::poke (elt _reserved_o i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _targetNum
     (setq _targetNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _polarState
     (setq _polarState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _azimuth
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _azimuth (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _azimuth i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _elevation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _elevation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _elevation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _snr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _snr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _snr i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _power
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _power (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _power i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint16[] _valid_flg
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valid_flg (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _valid_flg i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _existance_probability
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _existance_probability (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _existance_probability i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _motion_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_state i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _detection_class
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detection_class (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _detection_class i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _reset_cnt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reset_cnt (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reset_cnt i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _odTimeoutCnt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _odTimeoutCnt (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _odTimeoutCnt i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _reserved_a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_a (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_a i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _reserved_b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_b (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_b i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _reserved_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_c (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_c i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _reserved_d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_d (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_d i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _reserved_e
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_e (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_e i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _reserved_f
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_f (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_f i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _reserved_g
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_g (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_g i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _reserved_h
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_h (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_h i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _reserved_i
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_i (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_i i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _reserved_j
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_j (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _reserved_j i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _reserved_k
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_k (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reserved_k i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _reserved_l
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_l (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reserved_l i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _reserved_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reserved_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _reserved_n
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_n (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reserved_n i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _reserved_o
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_o (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reserved_o i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get radar_msgs::RadarTarget :md5sum-) "39cd070d450863c20128f17e660772a8")
(setf (get radar_msgs::RadarTarget :datatype-) "radar_msgs/RadarTarget")
(setf (get radar_msgs::RadarTarget :definition-)
      "Header header                   # Includes measurement timestamp and coordinate frame.
uint32 radarID                  # radar ID
uint32 frameCnt                 # frame cnt in radar
uint32 type                     # default type = 1
uint32 targetNum                # targets Num
uint32 polarState               # true---数据是以极坐标方式提供,false---数据是以笛卡尔坐标系
float32[] x                     # Position x, unit: m
float32[] y                     # Position y, unit: m
float32[] z                     # Position z, unit: m
float32[] v                     # target velocity, unit: m/s
float32[] azimuth               # target azimuth, unit: degree
float32[] elevation             # target elevation, unit: degree
float32[] snr                   # target snr, unit: dB
float32[] power                 # target power, unit: dB
uint16[] valid_flg              # target valid=0, target invalid=tbd
uint16[] existance_probability  # 0 ~ 100
uint16[] motion_state           # 0:static, 1:dynamic
uint16[] detection_class        # 0 = NoClassification, 1 = Noise, 2 = Ground, 3 = TraversableUnder, 4 = Obstacle, 255 = Invalid
uint16[] reset_cnt              # counter of radar reset times
int16[] odTimeoutCnt            # counter of od process timeout
uint16[] reserved_a             # temporarily set as frame lost cnt
uint16[] reserved_b             
uint16[] reserved_c             # temporarily set as pcl with extreme value and azimuth/elevation flag
uint16[] reserved_d             
uint16[] reserved_e             
int16[] reserved_f              # temporarily set as before adc error cnt
int16[] reserved_g              # temporarily set as after adc error cnt
int16[] reserved_h              # temporarily set as extreme point flag
int16[] reserved_i              # temporarily set as extreme value number
int16[] reserved_j              # temporarily set as profile 0/1 flag
float32[] reserved_k
float32[] reserved_l
float32[] reserved_m
float32[] reserved_n
float32[] reserved_o
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



(provide :radar_msgs/RadarTarget "39cd070d450863c20128f17e660772a8")


