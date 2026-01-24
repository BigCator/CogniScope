Header    header               # Includes measurement timestamp and coordinate frame.
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
