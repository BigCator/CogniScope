;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::SystemStateNew)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'SystemStateNew (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::SYSTEMSTATENEW")
  (make-package "RADAR_MSGS::SYSTEMSTATENEW"))

(in-package "ROS")
;;//! \htmlinclude SystemStateNew.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::SystemStateNew
  :super ros::object
  :slots (_header _projectCodeNum _productYear _productMonth _productDay _porductCode _serialNum _rfHwCode _rfHwVersion _dspHwCode _dspHwVersion _calibrateCode _osVersion _swVersion _algoVersion _waveformVersion _a72_0_loading _a72_1_loading _a72_0_freq _a72_1_freq _mcu_0_freq _mcu_1_freq _mcu_2_freq _mcu_3_freq _lp_mcu_0_freq _lp_mcu_1_freq _c7x_mma_freq _c66x_0_freq _c66x_1_freq _c7x_1_freq _rebootCnt _memoryLoading _junctionTemp _lowPowerModeEnable _errorCode _blockageDetection _radarMode _udpSendEnPnt _udpSendEnTrk _udpSendEnRDMap _udpSendEnCfar _udpSendEnAdc _udpSendEnFft1D _udpSendEnFft2D _udpSendEnDOA _radarTxFreq _frameTriggerDelay _syncEnable _syncRadarNum _antiInterfaceEnable ))

