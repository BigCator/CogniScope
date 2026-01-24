Header header                   # Includes measurement timestamp and coordinate frame.
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
