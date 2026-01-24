# Header    header               # Includes measurement timestamp and coordinate frame.
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
