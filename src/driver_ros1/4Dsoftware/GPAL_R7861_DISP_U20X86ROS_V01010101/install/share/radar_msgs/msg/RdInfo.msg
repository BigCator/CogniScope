Header  header              # Includes measurement timestamp and coordinate frame.
uint32  frameID
uint32  cfarCount           # cfar count
uint32  targetNum           # targets Num
int16   resetcnt            # reset count
uint32  objNum              # object number of this frame
float32 carSpeed            # ego car speed
float32 carYawRate          # ego car yaw rate
uint16  gearState           # ego car gear state
int16   odTimeoutCnt
uint16  comProtV_I
uint16  comProtV_II
uint16  frameLostCnt        # frame lost count checked by ROS sw
uint16  beforeAdcErrCnt
uint16  afterAdcErrCnt
uint32  udpFrameLostCnt     # counter of lost frames
float32 udpFreq             # frames frequency in Hz
uint16  timeSyncStatus      # status of time synchronization
float32 velEstimate         # estimated car speed, m/s
float32 gndK
float32 gndB
float32 pcl_time            # duration of od process (ms)
float32 od_time             # duration of od process (ms)
uint32  RdFrameLostCnt      # frame lost count in radar