(defmethod radar_msgs::SystemStateNew
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:projectCodeNum __projectCodeNum) (make-array 20 :initial-element 0 :element-type :integer))
    ((:productYear __productYear) 0)
    ((:productMonth __productMonth) 0)
    ((:productDay __productDay) 0)
    ((:porductCode __porductCode) (make-array 20 :initial-element 0 :element-type :integer))
    ((:serialNum __serialNum) (make-array 40 :initial-element 0 :element-type :integer))
    ((:rfHwCode __rfHwCode) (make-array 40 :initial-element 0 :element-type :integer))
    ((:rfHwVersion __rfHwVersion) 0)
    ((:dspHwCode __dspHwCode) (make-array 40 :initial-element 0 :element-type :integer))
    ((:dspHwVersion __dspHwVersion) 0)
    ((:calibrateCode __calibrateCode) (make-array 20 :initial-element 0 :element-type :integer))
    ((:osVersion __osVersion) (make-array 20 :initial-element 0 :element-type :integer))
    ((:swVersion __swVersion) (make-array 20 :initial-element 0 :element-type :integer))
    ((:algoVersion __algoVersion) (make-array 20 :initial-element 0 :element-type :integer))
    ((:waveformVersion __waveformVersion) (make-array 20 :initial-element 0 :element-type :integer))
    ((:a72_0_loading __a72_0_loading) 0)
    ((:a72_1_loading __a72_1_loading) 0)
    ((:a72_0_freq __a72_0_freq) 0)
    ((:a72_1_freq __a72_1_freq) 0)
    ((:mcu_0_freq __mcu_0_freq) 0)
    ((:mcu_1_freq __mcu_1_freq) 0)
    ((:mcu_2_freq __mcu_2_freq) 0)
    ((:mcu_3_freq __mcu_3_freq) 0)
    ((:lp_mcu_0_freq __lp_mcu_0_freq) 0)
    ((:lp_mcu_1_freq __lp_mcu_1_freq) 0)
    ((:c7x_mma_freq __c7x_mma_freq) 0)
    ((:c66x_0_freq __c66x_0_freq) 0)
    ((:c66x_1_freq __c66x_1_freq) 0)
    ((:c7x_1_freq __c7x_1_freq) 0)
    ((:rebootCnt __rebootCnt) 0)
    ((:memoryLoading __memoryLoading) 0)
    ((:junctionTemp __junctionTemp) 0)
    ((:lowPowerModeEnable __lowPowerModeEnable) 0)
    ((:errorCode __errorCode) 0)
    ((:blockageDetection __blockageDetection) 0)
    ((:radarMode __radarMode) 0)
    ((:udpSendEnPnt __udpSendEnPnt) 0)
    ((:udpSendEnTrk __udpSendEnTrk) 0)
    ((:udpSendEnRDMap __udpSendEnRDMap) 0)
    ((:udpSendEnCfar __udpSendEnCfar) 0)
    ((:udpSendEnAdc __udpSendEnAdc) 0)
    ((:udpSendEnFft1D __udpSendEnFft1D) 0)
    ((:udpSendEnFft2D __udpSendEnFft2D) 0)
    ((:udpSendEnDOA __udpSendEnDOA) 0)
    ((:radarTxFreq __radarTxFreq) 0)
    ((:frameTriggerDelay __frameTriggerDelay) 0)
    ((:syncEnable __syncEnable) 0)
    ((:syncRadarNum __syncRadarNum) 0)
    ((:antiInterfaceEnable __antiInterfaceEnable) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _projectCodeNum __projectCodeNum)
   (setq _productYear (round __productYear))
   (setq _productMonth (round __productMonth))
   (setq _productDay (round __productDay))
   (setq _porductCode __porductCode)
   (setq _serialNum __serialNum)
   (setq _rfHwCode __rfHwCode)
   (setq _rfHwVersion (round __rfHwVersion))
   (setq _dspHwCode __dspHwCode)
   (setq _dspHwVersion (round __dspHwVersion))
   (setq _calibrateCode __calibrateCode)
   (setq _osVersion __osVersion)
   (setq _swVersion __swVersion)
   (setq _algoVersion __algoVersion)
   (setq _waveformVersion __waveformVersion)
   (setq _a72_0_loading (round __a72_0_loading))
   (setq _a72_1_loading (round __a72_1_loading))
   (setq _a72_0_freq (round __a72_0_freq))
   (setq _a72_1_freq (round __a72_1_freq))
   (setq _mcu_0_freq (round __mcu_0_freq))
   (setq _mcu_1_freq (round __mcu_1_freq))
   (setq _mcu_2_freq (round __mcu_2_freq))
   (setq _mcu_3_freq (round __mcu_3_freq))
   (setq _lp_mcu_0_freq (round __lp_mcu_0_freq))
   (setq _lp_mcu_1_freq (round __lp_mcu_1_freq))
   (setq _c7x_mma_freq (round __c7x_mma_freq))
   (setq _c66x_0_freq (round __c66x_0_freq))
   (setq _c66x_1_freq (round __c66x_1_freq))
   (setq _c7x_1_freq (round __c7x_1_freq))
   (setq _rebootCnt (round __rebootCnt))
   (setq _memoryLoading (round __memoryLoading))
   (setq _junctionTemp (round __junctionTemp))
   (setq _lowPowerModeEnable (round __lowPowerModeEnable))
   (setq _errorCode (round __errorCode))
   (setq _blockageDetection (round __blockageDetection))
   (setq _radarMode (round __radarMode))
   (setq _udpSendEnPnt (round __udpSendEnPnt))
   (setq _udpSendEnTrk (round __udpSendEnTrk))
   (setq _udpSendEnRDMap (round __udpSendEnRDMap))
   (setq _udpSendEnCfar (round __udpSendEnCfar))
   (setq _udpSendEnAdc (round __udpSendEnAdc))
   (setq _udpSendEnFft1D (round __udpSendEnFft1D))
   (setq _udpSendEnFft2D (round __udpSendEnFft2D))
   (setq _udpSendEnDOA (round __udpSendEnDOA))
   (setq _radarTxFreq (round __radarTxFreq))
   (setq _frameTriggerDelay (round __frameTriggerDelay))
   (setq _syncEnable (round __syncEnable))
   (setq _syncRadarNum (round __syncRadarNum))
   (setq _antiInterfaceEnable (round __antiInterfaceEnable))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:projectCodeNum
   (&optional __projectCodeNum)
   (if __projectCodeNum (setq _projectCodeNum __projectCodeNum)) _projectCodeNum)
  (:productYear
   (&optional __productYear)
   (if __productYear (setq _productYear __productYear)) _productYear)
  (:productMonth
   (&optional __productMonth)
   (if __productMonth (setq _productMonth __productMonth)) _productMonth)
  (:productDay
   (&optional __productDay)
   (if __productDay (setq _productDay __productDay)) _productDay)
  (:porductCode
   (&optional __porductCode)
   (if __porductCode (setq _porductCode __porductCode)) _porductCode)
  (:serialNum
   (&optional __serialNum)
   (if __serialNum (setq _serialNum __serialNum)) _serialNum)
  (:rfHwCode
   (&optional __rfHwCode)
   (if __rfHwCode (setq _rfHwCode __rfHwCode)) _rfHwCode)
  (:rfHwVersion
   (&optional __rfHwVersion)
   (if __rfHwVersion (setq _rfHwVersion __rfHwVersion)) _rfHwVersion)
  (:dspHwCode
   (&optional __dspHwCode)
   (if __dspHwCode (setq _dspHwCode __dspHwCode)) _dspHwCode)
  (:dspHwVersion
   (&optional __dspHwVersion)
   (if __dspHwVersion (setq _dspHwVersion __dspHwVersion)) _dspHwVersion)
  (:calibrateCode
   (&optional __calibrateCode)
   (if __calibrateCode (setq _calibrateCode __calibrateCode)) _calibrateCode)
  (:osVersion
   (&optional __osVersion)
   (if __osVersion (setq _osVersion __osVersion)) _osVersion)
  (:swVersion
   (&optional __swVersion)
   (if __swVersion (setq _swVersion __swVersion)) _swVersion)
  (:algoVersion
   (&optional __algoVersion)
   (if __algoVersion (setq _algoVersion __algoVersion)) _algoVersion)
  (:waveformVersion
   (&optional __waveformVersion)
   (if __waveformVersion (setq _waveformVersion __waveformVersion)) _waveformVersion)
  (:a72_0_loading
   (&optional __a72_0_loading)
   (if __a72_0_loading (setq _a72_0_loading __a72_0_loading)) _a72_0_loading)
  (:a72_1_loading
   (&optional __a72_1_loading)
   (if __a72_1_loading (setq _a72_1_loading __a72_1_loading)) _a72_1_loading)
  (:a72_0_freq
   (&optional __a72_0_freq)
   (if __a72_0_freq (setq _a72_0_freq __a72_0_freq)) _a72_0_freq)
  (:a72_1_freq
   (&optional __a72_1_freq)
   (if __a72_1_freq (setq _a72_1_freq __a72_1_freq)) _a72_1_freq)
  (:mcu_0_freq
   (&optional __mcu_0_freq)
   (if __mcu_0_freq (setq _mcu_0_freq __mcu_0_freq)) _mcu_0_freq)
  (:mcu_1_freq
   (&optional __mcu_1_freq)
   (if __mcu_1_freq (setq _mcu_1_freq __mcu_1_freq)) _mcu_1_freq)
  (:mcu_2_freq
   (&optional __mcu_2_freq)
   (if __mcu_2_freq (setq _mcu_2_freq __mcu_2_freq)) _mcu_2_freq)
  (:mcu_3_freq
   (&optional __mcu_3_freq)
   (if __mcu_3_freq (setq _mcu_3_freq __mcu_3_freq)) _mcu_3_freq)
  (:lp_mcu_0_freq
   (&optional __lp_mcu_0_freq)
   (if __lp_mcu_0_freq (setq _lp_mcu_0_freq __lp_mcu_0_freq)) _lp_mcu_0_freq)
  (:lp_mcu_1_freq
   (&optional __lp_mcu_1_freq)
   (if __lp_mcu_1_freq (setq _lp_mcu_1_freq __lp_mcu_1_freq)) _lp_mcu_1_freq)
  (:c7x_mma_freq
   (&optional __c7x_mma_freq)
   (if __c7x_mma_freq (setq _c7x_mma_freq __c7x_mma_freq)) _c7x_mma_freq)
  (:c66x_0_freq
   (&optional __c66x_0_freq)
   (if __c66x_0_freq (setq _c66x_0_freq __c66x_0_freq)) _c66x_0_freq)
  (:c66x_1_freq
   (&optional __c66x_1_freq)
   (if __c66x_1_freq (setq _c66x_1_freq __c66x_1_freq)) _c66x_1_freq)
  (:c7x_1_freq
   (&optional __c7x_1_freq)
   (if __c7x_1_freq (setq _c7x_1_freq __c7x_1_freq)) _c7x_1_freq)
  (:rebootCnt
   (&optional __rebootCnt)
   (if __rebootCnt (setq _rebootCnt __rebootCnt)) _rebootCnt)
  (:memoryLoading
   (&optional __memoryLoading)
   (if __memoryLoading (setq _memoryLoading __memoryLoading)) _memoryLoading)
  (:junctionTemp
   (&optional __junctionTemp)
   (if __junctionTemp (setq _junctionTemp __junctionTemp)) _junctionTemp)
  (:lowPowerModeEnable
   (&optional __lowPowerModeEnable)
   (if __lowPowerModeEnable (setq _lowPowerModeEnable __lowPowerModeEnable)) _lowPowerModeEnable)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:blockageDetection
   (&optional __blockageDetection)
   (if __blockageDetection (setq _blockageDetection __blockageDetection)) _blockageDetection)
  (:radarMode
   (&optional __radarMode)
   (if __radarMode (setq _radarMode __radarMode)) _radarMode)
  (:udpSendEnPnt
   (&optional __udpSendEnPnt)
   (if __udpSendEnPnt (setq _udpSendEnPnt __udpSendEnPnt)) _udpSendEnPnt)
  (:udpSendEnTrk
   (&optional __udpSendEnTrk)
   (if __udpSendEnTrk (setq _udpSendEnTrk __udpSendEnTrk)) _udpSendEnTrk)
  (:udpSendEnRDMap
   (&optional __udpSendEnRDMap)
   (if __udpSendEnRDMap (setq _udpSendEnRDMap __udpSendEnRDMap)) _udpSendEnRDMap)
  (:udpSendEnCfar
   (&optional __udpSendEnCfar)
   (if __udpSendEnCfar (setq _udpSendEnCfar __udpSendEnCfar)) _udpSendEnCfar)
  (:udpSendEnAdc
   (&optional __udpSendEnAdc)
   (if __udpSendEnAdc (setq _udpSendEnAdc __udpSendEnAdc)) _udpSendEnAdc)
  (:udpSendEnFft1D
   (&optional __udpSendEnFft1D)
   (if __udpSendEnFft1D (setq _udpSendEnFft1D __udpSendEnFft1D)) _udpSendEnFft1D)
  (:udpSendEnFft2D
   (&optional __udpSendEnFft2D)
   (if __udpSendEnFft2D (setq _udpSendEnFft2D __udpSendEnFft2D)) _udpSendEnFft2D)
  (:udpSendEnDOA
   (&optional __udpSendEnDOA)
   (if __udpSendEnDOA (setq _udpSendEnDOA __udpSendEnDOA)) _udpSendEnDOA)
  (:radarTxFreq
   (&optional __radarTxFreq)
   (if __radarTxFreq (setq _radarTxFreq __radarTxFreq)) _radarTxFreq)
  (:frameTriggerDelay
   (&optional __frameTriggerDelay)
   (if __frameTriggerDelay (setq _frameTriggerDelay __frameTriggerDelay)) _frameTriggerDelay)
  (:syncEnable
   (&optional __syncEnable)
   (if __syncEnable (setq _syncEnable __syncEnable)) _syncEnable)
  (:syncRadarNum
   (&optional __syncRadarNum)
   (if __syncRadarNum (setq _syncRadarNum __syncRadarNum)) _syncRadarNum)
  (:antiInterfaceEnable
   (&optional __antiInterfaceEnable)
   (if __antiInterfaceEnable (setq _antiInterfaceEnable __antiInterfaceEnable)) _antiInterfaceEnable)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; char[20] _projectCodeNum
    (* 1    20)
    ;; uint16 _productYear
    2
    ;; uint16 _productMonth
    2
    ;; uint16 _productDay
    2
    ;; char[20] _porductCode
    (* 1    20)
    ;; char[40] _serialNum
    (* 1    40)
    ;; char[40] _rfHwCode
    (* 1    40)
    ;; uint16 _rfHwVersion
    2
    ;; char[40] _dspHwCode
    (* 1    40)
    ;; uint16 _dspHwVersion
    2
    ;; char[20] _calibrateCode
    (* 1    20)
    ;; char[20] _osVersion
    (* 1    20)
    ;; char[20] _swVersion
    (* 1    20)
    ;; char[20] _algoVersion
    (* 1    20)
    ;; char[20] _waveformVersion
    (* 1    20)
    ;; uint16 _a72_0_loading
    2
    ;; uint16 _a72_1_loading
    2
    ;; uint32 _a72_0_freq
    4
    ;; uint32 _a72_1_freq
    4
    ;; uint32 _mcu_0_freq
    4
    ;; uint32 _mcu_1_freq
    4
    ;; uint32 _mcu_2_freq
    4
    ;; uint32 _mcu_3_freq
    4
    ;; uint32 _lp_mcu_0_freq
    4
    ;; uint32 _lp_mcu_1_freq
    4
    ;; uint32 _c7x_mma_freq
    4
    ;; uint32 _c66x_0_freq
    4
    ;; uint32 _c66x_1_freq
    4
    ;; uint32 _c7x_1_freq
    4
    ;; uint16 _rebootCnt
    2
    ;; uint16 _memoryLoading
    2
    ;; uint32 _junctionTemp
    4
    ;; uint16 _lowPowerModeEnable
    2
    ;; uint16 _errorCode
    2
    ;; uint16 _blockageDetection
    2
    ;; uint16 _radarMode
    2
    ;; uint16 _udpSendEnPnt
    2
    ;; uint16 _udpSendEnTrk
    2
    ;; uint16 _udpSendEnRDMap
    2
    ;; uint16 _udpSendEnCfar
    2
    ;; uint16 _udpSendEnAdc
    2
    ;; uint16 _udpSendEnFft1D
    2
    ;; uint16 _udpSendEnFft2D
    2
    ;; uint16 _udpSendEnDOA
    2
    ;; uint16 _radarTxFreq
    2
    ;; uint16 _frameTriggerDelay
    2
    ;; uint16 _syncEnable
    2
    ;; uint16 _syncRadarNum
    2
    ;; uint16 _antiInterfaceEnable
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; char[20] _projectCodeNum
     (dotimes (i 20)
       (write-byte (elt _projectCodeNum i) s)
       )
     ;; uint16 _productYear
       (write-word _productYear s)
     ;; uint16 _productMonth
       (write-word _productMonth s)
     ;; uint16 _productDay
       (write-word _productDay s)
     ;; char[20] _porductCode
     (dotimes (i 20)
       (write-byte (elt _porductCode i) s)
       )
     ;; char[40] _serialNum
     (dotimes (i 40)
       (write-byte (elt _serialNum i) s)
       )
     ;; char[40] _rfHwCode
     (dotimes (i 40)
       (write-byte (elt _rfHwCode i) s)
       )
     ;; uint16 _rfHwVersion
       (write-word _rfHwVersion s)
     ;; char[40] _dspHwCode
     (dotimes (i 40)
       (write-byte (elt _dspHwCode i) s)
       )
     ;; uint16 _dspHwVersion
       (write-word _dspHwVersion s)
     ;; char[20] _calibrateCode
     (dotimes (i 20)
       (write-byte (elt _calibrateCode i) s)
       )
     ;; char[20] _osVersion
     (dotimes (i 20)
       (write-byte (elt _osVersion i) s)
       )
     ;; char[20] _swVersion
     (dotimes (i 20)
       (write-byte (elt _swVersion i) s)
       )
     ;; char[20] _algoVersion
     (dotimes (i 20)
       (write-byte (elt _algoVersion i) s)
       )
     ;; char[20] _waveformVersion
     (dotimes (i 20)
       (write-byte (elt _waveformVersion i) s)
       )
     ;; uint16 _a72_0_loading
       (write-word _a72_0_loading s)
     ;; uint16 _a72_1_loading
       (write-word _a72_1_loading s)
     ;; uint32 _a72_0_freq
       (write-long _a72_0_freq s)
     ;; uint32 _a72_1_freq
       (write-long _a72_1_freq s)
     ;; uint32 _mcu_0_freq
       (write-long _mcu_0_freq s)
     ;; uint32 _mcu_1_freq
       (write-long _mcu_1_freq s)
     ;; uint32 _mcu_2_freq
       (write-long _mcu_2_freq s)
     ;; uint32 _mcu_3_freq
       (write-long _mcu_3_freq s)
     ;; uint32 _lp_mcu_0_freq
       (write-long _lp_mcu_0_freq s)
     ;; uint32 _lp_mcu_1_freq
       (write-long _lp_mcu_1_freq s)
     ;; uint32 _c7x_mma_freq
       (write-long _c7x_mma_freq s)
     ;; uint32 _c66x_0_freq
       (write-long _c66x_0_freq s)
     ;; uint32 _c66x_1_freq
       (write-long _c66x_1_freq s)
     ;; uint32 _c7x_1_freq
       (write-long _c7x_1_freq s)
     ;; uint16 _rebootCnt
       (write-word _rebootCnt s)
     ;; uint16 _memoryLoading
       (write-word _memoryLoading s)
     ;; uint32 _junctionTemp
       (write-long _junctionTemp s)
     ;; uint16 _lowPowerModeEnable
       (write-word _lowPowerModeEnable s)
     ;; uint16 _errorCode
       (write-word _errorCode s)
     ;; uint16 _blockageDetection
       (write-word _blockageDetection s)
     ;; uint16 _radarMode
       (write-word _radarMode s)
     ;; uint16 _udpSendEnPnt
       (write-word _udpSendEnPnt s)
     ;; uint16 _udpSendEnTrk
       (write-word _udpSendEnTrk s)
     ;; uint16 _udpSendEnRDMap
       (write-word _udpSendEnRDMap s)
     ;; uint16 _udpSendEnCfar
       (write-word _udpSendEnCfar s)
     ;; uint16 _udpSendEnAdc
       (write-word _udpSendEnAdc s)
     ;; uint16 _udpSendEnFft1D
       (write-word _udpSendEnFft1D s)
     ;; uint16 _udpSendEnFft2D
       (write-word _udpSendEnFft2D s)
     ;; uint16 _udpSendEnDOA
       (write-word _udpSendEnDOA s)
     ;; uint16 _radarTxFreq
       (write-word _radarTxFreq s)
     ;; uint16 _frameTriggerDelay
       (write-word _frameTriggerDelay s)
     ;; uint16 _syncEnable
       (write-word _syncEnable s)
     ;; uint16 _syncRadarNum
       (write-word _syncRadarNum s)
     ;; uint16 _antiInterfaceEnable
       (write-word _antiInterfaceEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; char[20] _projectCodeNum
   (dotimes (i (length _projectCodeNum))
     (setf (elt _projectCodeNum i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; uint16 _productYear
     (setq _productYear (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _productMonth
     (setq _productMonth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _productDay
     (setq _productDay (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; char[20] _porductCode
   (dotimes (i (length _porductCode))
     (setf (elt _porductCode i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[40] _serialNum
   (dotimes (i (length _serialNum))
     (setf (elt _serialNum i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[40] _rfHwCode
   (dotimes (i (length _rfHwCode))
     (setf (elt _rfHwCode i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; uint16 _rfHwVersion
     (setq _rfHwVersion (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; char[40] _dspHwCode
   (dotimes (i (length _dspHwCode))
     (setf (elt _dspHwCode i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; uint16 _dspHwVersion
     (setq _dspHwVersion (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; char[20] _calibrateCode
   (dotimes (i (length _calibrateCode))
     (setf (elt _calibrateCode i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[20] _osVersion
   (dotimes (i (length _osVersion))
     (setf (elt _osVersion i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[20] _swVersion
   (dotimes (i (length _swVersion))
     (setf (elt _swVersion i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[20] _algoVersion
   (dotimes (i (length _algoVersion))
     (setf (elt _algoVersion i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; char[20] _waveformVersion
   (dotimes (i (length _waveformVersion))
     (setf (elt _waveformVersion i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     )
   ;; uint16 _a72_0_loading
     (setq _a72_0_loading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _a72_1_loading
     (setq _a72_1_loading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _a72_0_freq
     (setq _a72_0_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _a72_1_freq
     (setq _a72_1_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mcu_0_freq
     (setq _mcu_0_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mcu_1_freq
     (setq _mcu_1_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mcu_2_freq
     (setq _mcu_2_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mcu_3_freq
     (setq _mcu_3_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lp_mcu_0_freq
     (setq _lp_mcu_0_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lp_mcu_1_freq
     (setq _lp_mcu_1_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _c7x_mma_freq
     (setq _c7x_mma_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _c66x_0_freq
     (setq _c66x_0_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _c66x_1_freq
     (setq _c66x_1_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _c7x_1_freq
     (setq _c7x_1_freq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _rebootCnt
     (setq _rebootCnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _memoryLoading
     (setq _memoryLoading (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _junctionTemp
     (setq _junctionTemp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _lowPowerModeEnable
     (setq _lowPowerModeEnable (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _errorCode
     (setq _errorCode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blockageDetection
     (setq _blockageDetection (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _radarMode
     (setq _radarMode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnPnt
     (setq _udpSendEnPnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnTrk
     (setq _udpSendEnTrk (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnRDMap
     (setq _udpSendEnRDMap (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnCfar
     (setq _udpSendEnCfar (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnAdc
     (setq _udpSendEnAdc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnFft1D
     (setq _udpSendEnFft1D (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnFft2D
     (setq _udpSendEnFft2D (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _udpSendEnDOA
     (setq _udpSendEnDOA (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _radarTxFreq
     (setq _radarTxFreq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _frameTriggerDelay
     (setq _frameTriggerDelay (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _syncEnable
     (setq _syncEnable (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _syncRadarNum
     (setq _syncRadarNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _antiInterfaceEnable
     (setq _antiInterfaceEnable (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get radar_msgs::SystemStateNew :md5sum-) "5cd1f98266d88da5518e239931fd3c7a")
(setf (get radar_msgs::SystemStateNew :datatype-) "radar_msgs/SystemStateNew")
(setf (get radar_msgs::SystemStateNew :definition-)
      "Header                      header  # Includes measurement timestamp and coordinate frame.
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



(provide :radar_msgs/SystemStateNew "5cd1f98266d88da5518e239931fd3c7a")


