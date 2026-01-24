;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::TrackingObj)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'TrackingObj (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::TRACKINGOBJ")
  (make-package "RADAR_MSGS::TRACKINGOBJ"))

(in-package "ROS")
;;//! \htmlinclude TrackingObj.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::TrackingObj
  :super ros::object
  :slots (_header _radarID _frameCnt _objNum _object_ID _age _measurement_status _motion_state _existance_confidence _position_x _position_y _position_z _velocity_x _velocity_y _velocity_z _acceleration_x _acceleration_y _acceleration_z _v2ground_x _v2ground_y _v2ground_z _orientation _type _car_confidence _bike_confidence _ped_confidence _truck_confidence _signboard_confidence _ground_confidence _obstacle_confidence _length _width _height _od_process_time _Reserved_B _Reserved_C _Reserved_D ))

(defmethod radar_msgs::TrackingObj
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:objNum __objNum) 0)
    ((:object_ID __object_ID) (make-array 0 :initial-element 0 :element-type :integer))
    ((:age __age) (make-array 0 :initial-element 0 :element-type :integer))
    ((:measurement_status __measurement_status) (make-array 0 :initial-element 0 :element-type :char))
    ((:motion_state __motion_state) (make-array 0 :initial-element 0 :element-type :char))
    ((:existance_confidence __existance_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:position_x __position_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_y __position_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_z __position_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_x __velocity_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_y __velocity_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_z __velocity_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration_x __acceleration_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration_y __acceleration_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration_z __acceleration_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v2ground_x __v2ground_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v2ground_y __v2ground_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v2ground_z __v2ground_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:type __type) (make-array 0 :initial-element 0 :element-type :char))
    ((:car_confidence __car_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:bike_confidence __bike_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:ped_confidence __ped_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:truck_confidence __truck_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:signboard_confidence __signboard_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:ground_confidence __ground_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:obstacle_confidence __obstacle_confidence) (make-array 0 :initial-element 0 :element-type :char))
    ((:length __length) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:width __width) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:height __height) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:od_process_time __od_process_time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Reserved_B __Reserved_B) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Reserved_C __Reserved_C) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Reserved_D __Reserved_D) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _objNum (round __objNum))
   (setq _object_ID __object_ID)
   (setq _age __age)
   (setq _measurement_status __measurement_status)
   (setq _motion_state __motion_state)
   (setq _existance_confidence __existance_confidence)
   (setq _position_x __position_x)
   (setq _position_y __position_y)
   (setq _position_z __position_z)
   (setq _velocity_x __velocity_x)
   (setq _velocity_y __velocity_y)
   (setq _velocity_z __velocity_z)
   (setq _acceleration_x __acceleration_x)
   (setq _acceleration_y __acceleration_y)
   (setq _acceleration_z __acceleration_z)
   (setq _v2ground_x __v2ground_x)
   (setq _v2ground_y __v2ground_y)
   (setq _v2ground_z __v2ground_z)
   (setq _orientation __orientation)
   (setq _type __type)
   (setq _car_confidence __car_confidence)
   (setq _bike_confidence __bike_confidence)
   (setq _ped_confidence __ped_confidence)
   (setq _truck_confidence __truck_confidence)
   (setq _signboard_confidence __signboard_confidence)
   (setq _ground_confidence __ground_confidence)
   (setq _obstacle_confidence __obstacle_confidence)
   (setq _length __length)
   (setq _width __width)
   (setq _height __height)
   (setq _od_process_time __od_process_time)
   (setq _Reserved_B __Reserved_B)
   (setq _Reserved_C __Reserved_C)
   (setq _Reserved_D __Reserved_D)
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
  (:objNum
   (&optional __objNum)
   (if __objNum (setq _objNum __objNum)) _objNum)
  (:object_ID
   (&optional __object_ID)
   (if __object_ID (setq _object_ID __object_ID)) _object_ID)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:measurement_status
   (&optional __measurement_status)
   (if __measurement_status (setq _measurement_status __measurement_status)) _measurement_status)
  (:motion_state
   (&optional __motion_state)
   (if __motion_state (setq _motion_state __motion_state)) _motion_state)
  (:existance_confidence
   (&optional __existance_confidence)
   (if __existance_confidence (setq _existance_confidence __existance_confidence)) _existance_confidence)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:position_z
   (&optional __position_z)
   (if __position_z (setq _position_z __position_z)) _position_z)
  (:velocity_x
   (&optional __velocity_x)
   (if __velocity_x (setq _velocity_x __velocity_x)) _velocity_x)
  (:velocity_y
   (&optional __velocity_y)
   (if __velocity_y (setq _velocity_y __velocity_y)) _velocity_y)
  (:velocity_z
   (&optional __velocity_z)
   (if __velocity_z (setq _velocity_z __velocity_z)) _velocity_z)
  (:acceleration_x
   (&optional __acceleration_x)
   (if __acceleration_x (setq _acceleration_x __acceleration_x)) _acceleration_x)
  (:acceleration_y
   (&optional __acceleration_y)
   (if __acceleration_y (setq _acceleration_y __acceleration_y)) _acceleration_y)
  (:acceleration_z
   (&optional __acceleration_z)
   (if __acceleration_z (setq _acceleration_z __acceleration_z)) _acceleration_z)
  (:v2ground_x
   (&optional __v2ground_x)
   (if __v2ground_x (setq _v2ground_x __v2ground_x)) _v2ground_x)
  (:v2ground_y
   (&optional __v2ground_y)
   (if __v2ground_y (setq _v2ground_y __v2ground_y)) _v2ground_y)
  (:v2ground_z
   (&optional __v2ground_z)
   (if __v2ground_z (setq _v2ground_z __v2ground_z)) _v2ground_z)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:car_confidence
   (&optional __car_confidence)
   (if __car_confidence (setq _car_confidence __car_confidence)) _car_confidence)
  (:bike_confidence
   (&optional __bike_confidence)
   (if __bike_confidence (setq _bike_confidence __bike_confidence)) _bike_confidence)
  (:ped_confidence
   (&optional __ped_confidence)
   (if __ped_confidence (setq _ped_confidence __ped_confidence)) _ped_confidence)
  (:truck_confidence
   (&optional __truck_confidence)
   (if __truck_confidence (setq _truck_confidence __truck_confidence)) _truck_confidence)
  (:signboard_confidence
   (&optional __signboard_confidence)
   (if __signboard_confidence (setq _signboard_confidence __signboard_confidence)) _signboard_confidence)
  (:ground_confidence
   (&optional __ground_confidence)
   (if __ground_confidence (setq _ground_confidence __ground_confidence)) _ground_confidence)
  (:obstacle_confidence
   (&optional __obstacle_confidence)
   (if __obstacle_confidence (setq _obstacle_confidence __obstacle_confidence)) _obstacle_confidence)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:od_process_time
   (&optional __od_process_time)
   (if __od_process_time (setq _od_process_time __od_process_time)) _od_process_time)
  (:Reserved_B
   (&optional __Reserved_B)
   (if __Reserved_B (setq _Reserved_B __Reserved_B)) _Reserved_B)
  (:Reserved_C
   (&optional __Reserved_C)
   (if __Reserved_C (setq _Reserved_C __Reserved_C)) _Reserved_C)
  (:Reserved_D
   (&optional __Reserved_D)
   (if __Reserved_D (setq _Reserved_D __Reserved_D)) _Reserved_D)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; uint32 _objNum
    4
    ;; uint32[] _object_ID
    (* 4    (length _object_ID)) 4
    ;; uint16[] _age
    (* 2    (length _age)) 4
    ;; uint8[] _measurement_status
    (* 1    (length _measurement_status)) 4
    ;; uint8[] _motion_state
    (* 1    (length _motion_state)) 4
    ;; uint8[] _existance_confidence
    (* 1    (length _existance_confidence)) 4
    ;; float32[] _position_x
    (* 4    (length _position_x)) 4
    ;; float32[] _position_y
    (* 4    (length _position_y)) 4
    ;; float32[] _position_z
    (* 4    (length _position_z)) 4
    ;; float32[] _velocity_x
    (* 4    (length _velocity_x)) 4
    ;; float32[] _velocity_y
    (* 4    (length _velocity_y)) 4
    ;; float32[] _velocity_z
    (* 4    (length _velocity_z)) 4
    ;; float32[] _acceleration_x
    (* 4    (length _acceleration_x)) 4
    ;; float32[] _acceleration_y
    (* 4    (length _acceleration_y)) 4
    ;; float32[] _acceleration_z
    (* 4    (length _acceleration_z)) 4
    ;; float32[] _v2ground_x
    (* 4    (length _v2ground_x)) 4
    ;; float32[] _v2ground_y
    (* 4    (length _v2ground_y)) 4
    ;; float32[] _v2ground_z
    (* 4    (length _v2ground_z)) 4
    ;; float32[] _orientation
    (* 4    (length _orientation)) 4
    ;; uint8[] _type
    (* 1    (length _type)) 4
    ;; uint8[] _car_confidence
    (* 1    (length _car_confidence)) 4
    ;; uint8[] _bike_confidence
    (* 1    (length _bike_confidence)) 4
    ;; uint8[] _ped_confidence
    (* 1    (length _ped_confidence)) 4
    ;; uint8[] _truck_confidence
    (* 1    (length _truck_confidence)) 4
    ;; uint8[] _signboard_confidence
    (* 1    (length _signboard_confidence)) 4
    ;; uint8[] _ground_confidence
    (* 1    (length _ground_confidence)) 4
    ;; uint8[] _obstacle_confidence
    (* 1    (length _obstacle_confidence)) 4
    ;; float32[] _length
    (* 4    (length _length)) 4
    ;; float32[] _width
    (* 4    (length _width)) 4
    ;; float32[] _height
    (* 4    (length _height)) 4
    ;; float32[] _od_process_time
    (* 4    (length _od_process_time)) 4
    ;; float32[] _Reserved_B
    (* 4    (length _Reserved_B)) 4
    ;; float32[] _Reserved_C
    (* 4    (length _Reserved_C)) 4
    ;; float32[] _Reserved_D
    (* 4    (length _Reserved_D)) 4
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
     ;; uint32 _objNum
       (write-long _objNum s)
     ;; uint32[] _object_ID
     (write-long (length _object_ID) s)
     (dotimes (i (length _object_ID))
       (write-long (elt _object_ID i) s)
       )
     ;; uint16[] _age
     (write-long (length _age) s)
     (dotimes (i (length _age))
       (write-word (elt _age i) s)
       )
     ;; uint8[] _measurement_status
     (write-long (length _measurement_status) s)
     (princ _measurement_status s)
     ;; uint8[] _motion_state
     (write-long (length _motion_state) s)
     (princ _motion_state s)
     ;; uint8[] _existance_confidence
     (write-long (length _existance_confidence) s)
     (princ _existance_confidence s)
     ;; float32[] _position_x
     (write-long (length _position_x) s)
     (dotimes (i (length _position_x))
       (sys::poke (elt _position_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _position_y
     (write-long (length _position_y) s)
     (dotimes (i (length _position_y))
       (sys::poke (elt _position_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _position_z
     (write-long (length _position_z) s)
     (dotimes (i (length _position_z))
       (sys::poke (elt _position_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocity_x
     (write-long (length _velocity_x) s)
     (dotimes (i (length _velocity_x))
       (sys::poke (elt _velocity_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocity_y
     (write-long (length _velocity_y) s)
     (dotimes (i (length _velocity_y))
       (sys::poke (elt _velocity_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocity_z
     (write-long (length _velocity_z) s)
     (dotimes (i (length _velocity_z))
       (sys::poke (elt _velocity_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acceleration_x
     (write-long (length _acceleration_x) s)
     (dotimes (i (length _acceleration_x))
       (sys::poke (elt _acceleration_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acceleration_y
     (write-long (length _acceleration_y) s)
     (dotimes (i (length _acceleration_y))
       (sys::poke (elt _acceleration_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acceleration_z
     (write-long (length _acceleration_z) s)
     (dotimes (i (length _acceleration_z))
       (sys::poke (elt _acceleration_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v2ground_x
     (write-long (length _v2ground_x) s)
     (dotimes (i (length _v2ground_x))
       (sys::poke (elt _v2ground_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v2ground_y
     (write-long (length _v2ground_y) s)
     (dotimes (i (length _v2ground_y))
       (sys::poke (elt _v2ground_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v2ground_z
     (write-long (length _v2ground_z) s)
     (dotimes (i (length _v2ground_z))
       (sys::poke (elt _v2ground_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _orientation
     (write-long (length _orientation) s)
     (dotimes (i (length _orientation))
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8[] _type
     (write-long (length _type) s)
     (princ _type s)
     ;; uint8[] _car_confidence
     (write-long (length _car_confidence) s)
     (princ _car_confidence s)
     ;; uint8[] _bike_confidence
     (write-long (length _bike_confidence) s)
     (princ _bike_confidence s)
     ;; uint8[] _ped_confidence
     (write-long (length _ped_confidence) s)
     (princ _ped_confidence s)
     ;; uint8[] _truck_confidence
     (write-long (length _truck_confidence) s)
     (princ _truck_confidence s)
     ;; uint8[] _signboard_confidence
     (write-long (length _signboard_confidence) s)
     (princ _signboard_confidence s)
     ;; uint8[] _ground_confidence
     (write-long (length _ground_confidence) s)
     (princ _ground_confidence s)
     ;; uint8[] _obstacle_confidence
     (write-long (length _obstacle_confidence) s)
     (princ _obstacle_confidence s)
     ;; float32[] _length
     (write-long (length _length) s)
     (dotimes (i (length _length))
       (sys::poke (elt _length i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _width
     (write-long (length _width) s)
     (dotimes (i (length _width))
       (sys::poke (elt _width i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _height
     (write-long (length _height) s)
     (dotimes (i (length _height))
       (sys::poke (elt _height i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _od_process_time
     (write-long (length _od_process_time) s)
     (dotimes (i (length _od_process_time))
       (sys::poke (elt _od_process_time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _Reserved_B
     (write-long (length _Reserved_B) s)
     (dotimes (i (length _Reserved_B))
       (sys::poke (elt _Reserved_B i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _Reserved_C
     (write-long (length _Reserved_C) s)
     (dotimes (i (length _Reserved_C))
       (sys::poke (elt _Reserved_C i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _Reserved_D
     (write-long (length _Reserved_D) s)
     (dotimes (i (length _Reserved_D))
       (sys::poke (elt _Reserved_D i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint32 _objNum
     (setq _objNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _object_ID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_ID (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_ID i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint16[] _age
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _age (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _age i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint8[] _measurement_status
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _measurement_status (make-array n :element-type :char))
     (replace _measurement_status buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _motion_state
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motion_state (make-array n :element-type :char))
     (replace _motion_state buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _existance_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _existance_confidence (make-array n :element-type :char))
     (replace _existance_confidence buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _position_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _position_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _position_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocity_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocity_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocity_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acceleration_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acceleration_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acceleration_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v2ground_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v2ground_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v2ground_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v2ground_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v2ground_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v2ground_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v2ground_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v2ground_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v2ground_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _orientation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orientation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8[] _type
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _type (make-array n :element-type :char))
     (replace _type buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _car_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _car_confidence (make-array n :element-type :char))
     (replace _car_confidence buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _bike_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _bike_confidence (make-array n :element-type :char))
     (replace _bike_confidence buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _ped_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _ped_confidence (make-array n :element-type :char))
     (replace _ped_confidence buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _truck_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _truck_confidence (make-array n :element-type :char))
     (replace _truck_confidence buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _signboard_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _signboard_confidence (make-array n :element-type :char))
     (replace _signboard_confidence buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _ground_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _ground_confidence (make-array n :element-type :char))
     (replace _ground_confidence buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _obstacle_confidence
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _obstacle_confidence (make-array n :element-type :char))
     (replace _obstacle_confidence buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _length
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _length (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _length i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _width
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _width (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _width i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _height
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _height (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _height i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _od_process_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _od_process_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _od_process_time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _Reserved_B
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Reserved_B (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Reserved_B i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _Reserved_C
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Reserved_C (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Reserved_C i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _Reserved_D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Reserved_D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Reserved_D i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get radar_msgs::TrackingObj :md5sum-) "4472a3692f65b382d654abf0488be272")
(setf (get radar_msgs::TrackingObj :datatype-) "radar_msgs/TrackingObj")
(setf (get radar_msgs::TrackingObj :definition-)
      "Header    header               # Includes measurement timestamp and coordinate frame.
uint32    radarID              # radar ID
uint32    frameCnt             # frame cnt in radar
uint32    objNum               # object number of this frame
uint32[]  object_ID            # object ID
uint16[]  age                  # total frames from the object occurs
uint8[]   measurement_status   # track status (0: measured; 1: new; 2: predicted)
uint8[]   motion_state         # movement state ( 0: static; 1: dynamic)
uint8[]   existance_confidence # existance confidence
float32[] position_x           # x value of central point
float32[] position_y           # y value of central point
float32[] position_z           # z value of central point
float32[] velocity_x           # relative velocity of x orientation
float32[] velocity_y           # relative velocity of y orientation
float32[] velocity_z           # relative velocity of z orientation
float32[] acceleration_x       # relative acceleration of x orientation
float32[] acceleration_y       # relative acceleration of y orientation
float32[] acceleration_z       # relative acceleration of z orientation
float32[] v2ground_x           # velocity towards ground of x orientation
float32[] v2ground_y           # velocity towards ground of y orientation
float32[] v2ground_z           # velocity towards ground of z orientation
float32[] orientation          # yaw, unit: degree
uint8[]   type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)
uint8[]  car_confidence       # car confidence
uint8[]   bike_confidence      # bike confidence
uint8[]   ped_confidence       # pedestrian confidence
uint8[]   truck_confidence     # truck confidence
uint8[]   signboard_confidence # signboard confidence
uint8[]   ground_confidence    # ground confidence
uint8[]   obstacle_confidence  # obstacle confidence
float32[] length               # length
float32[] width                # width
float32[] height               # height
float32[] od_process_time      # EnrollPtsNum
float32[] Reserved_B           # NearestPtsX
float32[] Reserved_C           # NearestPtsY
float32[] Reserved_D           # NearestPtsZ

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



(provide :radar_msgs/TrackingObj "4472a3692f65b382d654abf0488be272")


