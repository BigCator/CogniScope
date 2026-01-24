;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::Od)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'Od (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::OD")
  (make-package "RADAR_MSGS::OD"))

(in-package "ROS")
;;//! \htmlinclude Od.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass radar_msgs::Od
  :super ros::object
  :slots (_object_ID _age _measurement_status _motion_state _existance_confidence _pose _dimensions _velocity _acceleration _v2ground _pose_nearest _type _car_confidence _bike_confidence _ped_confidence _truck_confidence _signboard_confidence _ground_confidence _obstacle_confidence _EnrollPtsNum _NearestPtsX _NearestPtsY _NearestPtsZ _Reserved_D _Reserved_E _Reserved_F _Reserved_G _Reserved_H _Reserved_I _Reserved_J _Reserved_K _Reserved_L _Reserved_M _Reserved_N _Reserved_O _Reserved_P ))

(defmethod radar_msgs::Od
  (:init
   (&key
    ((:object_ID __object_ID) 0)
    ((:age __age) 0)
    ((:measurement_status __measurement_status) 0)
    ((:motion_state __motion_state) 0)
    ((:existance_confidence __existance_confidence) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Twist :init))
    ((:v2ground __v2ground) (instance geometry_msgs::Twist :init))
    ((:pose_nearest __pose_nearest) (instance geometry_msgs::Pose :init))
    ((:type __type) 0)
    ((:car_confidence __car_confidence) 0)
    ((:bike_confidence __bike_confidence) 0)
    ((:ped_confidence __ped_confidence) 0)
    ((:truck_confidence __truck_confidence) 0)
    ((:signboard_confidence __signboard_confidence) 0)
    ((:ground_confidence __ground_confidence) 0)
    ((:obstacle_confidence __obstacle_confidence) 0)
    ((:EnrollPtsNum __EnrollPtsNum) 0.0)
    ((:NearestPtsX __NearestPtsX) 0.0)
    ((:NearestPtsY __NearestPtsY) 0.0)
    ((:NearestPtsZ __NearestPtsZ) 0.0)
    ((:Reserved_D __Reserved_D) 0.0)
    ((:Reserved_E __Reserved_E) 0)
    ((:Reserved_F __Reserved_F) 0)
    ((:Reserved_G __Reserved_G) 0)
    ((:Reserved_H __Reserved_H) 0)
    ((:Reserved_I __Reserved_I) 0)
    ((:Reserved_J __Reserved_J) 0)
    ((:Reserved_K __Reserved_K) 0)
    ((:Reserved_L __Reserved_L) 0)
    ((:Reserved_M __Reserved_M) 0)
    ((:Reserved_N __Reserved_N) 0)
    ((:Reserved_O __Reserved_O) "")
    ((:Reserved_P __Reserved_P) "")
    )
   (send-super :init)
   (setq _object_ID (round __object_ID))
   (setq _age (round __age))
   (setq _measurement_status (round __measurement_status))
   (setq _motion_state (round __motion_state))
   (setq _existance_confidence (round __existance_confidence))
   (setq _pose __pose)
   (setq _dimensions __dimensions)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _v2ground __v2ground)
   (setq _pose_nearest __pose_nearest)
   (setq _type (round __type))
   (setq _car_confidence (round __car_confidence))
   (setq _bike_confidence (round __bike_confidence))
   (setq _ped_confidence (round __ped_confidence))
   (setq _truck_confidence (round __truck_confidence))
   (setq _signboard_confidence (round __signboard_confidence))
   (setq _ground_confidence (round __ground_confidence))
   (setq _obstacle_confidence (round __obstacle_confidence))
   (setq _EnrollPtsNum (float __EnrollPtsNum))
   (setq _NearestPtsX (float __NearestPtsX))
   (setq _NearestPtsY (float __NearestPtsY))
   (setq _NearestPtsZ (float __NearestPtsZ))
   (setq _Reserved_D (float __Reserved_D))
   (setq _Reserved_E (round __Reserved_E))
   (setq _Reserved_F (round __Reserved_F))
   (setq _Reserved_G (round __Reserved_G))
   (setq _Reserved_H (round __Reserved_H))
   (setq _Reserved_I (round __Reserved_I))
   (setq _Reserved_J (round __Reserved_J))
   (setq _Reserved_K (round __Reserved_K))
   (setq _Reserved_L (round __Reserved_L))
   (setq _Reserved_M (round __Reserved_M))
   (setq _Reserved_N (round __Reserved_N))
   (setq _Reserved_O (string __Reserved_O))
   (setq _Reserved_P (string __Reserved_P))
   self)
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
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:v2ground
   (&rest __v2ground)
   (if (keywordp (car __v2ground))
       (send* _v2ground __v2ground)
     (progn
       (if __v2ground (setq _v2ground (car __v2ground)))
       _v2ground)))
  (:pose_nearest
   (&rest __pose_nearest)
   (if (keywordp (car __pose_nearest))
       (send* _pose_nearest __pose_nearest)
     (progn
       (if __pose_nearest (setq _pose_nearest (car __pose_nearest)))
       _pose_nearest)))
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
  (:EnrollPtsNum
   (&optional __EnrollPtsNum)
   (if __EnrollPtsNum (setq _EnrollPtsNum __EnrollPtsNum)) _EnrollPtsNum)
  (:NearestPtsX
   (&optional __NearestPtsX)
   (if __NearestPtsX (setq _NearestPtsX __NearestPtsX)) _NearestPtsX)
  (:NearestPtsY
   (&optional __NearestPtsY)
   (if __NearestPtsY (setq _NearestPtsY __NearestPtsY)) _NearestPtsY)
  (:NearestPtsZ
   (&optional __NearestPtsZ)
   (if __NearestPtsZ (setq _NearestPtsZ __NearestPtsZ)) _NearestPtsZ)
  (:Reserved_D
   (&optional __Reserved_D)
   (if __Reserved_D (setq _Reserved_D __Reserved_D)) _Reserved_D)
  (:Reserved_E
   (&optional __Reserved_E)
   (if __Reserved_E (setq _Reserved_E __Reserved_E)) _Reserved_E)
  (:Reserved_F
   (&optional __Reserved_F)
   (if __Reserved_F (setq _Reserved_F __Reserved_F)) _Reserved_F)
  (:Reserved_G
   (&optional __Reserved_G)
   (if __Reserved_G (setq _Reserved_G __Reserved_G)) _Reserved_G)
  (:Reserved_H
   (&optional __Reserved_H)
   (if __Reserved_H (setq _Reserved_H __Reserved_H)) _Reserved_H)
  (:Reserved_I
   (&optional __Reserved_I)
   (if __Reserved_I (setq _Reserved_I __Reserved_I)) _Reserved_I)
  (:Reserved_J
   (&optional __Reserved_J)
   (if __Reserved_J (setq _Reserved_J __Reserved_J)) _Reserved_J)
  (:Reserved_K
   (&optional __Reserved_K)
   (if __Reserved_K (setq _Reserved_K __Reserved_K)) _Reserved_K)
  (:Reserved_L
   (&optional __Reserved_L)
   (if __Reserved_L (setq _Reserved_L __Reserved_L)) _Reserved_L)
  (:Reserved_M
   (&optional __Reserved_M)
   (if __Reserved_M (setq _Reserved_M __Reserved_M)) _Reserved_M)
  (:Reserved_N
   (&optional __Reserved_N)
   (if __Reserved_N (setq _Reserved_N __Reserved_N)) _Reserved_N)
  (:Reserved_O
   (&optional __Reserved_O)
   (if __Reserved_O (setq _Reserved_O __Reserved_O)) _Reserved_O)
  (:Reserved_P
   (&optional __Reserved_P)
   (if __Reserved_P (setq _Reserved_P __Reserved_P)) _Reserved_P)
  (:serialization-length
   ()
   (+
    ;; uint32 _object_ID
    4
    ;; uint16 _age
    2
    ;; uint8 _measurement_status
    1
    ;; uint8 _motion_state
    1
    ;; uint8 _existance_confidence
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Twist _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Twist _v2ground
    (send _v2ground :serialization-length)
    ;; geometry_msgs/Pose _pose_nearest
    (send _pose_nearest :serialization-length)
    ;; uint8 _type
    1
    ;; uint8 _car_confidence
    1
    ;; uint8 _bike_confidence
    1
    ;; uint8 _ped_confidence
    1
    ;; uint8 _truck_confidence
    1
    ;; uint8 _signboard_confidence
    1
    ;; uint8 _ground_confidence
    1
    ;; uint8 _obstacle_confidence
    1
    ;; float32 _EnrollPtsNum
    4
    ;; float32 _NearestPtsX
    4
    ;; float32 _NearestPtsY
    4
    ;; float32 _NearestPtsZ
    4
    ;; float32 _Reserved_D
    4
    ;; uint32 _Reserved_E
    4
    ;; uint32 _Reserved_F
    4
    ;; int32 _Reserved_G
    4
    ;; int32 _Reserved_H
    4
    ;; uint16 _Reserved_I
    2
    ;; uint16 _Reserved_J
    2
    ;; int16 _Reserved_K
    2
    ;; int16 _Reserved_L
    2
    ;; uint8 _Reserved_M
    1
    ;; uint8 _Reserved_N
    1
    ;; string _Reserved_O
    4 (length _Reserved_O)
    ;; string _Reserved_P
    4 (length _Reserved_P)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _object_ID
       (write-long _object_ID s)
     ;; uint16 _age
       (write-word _age s)
     ;; uint8 _measurement_status
       (write-byte _measurement_status s)
     ;; uint8 _motion_state
       (write-byte _motion_state s)
     ;; uint8 _existance_confidence
       (write-byte _existance_confidence s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Twist _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Twist _v2ground
       (send _v2ground :serialize s)
     ;; geometry_msgs/Pose _pose_nearest
       (send _pose_nearest :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _car_confidence
       (write-byte _car_confidence s)
     ;; uint8 _bike_confidence
       (write-byte _bike_confidence s)
     ;; uint8 _ped_confidence
       (write-byte _ped_confidence s)
     ;; uint8 _truck_confidence
       (write-byte _truck_confidence s)
     ;; uint8 _signboard_confidence
       (write-byte _signboard_confidence s)
     ;; uint8 _ground_confidence
       (write-byte _ground_confidence s)
     ;; uint8 _obstacle_confidence
       (write-byte _obstacle_confidence s)
     ;; float32 _EnrollPtsNum
       (sys::poke _EnrollPtsNum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _NearestPtsX
       (sys::poke _NearestPtsX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _NearestPtsY
       (sys::poke _NearestPtsY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _NearestPtsZ
       (sys::poke _NearestPtsZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Reserved_D
       (sys::poke _Reserved_D (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _Reserved_E
       (write-long _Reserved_E s)
     ;; uint32 _Reserved_F
       (write-long _Reserved_F s)
     ;; int32 _Reserved_G
       (write-long _Reserved_G s)
     ;; int32 _Reserved_H
       (write-long _Reserved_H s)
     ;; uint16 _Reserved_I
       (write-word _Reserved_I s)
     ;; uint16 _Reserved_J
       (write-word _Reserved_J s)
     ;; int16 _Reserved_K
       (write-word _Reserved_K s)
     ;; int16 _Reserved_L
       (write-word _Reserved_L s)
     ;; uint8 _Reserved_M
       (write-byte _Reserved_M s)
     ;; uint8 _Reserved_N
       (write-byte _Reserved_N s)
     ;; string _Reserved_O
       (write-long (length _Reserved_O) s) (princ _Reserved_O s)
     ;; string _Reserved_P
       (write-long (length _Reserved_P) s) (princ _Reserved_P s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _object_ID
     (setq _object_ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _age
     (setq _age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _measurement_status
     (setq _measurement_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motion_state
     (setq _motion_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _existance_confidence
     (setq _existance_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Twist _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Twist _v2ground
     (send _v2ground :deserialize buf ptr-) (incf ptr- (send _v2ground :serialization-length))
   ;; geometry_msgs/Pose _pose_nearest
     (send _pose_nearest :deserialize buf ptr-) (incf ptr- (send _pose_nearest :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _car_confidence
     (setq _car_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _bike_confidence
     (setq _bike_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ped_confidence
     (setq _ped_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _truck_confidence
     (setq _truck_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _signboard_confidence
     (setq _signboard_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ground_confidence
     (setq _ground_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _obstacle_confidence
     (setq _obstacle_confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _EnrollPtsNum
     (setq _EnrollPtsNum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _NearestPtsX
     (setq _NearestPtsX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _NearestPtsY
     (setq _NearestPtsY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _NearestPtsZ
     (setq _NearestPtsZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Reserved_D
     (setq _Reserved_D (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _Reserved_E
     (setq _Reserved_E (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _Reserved_F
     (setq _Reserved_F (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Reserved_G
     (setq _Reserved_G (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Reserved_H
     (setq _Reserved_H (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Reserved_I
     (setq _Reserved_I (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Reserved_J
     (setq _Reserved_J (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Reserved_K
     (setq _Reserved_K (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Reserved_L
     (setq _Reserved_L (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _Reserved_M
     (setq _Reserved_M (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Reserved_N
     (setq _Reserved_N (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _Reserved_O
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Reserved_O (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Reserved_P
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Reserved_P (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get radar_msgs::Od :md5sum-) "8abbf365d0b04a773bf2e6d9a6dd7b7b")
(setf (get radar_msgs::Od :datatype-) "radar_msgs/Od")
(setf (get radar_msgs::Od :definition-)
      "# Header    header               # Includes measurement timestamp and coordinate frame.
uint32    object_ID            # object ID
uint16    age                  # total frames from the object occurs
uint8     measurement_status   # track status (0: measured; 1: new; 2: predicted)
uint8     motion_state         # movement state ( 0: static; 1: dynamic)
uint8     existance_confidence # existance confidence
geometry_msgs/Pose              pose #central position x, y, z; roll=0, pitch=0, yaw to quaternion
geometry_msgs/Vector3           dimensions #length, width, height
geometry_msgs/Twist             velocity
geometry_msgs/Twist             acceleration
geometry_msgs/Twist             v2ground #velocity towards ground of x, y, z orientation
geometry_msgs/Pose              pose_nearest #NearestPts x, y, z
uint8     type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)
uint8     car_confidence       # car confidence
uint8     bike_confidence      # bike confidence
uint8     ped_confidence       # pedestrian confidence
uint8     truck_confidence     # truck confidence
uint8     signboard_confidence # signboard confidence
uint8     ground_confidence    # ground confidence
uint8     obstacle_confidence  # obstacle confidence
float32   EnrollPtsNum         # EnrollPtsNum
float32   NearestPtsX          # NearestPtsX           
float32   NearestPtsY          # NearestPtsY
float32   NearestPtsZ          # NearestPtsZ
float32   Reserved_D  
uint32    Reserved_E          
uint32    Reserved_F           
int32     Reserved_G           
int32     Reserved_H    
uint16    Reserved_I   
uint16    Reserved_J    
int16     Reserved_K   
int16     Reserved_L 
uint8     Reserved_M  
uint8     Reserved_N    
string    Reserved_O
string    Reserved_P

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :radar_msgs/Od "8abbf365d0b04a773bf2e6d9a6dd7b7b")


