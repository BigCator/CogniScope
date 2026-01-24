Header header                   # Includes measurement timestamp and coordinate frame.
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