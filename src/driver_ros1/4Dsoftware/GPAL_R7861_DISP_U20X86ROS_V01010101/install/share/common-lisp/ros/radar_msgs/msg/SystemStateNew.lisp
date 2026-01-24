; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude SystemStateNew.msg.html

(cl:defclass <SystemStateNew> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (projectCodeNum
    :reader projectCodeNum
    :initarg :projectCodeNum
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (productYear
    :reader productYear
    :initarg :productYear
    :type cl:fixnum
    :initform 0)
   (productMonth
    :reader productMonth
    :initarg :productMonth
    :type cl:fixnum
    :initform 0)
   (productDay
    :reader productDay
    :initarg :productDay
    :type cl:fixnum
    :initform 0)
   (porductCode
    :reader porductCode
    :initarg :porductCode
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (serialNum
    :reader serialNum
    :initarg :serialNum
    :type (cl:vector cl:integer)
   :initform (cl:make-array 40 :element-type 'cl:integer :initial-element 0))
   (rfHwCode
    :reader rfHwCode
    :initarg :rfHwCode
    :type (cl:vector cl:integer)
   :initform (cl:make-array 40 :element-type 'cl:integer :initial-element 0))
   (rfHwVersion
    :reader rfHwVersion
    :initarg :rfHwVersion
    :type cl:fixnum
    :initform 0)
   (dspHwCode
    :reader dspHwCode
    :initarg :dspHwCode
    :type (cl:vector cl:integer)
   :initform (cl:make-array 40 :element-type 'cl:integer :initial-element 0))
   (dspHwVersion
    :reader dspHwVersion
    :initarg :dspHwVersion
    :type cl:fixnum
    :initform 0)
   (calibrateCode
    :reader calibrateCode
    :initarg :calibrateCode
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (osVersion
    :reader osVersion
    :initarg :osVersion
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (swVersion
    :reader swVersion
    :initarg :swVersion
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (algoVersion
    :reader algoVersion
    :initarg :algoVersion
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (waveformVersion
    :reader waveformVersion
    :initarg :waveformVersion
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (a72_0_loading
    :reader a72_0_loading
    :initarg :a72_0_loading
    :type cl:fixnum
    :initform 0)
   (a72_1_loading
    :reader a72_1_loading
    :initarg :a72_1_loading
    :type cl:fixnum
    :initform 0)
   (a72_0_freq
    :reader a72_0_freq
    :initarg :a72_0_freq
    :type cl:integer
    :initform 0)
   (a72_1_freq
    :reader a72_1_freq
    :initarg :a72_1_freq
    :type cl:integer
    :initform 0)
   (mcu_0_freq
    :reader mcu_0_freq
    :initarg :mcu_0_freq
    :type cl:integer
    :initform 0)
   (mcu_1_freq
    :reader mcu_1_freq
    :initarg :mcu_1_freq
    :type cl:integer
    :initform 0)
   (mcu_2_freq
    :reader mcu_2_freq
    :initarg :mcu_2_freq
    :type cl:integer
    :initform 0)
   (mcu_3_freq
    :reader mcu_3_freq
    :initarg :mcu_3_freq
    :type cl:integer
    :initform 0)
   (lp_mcu_0_freq
    :reader lp_mcu_0_freq
    :initarg :lp_mcu_0_freq
    :type cl:integer
    :initform 0)
   (lp_mcu_1_freq
    :reader lp_mcu_1_freq
    :initarg :lp_mcu_1_freq
    :type cl:integer
    :initform 0)
   (c7x_mma_freq
    :reader c7x_mma_freq
    :initarg :c7x_mma_freq
    :type cl:integer
    :initform 0)
   (c66x_0_freq
    :reader c66x_0_freq
    :initarg :c66x_0_freq
    :type cl:integer
    :initform 0)
   (c66x_1_freq
    :reader c66x_1_freq
    :initarg :c66x_1_freq
    :type cl:integer
    :initform 0)
   (c7x_1_freq
    :reader c7x_1_freq
    :initarg :c7x_1_freq
    :type cl:integer
    :initform 0)
   (rebootCnt
    :reader rebootCnt
    :initarg :rebootCnt
    :type cl:fixnum
    :initform 0)
   (memoryLoading
    :reader memoryLoading
    :initarg :memoryLoading
    :type cl:fixnum
    :initform 0)
   (junctionTemp
    :reader junctionTemp
    :initarg :junctionTemp
    :type cl:integer
    :initform 0)
   (lowPowerModeEnable
    :reader lowPowerModeEnable
    :initarg :lowPowerModeEnable
    :type cl:fixnum
    :initform 0)
   (errorCode
    :reader errorCode
    :initarg :errorCode
    :type cl:fixnum
    :initform 0)
   (blockageDetection
    :reader blockageDetection
    :initarg :blockageDetection
    :type cl:fixnum
    :initform 0)
   (radarMode
    :reader radarMode
    :initarg :radarMode
    :type cl:fixnum
    :initform 0)
   (udpSendEnPnt
    :reader udpSendEnPnt
    :initarg :udpSendEnPnt
    :type cl:fixnum
    :initform 0)
   (udpSendEnTrk
    :reader udpSendEnTrk
    :initarg :udpSendEnTrk
    :type cl:fixnum
    :initform 0)
   (udpSendEnRDMap
    :reader udpSendEnRDMap
    :initarg :udpSendEnRDMap
    :type cl:fixnum
    :initform 0)
   (udpSendEnCfar
    :reader udpSendEnCfar
    :initarg :udpSendEnCfar
    :type cl:fixnum
    :initform 0)
   (udpSendEnAdc
    :reader udpSendEnAdc
    :initarg :udpSendEnAdc
    :type cl:fixnum
    :initform 0)
   (udpSendEnFft1D
    :reader udpSendEnFft1D
    :initarg :udpSendEnFft1D
    :type cl:fixnum
    :initform 0)
   (udpSendEnFft2D
    :reader udpSendEnFft2D
    :initarg :udpSendEnFft2D
    :type cl:fixnum
    :initform 0)
   (udpSendEnDOA
    :reader udpSendEnDOA
    :initarg :udpSendEnDOA
    :type cl:fixnum
    :initform 0)
   (radarTxFreq
    :reader radarTxFreq
    :initarg :radarTxFreq
    :type cl:fixnum
    :initform 0)
   (frameTriggerDelay
    :reader frameTriggerDelay
    :initarg :frameTriggerDelay
    :type cl:fixnum
    :initform 0)
   (syncEnable
    :reader syncEnable
    :initarg :syncEnable
    :type cl:fixnum
    :initform 0)
   (syncRadarNum
    :reader syncRadarNum
    :initarg :syncRadarNum
    :type cl:fixnum
    :initform 0)
   (antiInterfaceEnable
    :reader antiInterfaceEnable
    :initarg :antiInterfaceEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SystemStateNew (<SystemStateNew>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStateNew>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStateNew)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<SystemStateNew> is deprecated: use radar_msgs-msg:SystemStateNew instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'projectCodeNum-val :lambda-list '(m))
(cl:defmethod projectCodeNum-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:projectCodeNum-val is deprecated.  Use radar_msgs-msg:projectCodeNum instead.")
  (projectCodeNum m))

(cl:ensure-generic-function 'productYear-val :lambda-list '(m))
(cl:defmethod productYear-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:productYear-val is deprecated.  Use radar_msgs-msg:productYear instead.")
  (productYear m))

(cl:ensure-generic-function 'productMonth-val :lambda-list '(m))
(cl:defmethod productMonth-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:productMonth-val is deprecated.  Use radar_msgs-msg:productMonth instead.")
  (productMonth m))

(cl:ensure-generic-function 'productDay-val :lambda-list '(m))
(cl:defmethod productDay-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:productDay-val is deprecated.  Use radar_msgs-msg:productDay instead.")
  (productDay m))

(cl:ensure-generic-function 'porductCode-val :lambda-list '(m))
(cl:defmethod porductCode-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:porductCode-val is deprecated.  Use radar_msgs-msg:porductCode instead.")
  (porductCode m))

(cl:ensure-generic-function 'serialNum-val :lambda-list '(m))
(cl:defmethod serialNum-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:serialNum-val is deprecated.  Use radar_msgs-msg:serialNum instead.")
  (serialNum m))

(cl:ensure-generic-function 'rfHwCode-val :lambda-list '(m))
(cl:defmethod rfHwCode-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rfHwCode-val is deprecated.  Use radar_msgs-msg:rfHwCode instead.")
  (rfHwCode m))

(cl:ensure-generic-function 'rfHwVersion-val :lambda-list '(m))
(cl:defmethod rfHwVersion-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rfHwVersion-val is deprecated.  Use radar_msgs-msg:rfHwVersion instead.")
  (rfHwVersion m))

(cl:ensure-generic-function 'dspHwCode-val :lambda-list '(m))
(cl:defmethod dspHwCode-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:dspHwCode-val is deprecated.  Use radar_msgs-msg:dspHwCode instead.")
  (dspHwCode m))

(cl:ensure-generic-function 'dspHwVersion-val :lambda-list '(m))
(cl:defmethod dspHwVersion-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:dspHwVersion-val is deprecated.  Use radar_msgs-msg:dspHwVersion instead.")
  (dspHwVersion m))

(cl:ensure-generic-function 'calibrateCode-val :lambda-list '(m))
(cl:defmethod calibrateCode-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:calibrateCode-val is deprecated.  Use radar_msgs-msg:calibrateCode instead.")
  (calibrateCode m))

(cl:ensure-generic-function 'osVersion-val :lambda-list '(m))
(cl:defmethod osVersion-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:osVersion-val is deprecated.  Use radar_msgs-msg:osVersion instead.")
  (osVersion m))

(cl:ensure-generic-function 'swVersion-val :lambda-list '(m))
(cl:defmethod swVersion-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:swVersion-val is deprecated.  Use radar_msgs-msg:swVersion instead.")
  (swVersion m))

(cl:ensure-generic-function 'algoVersion-val :lambda-list '(m))
(cl:defmethod algoVersion-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:algoVersion-val is deprecated.  Use radar_msgs-msg:algoVersion instead.")
  (algoVersion m))

(cl:ensure-generic-function 'waveformVersion-val :lambda-list '(m))
(cl:defmethod waveformVersion-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:waveformVersion-val is deprecated.  Use radar_msgs-msg:waveformVersion instead.")
  (waveformVersion m))

(cl:ensure-generic-function 'a72_0_loading-val :lambda-list '(m))
(cl:defmethod a72_0_loading-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:a72_0_loading-val is deprecated.  Use radar_msgs-msg:a72_0_loading instead.")
  (a72_0_loading m))

(cl:ensure-generic-function 'a72_1_loading-val :lambda-list '(m))
(cl:defmethod a72_1_loading-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:a72_1_loading-val is deprecated.  Use radar_msgs-msg:a72_1_loading instead.")
  (a72_1_loading m))

(cl:ensure-generic-function 'a72_0_freq-val :lambda-list '(m))
(cl:defmethod a72_0_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:a72_0_freq-val is deprecated.  Use radar_msgs-msg:a72_0_freq instead.")
  (a72_0_freq m))

(cl:ensure-generic-function 'a72_1_freq-val :lambda-list '(m))
(cl:defmethod a72_1_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:a72_1_freq-val is deprecated.  Use radar_msgs-msg:a72_1_freq instead.")
  (a72_1_freq m))

(cl:ensure-generic-function 'mcu_0_freq-val :lambda-list '(m))
(cl:defmethod mcu_0_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:mcu_0_freq-val is deprecated.  Use radar_msgs-msg:mcu_0_freq instead.")
  (mcu_0_freq m))

(cl:ensure-generic-function 'mcu_1_freq-val :lambda-list '(m))
(cl:defmethod mcu_1_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:mcu_1_freq-val is deprecated.  Use radar_msgs-msg:mcu_1_freq instead.")
  (mcu_1_freq m))

(cl:ensure-generic-function 'mcu_2_freq-val :lambda-list '(m))
(cl:defmethod mcu_2_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:mcu_2_freq-val is deprecated.  Use radar_msgs-msg:mcu_2_freq instead.")
  (mcu_2_freq m))

(cl:ensure-generic-function 'mcu_3_freq-val :lambda-list '(m))
(cl:defmethod mcu_3_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:mcu_3_freq-val is deprecated.  Use radar_msgs-msg:mcu_3_freq instead.")
  (mcu_3_freq m))

(cl:ensure-generic-function 'lp_mcu_0_freq-val :lambda-list '(m))
(cl:defmethod lp_mcu_0_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:lp_mcu_0_freq-val is deprecated.  Use radar_msgs-msg:lp_mcu_0_freq instead.")
  (lp_mcu_0_freq m))

(cl:ensure-generic-function 'lp_mcu_1_freq-val :lambda-list '(m))
(cl:defmethod lp_mcu_1_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:lp_mcu_1_freq-val is deprecated.  Use radar_msgs-msg:lp_mcu_1_freq instead.")
  (lp_mcu_1_freq m))

(cl:ensure-generic-function 'c7x_mma_freq-val :lambda-list '(m))
(cl:defmethod c7x_mma_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:c7x_mma_freq-val is deprecated.  Use radar_msgs-msg:c7x_mma_freq instead.")
  (c7x_mma_freq m))

(cl:ensure-generic-function 'c66x_0_freq-val :lambda-list '(m))
(cl:defmethod c66x_0_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:c66x_0_freq-val is deprecated.  Use radar_msgs-msg:c66x_0_freq instead.")
  (c66x_0_freq m))

(cl:ensure-generic-function 'c66x_1_freq-val :lambda-list '(m))
(cl:defmethod c66x_1_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:c66x_1_freq-val is deprecated.  Use radar_msgs-msg:c66x_1_freq instead.")
  (c66x_1_freq m))

(cl:ensure-generic-function 'c7x_1_freq-val :lambda-list '(m))
(cl:defmethod c7x_1_freq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:c7x_1_freq-val is deprecated.  Use radar_msgs-msg:c7x_1_freq instead.")
  (c7x_1_freq m))

(cl:ensure-generic-function 'rebootCnt-val :lambda-list '(m))
(cl:defmethod rebootCnt-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:rebootCnt-val is deprecated.  Use radar_msgs-msg:rebootCnt instead.")
  (rebootCnt m))

(cl:ensure-generic-function 'memoryLoading-val :lambda-list '(m))
(cl:defmethod memoryLoading-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:memoryLoading-val is deprecated.  Use radar_msgs-msg:memoryLoading instead.")
  (memoryLoading m))

(cl:ensure-generic-function 'junctionTemp-val :lambda-list '(m))
(cl:defmethod junctionTemp-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:junctionTemp-val is deprecated.  Use radar_msgs-msg:junctionTemp instead.")
  (junctionTemp m))

(cl:ensure-generic-function 'lowPowerModeEnable-val :lambda-list '(m))
(cl:defmethod lowPowerModeEnable-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:lowPowerModeEnable-val is deprecated.  Use radar_msgs-msg:lowPowerModeEnable instead.")
  (lowPowerModeEnable m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:errorCode-val is deprecated.  Use radar_msgs-msg:errorCode instead.")
  (errorCode m))

(cl:ensure-generic-function 'blockageDetection-val :lambda-list '(m))
(cl:defmethod blockageDetection-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:blockageDetection-val is deprecated.  Use radar_msgs-msg:blockageDetection instead.")
  (blockageDetection m))

(cl:ensure-generic-function 'radarMode-val :lambda-list '(m))
(cl:defmethod radarMode-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarMode-val is deprecated.  Use radar_msgs-msg:radarMode instead.")
  (radarMode m))

(cl:ensure-generic-function 'udpSendEnPnt-val :lambda-list '(m))
(cl:defmethod udpSendEnPnt-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnPnt-val is deprecated.  Use radar_msgs-msg:udpSendEnPnt instead.")
  (udpSendEnPnt m))

(cl:ensure-generic-function 'udpSendEnTrk-val :lambda-list '(m))
(cl:defmethod udpSendEnTrk-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnTrk-val is deprecated.  Use radar_msgs-msg:udpSendEnTrk instead.")
  (udpSendEnTrk m))

(cl:ensure-generic-function 'udpSendEnRDMap-val :lambda-list '(m))
(cl:defmethod udpSendEnRDMap-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnRDMap-val is deprecated.  Use radar_msgs-msg:udpSendEnRDMap instead.")
  (udpSendEnRDMap m))

(cl:ensure-generic-function 'udpSendEnCfar-val :lambda-list '(m))
(cl:defmethod udpSendEnCfar-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnCfar-val is deprecated.  Use radar_msgs-msg:udpSendEnCfar instead.")
  (udpSendEnCfar m))

(cl:ensure-generic-function 'udpSendEnAdc-val :lambda-list '(m))
(cl:defmethod udpSendEnAdc-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnAdc-val is deprecated.  Use radar_msgs-msg:udpSendEnAdc instead.")
  (udpSendEnAdc m))

(cl:ensure-generic-function 'udpSendEnFft1D-val :lambda-list '(m))
(cl:defmethod udpSendEnFft1D-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnFft1D-val is deprecated.  Use radar_msgs-msg:udpSendEnFft1D instead.")
  (udpSendEnFft1D m))

(cl:ensure-generic-function 'udpSendEnFft2D-val :lambda-list '(m))
(cl:defmethod udpSendEnFft2D-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnFft2D-val is deprecated.  Use radar_msgs-msg:udpSendEnFft2D instead.")
  (udpSendEnFft2D m))

(cl:ensure-generic-function 'udpSendEnDOA-val :lambda-list '(m))
(cl:defmethod udpSendEnDOA-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:udpSendEnDOA-val is deprecated.  Use radar_msgs-msg:udpSendEnDOA instead.")
  (udpSendEnDOA m))

(cl:ensure-generic-function 'radarTxFreq-val :lambda-list '(m))
(cl:defmethod radarTxFreq-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarTxFreq-val is deprecated.  Use radar_msgs-msg:radarTxFreq instead.")
  (radarTxFreq m))

(cl:ensure-generic-function 'frameTriggerDelay-val :lambda-list '(m))
(cl:defmethod frameTriggerDelay-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameTriggerDelay-val is deprecated.  Use radar_msgs-msg:frameTriggerDelay instead.")
  (frameTriggerDelay m))

(cl:ensure-generic-function 'syncEnable-val :lambda-list '(m))
(cl:defmethod syncEnable-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:syncEnable-val is deprecated.  Use radar_msgs-msg:syncEnable instead.")
  (syncEnable m))

(cl:ensure-generic-function 'syncRadarNum-val :lambda-list '(m))
(cl:defmethod syncRadarNum-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:syncRadarNum-val is deprecated.  Use radar_msgs-msg:syncRadarNum instead.")
  (syncRadarNum m))

(cl:ensure-generic-function 'antiInterfaceEnable-val :lambda-list '(m))
(cl:defmethod antiInterfaceEnable-val ((m <SystemStateNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:antiInterfaceEnable-val is deprecated.  Use radar_msgs-msg:antiInterfaceEnable instead.")
  (antiInterfaceEnable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStateNew>) ostream)
  "Serializes a message object of type '<SystemStateNew>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'projectCodeNum))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productYear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productYear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productMonth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productMonth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productDay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productDay)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'porductCode))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'serialNum))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'rfHwCode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfHwVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfHwVersion)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'dspHwCode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dspHwVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dspHwVersion)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'calibrateCode))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'osVersion))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'swVersion))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'algoVersion))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'waveformVersion))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_0_loading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_0_loading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_1_loading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_1_loading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a72_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a72_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a72_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a72_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_2_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_2_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_2_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_2_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_3_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_3_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_3_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_3_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lp_mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lp_mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lp_mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lp_mcu_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lp_mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lp_mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lp_mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lp_mcu_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c7x_mma_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c7x_mma_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c7x_mma_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c7x_mma_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c66x_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c66x_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c66x_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c66x_0_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c66x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c66x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c66x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c66x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c7x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c7x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c7x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c7x_1_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rebootCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rebootCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'memoryLoading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'memoryLoading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'junctionTemp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'junctionTemp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'junctionTemp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'junctionTemp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowPowerModeEnable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lowPowerModeEnable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blockageDetection)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blockageDetection)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnPnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnPnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnTrk)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnTrk)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnRDMap)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnRDMap)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnCfar)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnCfar)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnAdc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnAdc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnFft1D)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnFft1D)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnFft2D)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnFft2D)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnDOA)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnDOA)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarTxFreq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarTxFreq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameTriggerDelay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameTriggerDelay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'syncEnable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'syncEnable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'syncRadarNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'syncRadarNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antiInterfaceEnable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'antiInterfaceEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStateNew>) istream)
  "Deserializes a message object of type '<SystemStateNew>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'projectCodeNum) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'projectCodeNum)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productYear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productYear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productMonth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productMonth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'productDay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'productDay)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'porductCode) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'porductCode)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'serialNum) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'serialNum)))
    (cl:dotimes (i 40)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'rfHwCode) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'rfHwCode)))
    (cl:dotimes (i 40)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rfHwVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rfHwVersion)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dspHwCode) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'dspHwCode)))
    (cl:dotimes (i 40)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dspHwVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dspHwVersion)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'calibrateCode) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'calibrateCode)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'osVersion) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'osVersion)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'swVersion) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'swVersion)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'algoVersion) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'algoVersion)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'waveformVersion) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'waveformVersion)))
    (cl:dotimes (i 20)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_0_loading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_0_loading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_1_loading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_1_loading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a72_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a72_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'a72_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'a72_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'a72_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'a72_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_2_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_2_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_2_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_2_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mcu_3_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mcu_3_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mcu_3_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mcu_3_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lp_mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lp_mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lp_mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lp_mcu_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lp_mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lp_mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lp_mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lp_mcu_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c7x_mma_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c7x_mma_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c7x_mma_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c7x_mma_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c66x_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c66x_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c66x_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c66x_0_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c66x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c66x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c66x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c66x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'c7x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'c7x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'c7x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'c7x_1_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rebootCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rebootCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'memoryLoading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'memoryLoading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'junctionTemp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'junctionTemp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'junctionTemp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'junctionTemp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowPowerModeEnable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lowPowerModeEnable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blockageDetection)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blockageDetection)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnPnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnPnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnTrk)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnTrk)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnRDMap)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnRDMap)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnCfar)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnCfar)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnAdc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnAdc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnFft1D)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnFft1D)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnFft2D)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnFft2D)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udpSendEnDOA)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'udpSendEnDOA)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarTxFreq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarTxFreq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameTriggerDelay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameTriggerDelay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'syncEnable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'syncEnable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'syncRadarNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'syncRadarNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antiInterfaceEnable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'antiInterfaceEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStateNew>)))
  "Returns string type for a message object of type '<SystemStateNew>"
  "radar_msgs/SystemStateNew")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStateNew)))
  "Returns string type for a message object of type 'SystemStateNew"
  "radar_msgs/SystemStateNew")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStateNew>)))
  "Returns md5sum for a message object of type '<SystemStateNew>"
  "5cd1f98266d88da5518e239931fd3c7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStateNew)))
  "Returns md5sum for a message object of type 'SystemStateNew"
  "5cd1f98266d88da5518e239931fd3c7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStateNew>)))
  "Returns full string definition for message of type '<SystemStateNew>"
  (cl:format cl:nil "Header                      header  # Includes measurement timestamp and coordinate frame.~%char[20]                    projectCodeNum #project number~%uint16                      productYear #manufacture date: year since 2000~%uint16                      productMonth #manufacture date: month~%uint16                      productDay #manufacture date: day~%char[20]                    porductCode~%char[40]                    serialNum~%char[40]                    rfHwCode~%uint16                      rfHwVersion~%char[40]                    dspHwCode~%uint16                      dspHwVersion~%char[20]                    calibrateCode~%char[20]                    osVersion~%char[20]                    swVersion~%char[20]                    algoVersion~%char[20]                    waveformVersion~%uint16                      a72_0_loading~%uint16                      a72_1_loading~%uint32                      a72_0_freq~%uint32                      a72_1_freq~%uint32                      mcu_0_freq~%uint32                      mcu_1_freq~%uint32                      mcu_2_freq~%uint32                      mcu_3_freq~%uint32                      lp_mcu_0_freq~%uint32                      lp_mcu_1_freq~%uint32                      c7x_mma_freq~%uint32                      c66x_0_freq~%uint32                      c66x_1_freq~%uint32                      c7x_1_freq~%uint16                      rebootCnt~%uint16                      memoryLoading~%uint32                      junctionTemp~%uint16                      lowPowerModeEnable~%uint16                      errorCode~%uint16                      blockageDetection~%uint16                      radarMode~%uint16                      udpSendEnPnt~%uint16                      udpSendEnTrk~%uint16                      udpSendEnRDMap~%uint16                      udpSendEnCfar~%uint16                      udpSendEnAdc~%uint16                      udpSendEnFft1D~%uint16                      udpSendEnFft2D~%uint16                      udpSendEnDOA~%uint16                      radarTxFreq~%uint16                      frameTriggerDelay~%uint16                      syncEnable~%uint16                      syncRadarNum~%uint16                      antiInterfaceEnable~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStateNew)))
  "Returns full string definition for message of type 'SystemStateNew"
  (cl:format cl:nil "Header                      header  # Includes measurement timestamp and coordinate frame.~%char[20]                    projectCodeNum #project number~%uint16                      productYear #manufacture date: year since 2000~%uint16                      productMonth #manufacture date: month~%uint16                      productDay #manufacture date: day~%char[20]                    porductCode~%char[40]                    serialNum~%char[40]                    rfHwCode~%uint16                      rfHwVersion~%char[40]                    dspHwCode~%uint16                      dspHwVersion~%char[20]                    calibrateCode~%char[20]                    osVersion~%char[20]                    swVersion~%char[20]                    algoVersion~%char[20]                    waveformVersion~%uint16                      a72_0_loading~%uint16                      a72_1_loading~%uint32                      a72_0_freq~%uint32                      a72_1_freq~%uint32                      mcu_0_freq~%uint32                      mcu_1_freq~%uint32                      mcu_2_freq~%uint32                      mcu_3_freq~%uint32                      lp_mcu_0_freq~%uint32                      lp_mcu_1_freq~%uint32                      c7x_mma_freq~%uint32                      c66x_0_freq~%uint32                      c66x_1_freq~%uint32                      c7x_1_freq~%uint16                      rebootCnt~%uint16                      memoryLoading~%uint32                      junctionTemp~%uint16                      lowPowerModeEnable~%uint16                      errorCode~%uint16                      blockageDetection~%uint16                      radarMode~%uint16                      udpSendEnPnt~%uint16                      udpSendEnTrk~%uint16                      udpSendEnRDMap~%uint16                      udpSendEnCfar~%uint16                      udpSendEnAdc~%uint16                      udpSendEnFft1D~%uint16                      udpSendEnFft2D~%uint16                      udpSendEnDOA~%uint16                      radarTxFreq~%uint16                      frameTriggerDelay~%uint16                      syncEnable~%uint16                      syncRadarNum~%uint16                      antiInterfaceEnable~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStateNew>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'projectCodeNum) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'porductCode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'serialNum) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rfHwCode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'dspHwCode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'calibrateCode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'osVersion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'swVersion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'algoVersion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'waveformVersion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     2
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     2
     2
     4
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStateNew>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStateNew
    (cl:cons ':header (header msg))
    (cl:cons ':projectCodeNum (projectCodeNum msg))
    (cl:cons ':productYear (productYear msg))
    (cl:cons ':productMonth (productMonth msg))
    (cl:cons ':productDay (productDay msg))
    (cl:cons ':porductCode (porductCode msg))
    (cl:cons ':serialNum (serialNum msg))
    (cl:cons ':rfHwCode (rfHwCode msg))
    (cl:cons ':rfHwVersion (rfHwVersion msg))
    (cl:cons ':dspHwCode (dspHwCode msg))
    (cl:cons ':dspHwVersion (dspHwVersion msg))
    (cl:cons ':calibrateCode (calibrateCode msg))
    (cl:cons ':osVersion (osVersion msg))
    (cl:cons ':swVersion (swVersion msg))
    (cl:cons ':algoVersion (algoVersion msg))
    (cl:cons ':waveformVersion (waveformVersion msg))
    (cl:cons ':a72_0_loading (a72_0_loading msg))
    (cl:cons ':a72_1_loading (a72_1_loading msg))
    (cl:cons ':a72_0_freq (a72_0_freq msg))
    (cl:cons ':a72_1_freq (a72_1_freq msg))
    (cl:cons ':mcu_0_freq (mcu_0_freq msg))
    (cl:cons ':mcu_1_freq (mcu_1_freq msg))
    (cl:cons ':mcu_2_freq (mcu_2_freq msg))
    (cl:cons ':mcu_3_freq (mcu_3_freq msg))
    (cl:cons ':lp_mcu_0_freq (lp_mcu_0_freq msg))
    (cl:cons ':lp_mcu_1_freq (lp_mcu_1_freq msg))
    (cl:cons ':c7x_mma_freq (c7x_mma_freq msg))
    (cl:cons ':c66x_0_freq (c66x_0_freq msg))
    (cl:cons ':c66x_1_freq (c66x_1_freq msg))
    (cl:cons ':c7x_1_freq (c7x_1_freq msg))
    (cl:cons ':rebootCnt (rebootCnt msg))
    (cl:cons ':memoryLoading (memoryLoading msg))
    (cl:cons ':junctionTemp (junctionTemp msg))
    (cl:cons ':lowPowerModeEnable (lowPowerModeEnable msg))
    (cl:cons ':errorCode (errorCode msg))
    (cl:cons ':blockageDetection (blockageDetection msg))
    (cl:cons ':radarMode (radarMode msg))
    (cl:cons ':udpSendEnPnt (udpSendEnPnt msg))
    (cl:cons ':udpSendEnTrk (udpSendEnTrk msg))
    (cl:cons ':udpSendEnRDMap (udpSendEnRDMap msg))
    (cl:cons ':udpSendEnCfar (udpSendEnCfar msg))
    (cl:cons ':udpSendEnAdc (udpSendEnAdc msg))
    (cl:cons ':udpSendEnFft1D (udpSendEnFft1D msg))
    (cl:cons ':udpSendEnFft2D (udpSendEnFft2D msg))
    (cl:cons ':udpSendEnDOA (udpSendEnDOA msg))
    (cl:cons ':radarTxFreq (radarTxFreq msg))
    (cl:cons ':frameTriggerDelay (frameTriggerDelay msg))
    (cl:cons ':syncEnable (syncEnable msg))
    (cl:cons ':syncRadarNum (syncRadarNum msg))
    (cl:cons ':antiInterfaceEnable (antiInterfaceEnable msg))
))
