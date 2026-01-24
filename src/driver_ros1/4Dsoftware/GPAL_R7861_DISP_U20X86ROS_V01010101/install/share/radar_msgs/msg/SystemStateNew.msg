Header                      header  # Includes measurement timestamp and coordinate frame.
char[20]                    projectCodeNum #project number
uint16                      productYear #manufacture date: year since 2000
uint16                      productMonth #manufacture date: month
uint16                      productDay #manufacture date: day
char[20]                    porductCode
char[40]                    serialNum
char[40]                    rfHwCode
uint16                      rfHwVersion
char[40]                    dspHwCode
uint16                      dspHwVersion
char[20]                    calibrateCode
char[20]                    osVersion
char[20]                    swVersion
char[20]                    algoVersion
char[20]                    waveformVersion
uint16                      a72_0_loading
uint16                      a72_1_loading
uint32                      a72_0_freq
uint32                      a72_1_freq
uint32                      mcu_0_freq
uint32                      mcu_1_freq
uint32                      mcu_2_freq
uint32                      mcu_3_freq
uint32                      lp_mcu_0_freq
uint32                      lp_mcu_1_freq
uint32                      c7x_mma_freq
uint32                      c66x_0_freq
uint32                      c66x_1_freq
uint32                      c7x_1_freq
uint16                      rebootCnt
uint16                      memoryLoading
uint32                      junctionTemp
uint16                      lowPowerModeEnable
uint16                      errorCode
uint16                      blockageDetection
uint16                      radarMode
uint16                      udpSendEnPnt
uint16                      udpSendEnTrk
uint16                      udpSendEnRDMap
uint16                      udpSendEnCfar
uint16                      udpSendEnAdc
uint16                      udpSendEnFft1D
uint16                      udpSendEnFft2D
uint16                      udpSendEnDOA
uint16                      radarTxFreq
uint16                      frameTriggerDelay
uint16                      syncEnable
uint16                      syncRadarNum
uint16                      antiInterfaceEnable