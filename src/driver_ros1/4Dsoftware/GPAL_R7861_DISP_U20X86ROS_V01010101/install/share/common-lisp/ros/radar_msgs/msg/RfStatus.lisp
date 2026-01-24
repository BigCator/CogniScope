; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude RfStatus.msg.html

(cl:defclass <RfStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (radarID
    :reader radarID
    :initarg :radarID
    :type cl:integer
    :initform 0)
   (frameCnt
    :reader frameCnt
    :initarg :frameCnt
    :type cl:integer
    :initform 0)
   (digLatentFaultData
    :reader digLatentFaultData
    :initarg :digLatentFaultData
    :type radar_msgs-msg:RlDigLatentFaultReportData
    :initform (cl:make-instance 'radar_msgs-msg:RlDigLatentFaultReportData))
   (reportHeaderData
    :reader reportHeaderData
    :initarg :reportHeaderData
    :type radar_msgs-msg:RlMonReportHdrData
    :initform (cl:make-instance 'radar_msgs-msg:RlMonReportHdrData))
   (reportTempData
    :reader reportTempData
    :initarg :reportTempData
    :type radar_msgs-msg:RlMonTempReportData
    :initform (cl:make-instance 'radar_msgs-msg:RlMonTempReportData))
   (digPeriodicReportData
    :reader digPeriodicReportData
    :initarg :digPeriodicReportData
    :type radar_msgs-msg:RlDigPeriodicReportData
    :initform (cl:make-instance 'radar_msgs-msg:RlDigPeriodicReportData))
   (reportRxGainPhData
    :reader reportRxGainPhData
    :initarg :reportRxGainPhData
    :type (cl:vector radar_msgs-msg:RlMonRxGainPhRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonRxGainPhRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonRxGainPhRep)))
   (reportRxNoiseFigData
    :reader reportRxNoiseFigData
    :initarg :reportRxNoiseFigData
    :type (cl:vector radar_msgs-msg:RlMonRxNoiseFigRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonRxNoiseFigRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonRxNoiseFigRep)))
   (reportRxIfStageData
    :reader reportRxIfStageData
    :initarg :reportRxIfStageData
    :type (cl:vector radar_msgs-msg:RlMonRxIfStageRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonRxIfStageRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonRxIfStageRep)))
   (reportRxIntAnaSigData
    :reader reportRxIntAnaSigData
    :initarg :reportRxIntAnaSigData
    :type (cl:vector radar_msgs-msg:RlMonRxIntAnaSigRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonRxIntAnaSigRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonRxIntAnaSigRep)))
   (reportPmclkloIntAnaSigData
    :reader reportPmclkloIntAnaSigData
    :initarg :reportPmclkloIntAnaSigData
    :type (cl:vector radar_msgs-msg:RlMonPmclkloIntAnaSigRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonPmclkloIntAnaSigRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonPmclkloIntAnaSigRep)))
   (reportGpadcIntAnaSigData
    :reader reportGpadcIntAnaSigData
    :initarg :reportGpadcIntAnaSigData
    :type radar_msgs-msg:RlMonGpadcIntAnaSigRep
    :initform (cl:make-instance 'radar_msgs-msg:RlMonGpadcIntAnaSigRep))
   (reportPllConVoltData
    :reader reportPllConVoltData
    :initarg :reportPllConVoltData
    :type radar_msgs-msg:RlMonPllConVoltRep
    :initform (cl:make-instance 'radar_msgs-msg:RlMonPllConVoltRep))
   (reportDccClkFreqData
    :reader reportDccClkFreqData
    :initarg :reportDccClkFreqData
    :type radar_msgs-msg:RlMonDccClkFreqRep
    :initform (cl:make-instance 'radar_msgs-msg:RlMonDccClkFreqRep))
   (reportSynthFreqNonLiveData
    :reader reportSynthFreqNonLiveData
    :initarg :reportSynthFreqNonLiveData
    :type radar_msgs-msg:RlMonSynthFreqNonLiveRep
    :initform (cl:make-instance 'radar_msgs-msg:RlMonSynthFreqNonLiveRep))
   (reportRxMixrInPwrData
    :reader reportRxMixrInPwrData
    :initarg :reportRxMixrInPwrData
    :type (cl:vector radar_msgs-msg:RlMonRxMixrInPwrRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonRxMixrInPwrRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonRxMixrInPwrRep)))
   (reportTxIntAnaSigData
    :reader reportTxIntAnaSigData
    :initarg :reportTxIntAnaSigData
    :type (cl:vector radar_msgs-msg:RlMonTxIntAnaSigRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonTxIntAnaSigRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonTxIntAnaSigRep)))
   (reportExtAnaSigData
    :reader reportExtAnaSigData
    :initarg :reportExtAnaSigData
    :type radar_msgs-msg:RlMonExtAnaSigRep
    :initform (cl:make-instance 'radar_msgs-msg:RlMonExtAnaSigRep))
   (reportSynthFreqData
    :reader reportSynthFreqData
    :initarg :reportSynthFreqData
    :type (cl:vector radar_msgs-msg:RlMonSynthFreqRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonSynthFreqRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonSynthFreqRep)))
   (reportTxPhShiftData
    :reader reportTxPhShiftData
    :initarg :reportTxPhShiftData
    :type (cl:vector radar_msgs-msg:RlMonTxPhShiftRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonTxPhShiftRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonTxPhShiftRep)))
   (reportTxGainPhaMisData
    :reader reportTxGainPhaMisData
    :initarg :reportTxGainPhaMisData
    :type (cl:vector radar_msgs-msg:RlMonTxGainPhaMisRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonTxGainPhaMisRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonTxGainPhaMisRep)))
   (reportTxBallBreakData
    :reader reportTxBallBreakData
    :initarg :reportTxBallBreakData
    :type radar_msgs-msg:RlMonTxBallBreakRep
    :initform (cl:make-instance 'radar_msgs-msg:RlMonTxBallBreakRep))
   (reportTxPowData
    :reader reportTxPowData
    :initarg :reportTxPowData
    :type (cl:vector radar_msgs-msg:RlMonTxPowRep)
   :initform (cl:make-array 2 :element-type 'radar_msgs-msg:RlMonTxPowRep :initial-element (cl:make-instance 'radar_msgs-msg:RlMonTxPowRep)))
   (reportRecvdGpAdcData
    :reader reportRecvdGpAdcData
    :initarg :reportRecvdGpAdcData
    :type radar_msgs-msg:RlRecvdGpAdcData
    :initform (cl:make-instance 'radar_msgs-msg:RlRecvdGpAdcData))
   (reportAnalogFaultData
    :reader reportAnalogFaultData
    :initarg :reportAnalogFaultData
    :type radar_msgs-msg:RlAnalogFaultReportData
    :initform (cl:make-instance 'radar_msgs-msg:RlAnalogFaultReportData))
   (reportTimingErrorData
    :reader reportTimingErrorData
    :initarg :reportTimingErrorData
    :type radar_msgs-msg:RlCalMonTimingErrorReportData
    :initform (cl:make-instance 'radar_msgs-msg:RlCalMonTimingErrorReportData)))
)

(cl:defclass RfStatus (<RfStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<RfStatus> is deprecated: use radar_msgs-msg:RfStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarID-val :lambda-list '(m))
(cl:defmethod radarID-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarID-val is deprecated.  Use radar_msgs-msg:radarID instead.")
  (radarID m))

(cl:ensure-generic-function 'frameCnt-val :lambda-list '(m))
(cl:defmethod frameCnt-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameCnt-val is deprecated.  Use radar_msgs-msg:frameCnt instead.")
  (frameCnt m))

(cl:ensure-generic-function 'digLatentFaultData-val :lambda-list '(m))
(cl:defmethod digLatentFaultData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:digLatentFaultData-val is deprecated.  Use radar_msgs-msg:digLatentFaultData instead.")
  (digLatentFaultData m))

(cl:ensure-generic-function 'reportHeaderData-val :lambda-list '(m))
(cl:defmethod reportHeaderData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportHeaderData-val is deprecated.  Use radar_msgs-msg:reportHeaderData instead.")
  (reportHeaderData m))

(cl:ensure-generic-function 'reportTempData-val :lambda-list '(m))
(cl:defmethod reportTempData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportTempData-val is deprecated.  Use radar_msgs-msg:reportTempData instead.")
  (reportTempData m))

(cl:ensure-generic-function 'digPeriodicReportData-val :lambda-list '(m))
(cl:defmethod digPeriodicReportData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:digPeriodicReportData-val is deprecated.  Use radar_msgs-msg:digPeriodicReportData instead.")
  (digPeriodicReportData m))

(cl:ensure-generic-function 'reportRxGainPhData-val :lambda-list '(m))
(cl:defmethod reportRxGainPhData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportRxGainPhData-val is deprecated.  Use radar_msgs-msg:reportRxGainPhData instead.")
  (reportRxGainPhData m))

(cl:ensure-generic-function 'reportRxNoiseFigData-val :lambda-list '(m))
(cl:defmethod reportRxNoiseFigData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportRxNoiseFigData-val is deprecated.  Use radar_msgs-msg:reportRxNoiseFigData instead.")
  (reportRxNoiseFigData m))

(cl:ensure-generic-function 'reportRxIfStageData-val :lambda-list '(m))
(cl:defmethod reportRxIfStageData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportRxIfStageData-val is deprecated.  Use radar_msgs-msg:reportRxIfStageData instead.")
  (reportRxIfStageData m))

(cl:ensure-generic-function 'reportRxIntAnaSigData-val :lambda-list '(m))
(cl:defmethod reportRxIntAnaSigData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportRxIntAnaSigData-val is deprecated.  Use radar_msgs-msg:reportRxIntAnaSigData instead.")
  (reportRxIntAnaSigData m))

(cl:ensure-generic-function 'reportPmclkloIntAnaSigData-val :lambda-list '(m))
(cl:defmethod reportPmclkloIntAnaSigData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportPmclkloIntAnaSigData-val is deprecated.  Use radar_msgs-msg:reportPmclkloIntAnaSigData instead.")
  (reportPmclkloIntAnaSigData m))

(cl:ensure-generic-function 'reportGpadcIntAnaSigData-val :lambda-list '(m))
(cl:defmethod reportGpadcIntAnaSigData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportGpadcIntAnaSigData-val is deprecated.  Use radar_msgs-msg:reportGpadcIntAnaSigData instead.")
  (reportGpadcIntAnaSigData m))

(cl:ensure-generic-function 'reportPllConVoltData-val :lambda-list '(m))
(cl:defmethod reportPllConVoltData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportPllConVoltData-val is deprecated.  Use radar_msgs-msg:reportPllConVoltData instead.")
  (reportPllConVoltData m))

(cl:ensure-generic-function 'reportDccClkFreqData-val :lambda-list '(m))
(cl:defmethod reportDccClkFreqData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportDccClkFreqData-val is deprecated.  Use radar_msgs-msg:reportDccClkFreqData instead.")
  (reportDccClkFreqData m))

(cl:ensure-generic-function 'reportSynthFreqNonLiveData-val :lambda-list '(m))
(cl:defmethod reportSynthFreqNonLiveData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportSynthFreqNonLiveData-val is deprecated.  Use radar_msgs-msg:reportSynthFreqNonLiveData instead.")
  (reportSynthFreqNonLiveData m))

(cl:ensure-generic-function 'reportRxMixrInPwrData-val :lambda-list '(m))
(cl:defmethod reportRxMixrInPwrData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportRxMixrInPwrData-val is deprecated.  Use radar_msgs-msg:reportRxMixrInPwrData instead.")
  (reportRxMixrInPwrData m))

(cl:ensure-generic-function 'reportTxIntAnaSigData-val :lambda-list '(m))
(cl:defmethod reportTxIntAnaSigData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportTxIntAnaSigData-val is deprecated.  Use radar_msgs-msg:reportTxIntAnaSigData instead.")
  (reportTxIntAnaSigData m))

(cl:ensure-generic-function 'reportExtAnaSigData-val :lambda-list '(m))
(cl:defmethod reportExtAnaSigData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportExtAnaSigData-val is deprecated.  Use radar_msgs-msg:reportExtAnaSigData instead.")
  (reportExtAnaSigData m))

(cl:ensure-generic-function 'reportSynthFreqData-val :lambda-list '(m))
(cl:defmethod reportSynthFreqData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportSynthFreqData-val is deprecated.  Use radar_msgs-msg:reportSynthFreqData instead.")
  (reportSynthFreqData m))

(cl:ensure-generic-function 'reportTxPhShiftData-val :lambda-list '(m))
(cl:defmethod reportTxPhShiftData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportTxPhShiftData-val is deprecated.  Use radar_msgs-msg:reportTxPhShiftData instead.")
  (reportTxPhShiftData m))

(cl:ensure-generic-function 'reportTxGainPhaMisData-val :lambda-list '(m))
(cl:defmethod reportTxGainPhaMisData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportTxGainPhaMisData-val is deprecated.  Use radar_msgs-msg:reportTxGainPhaMisData instead.")
  (reportTxGainPhaMisData m))

(cl:ensure-generic-function 'reportTxBallBreakData-val :lambda-list '(m))
(cl:defmethod reportTxBallBreakData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportTxBallBreakData-val is deprecated.  Use radar_msgs-msg:reportTxBallBreakData instead.")
  (reportTxBallBreakData m))

(cl:ensure-generic-function 'reportTxPowData-val :lambda-list '(m))
(cl:defmethod reportTxPowData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportTxPowData-val is deprecated.  Use radar_msgs-msg:reportTxPowData instead.")
  (reportTxPowData m))

(cl:ensure-generic-function 'reportRecvdGpAdcData-val :lambda-list '(m))
(cl:defmethod reportRecvdGpAdcData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportRecvdGpAdcData-val is deprecated.  Use radar_msgs-msg:reportRecvdGpAdcData instead.")
  (reportRecvdGpAdcData m))

(cl:ensure-generic-function 'reportAnalogFaultData-val :lambda-list '(m))
(cl:defmethod reportAnalogFaultData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportAnalogFaultData-val is deprecated.  Use radar_msgs-msg:reportAnalogFaultData instead.")
  (reportAnalogFaultData m))

(cl:ensure-generic-function 'reportTimingErrorData-val :lambda-list '(m))
(cl:defmethod reportTimingErrorData-val ((m <RfStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reportTimingErrorData-val is deprecated.  Use radar_msgs-msg:reportTimingErrorData instead.")
  (reportTimingErrorData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfStatus>) ostream)
  "Serializes a message object of type '<RfStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'digLatentFaultData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportHeaderData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportTempData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'digPeriodicReportData) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportRxGainPhData))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportRxNoiseFigData))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportRxIfStageData))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportRxIntAnaSigData))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportPmclkloIntAnaSigData))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportGpadcIntAnaSigData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportPllConVoltData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportDccClkFreqData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportSynthFreqNonLiveData) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportRxMixrInPwrData))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportTxIntAnaSigData))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportExtAnaSigData) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportSynthFreqData))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportTxPhShiftData))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportTxGainPhaMisData))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportTxBallBreakData) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reportTxPowData))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportRecvdGpAdcData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportAnalogFaultData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reportTimingErrorData) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfStatus>) istream)
  "Deserializes a message object of type '<RfStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'digLatentFaultData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportHeaderData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportTempData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'digPeriodicReportData) istream)
  (cl:setf (cl:slot-value msg 'reportRxGainPhData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportRxGainPhData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonRxGainPhRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reportRxNoiseFigData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportRxNoiseFigData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonRxNoiseFigRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reportRxIfStageData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportRxIfStageData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonRxIfStageRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reportRxIntAnaSigData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportRxIntAnaSigData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonRxIntAnaSigRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reportPmclkloIntAnaSigData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportPmclkloIntAnaSigData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonPmclkloIntAnaSigRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportGpadcIntAnaSigData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportPllConVoltData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportDccClkFreqData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportSynthFreqNonLiveData) istream)
  (cl:setf (cl:slot-value msg 'reportRxMixrInPwrData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportRxMixrInPwrData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonRxMixrInPwrRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reportTxIntAnaSigData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportTxIntAnaSigData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonTxIntAnaSigRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportExtAnaSigData) istream)
  (cl:setf (cl:slot-value msg 'reportSynthFreqData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportSynthFreqData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonSynthFreqRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reportTxPhShiftData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportTxPhShiftData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonTxPhShiftRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'reportTxGainPhaMisData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportTxGainPhaMisData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonTxGainPhaMisRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportTxBallBreakData) istream)
  (cl:setf (cl:slot-value msg 'reportTxPowData) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'reportTxPowData)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_msgs-msg:RlMonTxPowRep))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportRecvdGpAdcData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportAnalogFaultData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reportTimingErrorData) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfStatus>)))
  "Returns string type for a message object of type '<RfStatus>"
  "radar_msgs/RfStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfStatus)))
  "Returns string type for a message object of type 'RfStatus"
  "radar_msgs/RfStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfStatus>)))
  "Returns md5sum for a message object of type '<RfStatus>"
  "6fa249dd965cece786013e1f923eed7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfStatus)))
  "Returns md5sum for a message object of type 'RfStatus"
  "6fa249dd965cece786013e1f923eed7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfStatus>)))
  "Returns full string definition for message of type '<RfStatus>"
  (cl:format cl:nil "Header                          header  # Includes measurement timestamp and coordinate frame.~%uint32                          radarID # radar ID~%uint32                          frameCnt # frame cnt in radar~%RlDigLatentFaultReportData      digLatentFaultData~%RlMonReportHdrData              reportHeaderData~%RlMonTempReportData             reportTempData~%RlDigPeriodicReportData         digPeriodicReportData~%RlMonRxGainPhRep[2]             reportRxGainPhData~%RlMonRxNoiseFigRep[2]           reportRxNoiseFigData~%RlMonRxIfStageRep[2]            reportRxIfStageData~%RlMonRxIntAnaSigRep[2]          reportRxIntAnaSigData~%RlMonPmclkloIntAnaSigRep[2]     reportPmclkloIntAnaSigData~%RlMonGpadcIntAnaSigRep          reportGpadcIntAnaSigData~%RlMonPllConVoltRep              reportPllConVoltData~%RlMonDccClkFreqRep              reportDccClkFreqData~%RlMonSynthFreqNonLiveRep        reportSynthFreqNonLiveData~%RlMonRxMixrInPwrRep[2]          reportRxMixrInPwrData~%RlMonTxIntAnaSigRep[2]          reportTxIntAnaSigData~%RlMonExtAnaSigRep               reportExtAnaSigData~%RlMonSynthFreqRep[2]            reportSynthFreqData~%RlMonTxPhShiftRep[2]            reportTxPhShiftData~%RlMonTxGainPhaMisRep[2]         reportTxGainPhaMisData~%RlMonTxBallBreakRep             reportTxBallBreakData~%RlMonTxPowRep[2]                reportTxPowData~%RlRecvdGpAdcData                reportRecvdGpAdcData~%RlAnalogFaultReportData         reportAnalogFaultData~%RlCalMonTimingErrorReportData   reportTimingErrorData~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/RlDigLatentFaultReportData~%uint32  digMonLatentFault~%================================================================================~%MSG: radar_msgs/RlMonReportHdrData~%uint32  fttiCount~%uint16  avgTemp~%uint16  reserved0~%uint32  reserved1~%================================================================================~%MSG: radar_msgs/RlMonTempReportData~%uint16      statusFlags~%uint16      errorCode~%int16[10]   tempValues~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlDigPeriodicReportData~%uint32 digMonPeriodicStatus~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxGainPhRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       loopbackPowerRF1~%uint8       loopbackPowerRF2~%uint8       loopbackPowerRF3~%uint16[12]  rxGainVal~%uint16[12]  rxPhaseVal~%uint32      rxNoisePower1~%uint32      rxNoisePower2~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxNoiseFigRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%uint16      reserved1~%uint16[12]  rxNoiseFigVal~%uint32      reserved2~%uint32      reserved3~%uint32      reserved4~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxIfStageRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%int16       lpfCutOffBandEdgeDroopValRx0~%int8[8]     hpfCutOffFreqEr~%int8[8]     lpfCutOffStopBandAtten~%int8[8]     rxIfaGainErVal~%int8        ifGainExp~%uint8       reserved2~%int8[6]     lpfCutOffBandEdgeDroopValRx~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonPmclkloIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%int8 sync20GPower~%uint16 reserved~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonGpadcIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%int16 gpadcRef1Val~%uint16 gpadcRef2Val~%uint32 reserved~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonPllConVoltRep~%uint16      statusFlags~%uint16      errorCode~%int16[8]    pllContVoltVal~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonDccClkFreqRep~%uint16      statusFlags~%uint16      errorCode~%uint16[8]   freqMeasVal~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonSynthFreqNonLiveRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex0~%uint8 reserved0~%uint16 reserved1~%int32 maxFreqErVal0~%uint32 freqFailCnt0~%uint32 maxFreqFailTime0~%uint32 reserved2~%uint8 profIndex1~%uint8 reserved3~%uint16 reserved4~%int32 maxFreqErVal1~%uint32 freqFailCnt1~%uint32 maxFreqFailTime1~%uint32 reserved5~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxMixrInPwrRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint32 rxMixInVolt~%uint32 reserved2~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint8 phShiftDacIdeltaMin~%uint8 phShiftDacQdeltaMin~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonExtAnaSigRep~%uint16      statusFlags~%uint16      errorCode~%int16[6]    extAnaSigVal~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonSynthFreqRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%int32 maxFreqErVal~%uint32 freqFailCnt~%uint32 reserved2~%uint32 reserved3~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxPhShiftRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint16 phaseShifterMonVal1~%uint16 phaseShifterMonVal2~%uint16 phaseShifterMonVal3~%uint16 phaseShifterMonVal4~%int16 txPsAmplitudeVal1~%int16 txPsAmplitudeVal2~%int16 txPsAmplitudeVal3~%int16 txPsAmplitudeVal4~%int8 txPsNoiseVal1~%int8 txPsNoiseVal2~%int8 txPsNoiseVal3~%int8 txPsNoiseVal4~%uint32 timeStamp~%uint32 reserved2~%uint32 reserved3~%================================================================================~%MSG: radar_msgs/RlMonTxGainPhaMisRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       noisePower00~%uint8       noisePower01~%uint8       noisePower02~%int16[9]    txGainVal~%uint16[9]   txPhaVal~%uint8       noisePower10~%uint8       noisePower11~%uint8       noisePower12~%uint8       noisePower20~%uint8       noisePower21~%uint8       noisePower22~%uint8       reserved0~%uint8       reserved1~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxBallBreakRep~%uint16 statusFlags~%uint16 errorCode~%int16 txReflCoefVal~%uint16 reserved0~%uint32 reserved1~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxPowRep~%uint16   statusFlags~%uint16   errorCode~%uint8    profIndex~%uint8    reserved0~%uint16   reserved1~%int16[3] txPowVal~%uint16   reserved2~%uint32   timeStamp~%================================================================================~%MSG: radar_msgs/RlRecvdGpAdcData~%RlGpAdcData[6]  sensor~%uint16[4]       reserved0~%uint32[7]       reserved1~%================================================================================~%MSG: radar_msgs/RlGpAdcData~%uint16 min~%uint16 max~%uint16 avg~%================================================================================~%MSG: radar_msgs/RlAnalogFaultReportData~%uint8   faultType~%uint8   reserved0~%uint16  reserved1~%uint32  faultSig~%uint32  reserved2~%================================================================================~%MSG: radar_msgs/RlCalMonTimingErrorReportData~%uint16 timingFailCode~%uint16 reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfStatus)))
  "Returns full string definition for message of type 'RfStatus"
  (cl:format cl:nil "Header                          header  # Includes measurement timestamp and coordinate frame.~%uint32                          radarID # radar ID~%uint32                          frameCnt # frame cnt in radar~%RlDigLatentFaultReportData      digLatentFaultData~%RlMonReportHdrData              reportHeaderData~%RlMonTempReportData             reportTempData~%RlDigPeriodicReportData         digPeriodicReportData~%RlMonRxGainPhRep[2]             reportRxGainPhData~%RlMonRxNoiseFigRep[2]           reportRxNoiseFigData~%RlMonRxIfStageRep[2]            reportRxIfStageData~%RlMonRxIntAnaSigRep[2]          reportRxIntAnaSigData~%RlMonPmclkloIntAnaSigRep[2]     reportPmclkloIntAnaSigData~%RlMonGpadcIntAnaSigRep          reportGpadcIntAnaSigData~%RlMonPllConVoltRep              reportPllConVoltData~%RlMonDccClkFreqRep              reportDccClkFreqData~%RlMonSynthFreqNonLiveRep        reportSynthFreqNonLiveData~%RlMonRxMixrInPwrRep[2]          reportRxMixrInPwrData~%RlMonTxIntAnaSigRep[2]          reportTxIntAnaSigData~%RlMonExtAnaSigRep               reportExtAnaSigData~%RlMonSynthFreqRep[2]            reportSynthFreqData~%RlMonTxPhShiftRep[2]            reportTxPhShiftData~%RlMonTxGainPhaMisRep[2]         reportTxGainPhaMisData~%RlMonTxBallBreakRep             reportTxBallBreakData~%RlMonTxPowRep[2]                reportTxPowData~%RlRecvdGpAdcData                reportRecvdGpAdcData~%RlAnalogFaultReportData         reportAnalogFaultData~%RlCalMonTimingErrorReportData   reportTimingErrorData~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: radar_msgs/RlDigLatentFaultReportData~%uint32  digMonLatentFault~%================================================================================~%MSG: radar_msgs/RlMonReportHdrData~%uint32  fttiCount~%uint16  avgTemp~%uint16  reserved0~%uint32  reserved1~%================================================================================~%MSG: radar_msgs/RlMonTempReportData~%uint16      statusFlags~%uint16      errorCode~%int16[10]   tempValues~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlDigPeriodicReportData~%uint32 digMonPeriodicStatus~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxGainPhRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       loopbackPowerRF1~%uint8       loopbackPowerRF2~%uint8       loopbackPowerRF3~%uint16[12]  rxGainVal~%uint16[12]  rxPhaseVal~%uint32      rxNoisePower1~%uint32      rxNoisePower2~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxNoiseFigRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%uint16      reserved1~%uint16[12]  rxNoiseFigVal~%uint32      reserved2~%uint32      reserved3~%uint32      reserved4~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxIfStageRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       reserved0~%int16       lpfCutOffBandEdgeDroopValRx0~%int8[8]     hpfCutOffFreqEr~%int8[8]     lpfCutOffStopBandAtten~%int8[8]     rxIfaGainErVal~%int8        ifGainExp~%uint8       reserved2~%int8[6]     lpfCutOffBandEdgeDroopValRx~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonPmclkloIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%int8 sync20GPower~%uint16 reserved~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonGpadcIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%int16 gpadcRef1Val~%uint16 gpadcRef2Val~%uint32 reserved~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonPllConVoltRep~%uint16      statusFlags~%uint16      errorCode~%int16[8]    pllContVoltVal~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonDccClkFreqRep~%uint16      statusFlags~%uint16      errorCode~%uint16[8]   freqMeasVal~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonSynthFreqNonLiveRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex0~%uint8 reserved0~%uint16 reserved1~%int32 maxFreqErVal0~%uint32 freqFailCnt0~%uint32 maxFreqFailTime0~%uint32 reserved2~%uint8 profIndex1~%uint8 reserved3~%uint16 reserved4~%int32 maxFreqErVal1~%uint32 freqFailCnt1~%uint32 maxFreqFailTime1~%uint32 reserved5~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonRxMixrInPwrRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint32 rxMixInVolt~%uint32 reserved2~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxIntAnaSigRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint8 phShiftDacIdeltaMin~%uint8 phShiftDacQdeltaMin~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonExtAnaSigRep~%uint16      statusFlags~%uint16      errorCode~%int16[6]    extAnaSigVal~%uint32      reserved~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonSynthFreqRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%int32 maxFreqErVal~%uint32 freqFailCnt~%uint32 reserved2~%uint32 reserved3~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxPhShiftRep~%uint16 statusFlags~%uint16 errorCode~%uint8 profIndex~%uint8 reserved0~%uint16 reserved1~%uint16 phaseShifterMonVal1~%uint16 phaseShifterMonVal2~%uint16 phaseShifterMonVal3~%uint16 phaseShifterMonVal4~%int16 txPsAmplitudeVal1~%int16 txPsAmplitudeVal2~%int16 txPsAmplitudeVal3~%int16 txPsAmplitudeVal4~%int8 txPsNoiseVal1~%int8 txPsNoiseVal2~%int8 txPsNoiseVal3~%int8 txPsNoiseVal4~%uint32 timeStamp~%uint32 reserved2~%uint32 reserved3~%================================================================================~%MSG: radar_msgs/RlMonTxGainPhaMisRep~%uint16      statusFlags~%uint16      errorCode~%uint8       profIndex~%uint8       noisePower00~%uint8       noisePower01~%uint8       noisePower02~%int16[9]    txGainVal~%uint16[9]   txPhaVal~%uint8       noisePower10~%uint8       noisePower11~%uint8       noisePower12~%uint8       noisePower20~%uint8       noisePower21~%uint8       noisePower22~%uint8       reserved0~%uint8       reserved1~%uint32      timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxBallBreakRep~%uint16 statusFlags~%uint16 errorCode~%int16 txReflCoefVal~%uint16 reserved0~%uint32 reserved1~%uint32 timeStamp~%================================================================================~%MSG: radar_msgs/RlMonTxPowRep~%uint16   statusFlags~%uint16   errorCode~%uint8    profIndex~%uint8    reserved0~%uint16   reserved1~%int16[3] txPowVal~%uint16   reserved2~%uint32   timeStamp~%================================================================================~%MSG: radar_msgs/RlRecvdGpAdcData~%RlGpAdcData[6]  sensor~%uint16[4]       reserved0~%uint32[7]       reserved1~%================================================================================~%MSG: radar_msgs/RlGpAdcData~%uint16 min~%uint16 max~%uint16 avg~%================================================================================~%MSG: radar_msgs/RlAnalogFaultReportData~%uint8   faultType~%uint8   reserved0~%uint16  reserved1~%uint32  faultSig~%uint32  reserved2~%================================================================================~%MSG: radar_msgs/RlCalMonTimingErrorReportData~%uint16 timingFailCode~%uint16 reserved~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'digLatentFaultData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportHeaderData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportTempData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'digPeriodicReportData))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportRxGainPhData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportRxNoiseFigData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportRxIfStageData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportRxIntAnaSigData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportPmclkloIntAnaSigData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportGpadcIntAnaSigData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportPllConVoltData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportDccClkFreqData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportSynthFreqNonLiveData))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportRxMixrInPwrData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportTxIntAnaSigData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportExtAnaSigData))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportSynthFreqData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportTxPhShiftData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportTxGainPhaMisData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportTxBallBreakData))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reportTxPowData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportRecvdGpAdcData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportAnalogFaultData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reportTimingErrorData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RfStatus
    (cl:cons ':header (header msg))
    (cl:cons ':radarID (radarID msg))
    (cl:cons ':frameCnt (frameCnt msg))
    (cl:cons ':digLatentFaultData (digLatentFaultData msg))
    (cl:cons ':reportHeaderData (reportHeaderData msg))
    (cl:cons ':reportTempData (reportTempData msg))
    (cl:cons ':digPeriodicReportData (digPeriodicReportData msg))
    (cl:cons ':reportRxGainPhData (reportRxGainPhData msg))
    (cl:cons ':reportRxNoiseFigData (reportRxNoiseFigData msg))
    (cl:cons ':reportRxIfStageData (reportRxIfStageData msg))
    (cl:cons ':reportRxIntAnaSigData (reportRxIntAnaSigData msg))
    (cl:cons ':reportPmclkloIntAnaSigData (reportPmclkloIntAnaSigData msg))
    (cl:cons ':reportGpadcIntAnaSigData (reportGpadcIntAnaSigData msg))
    (cl:cons ':reportPllConVoltData (reportPllConVoltData msg))
    (cl:cons ':reportDccClkFreqData (reportDccClkFreqData msg))
    (cl:cons ':reportSynthFreqNonLiveData (reportSynthFreqNonLiveData msg))
    (cl:cons ':reportRxMixrInPwrData (reportRxMixrInPwrData msg))
    (cl:cons ':reportTxIntAnaSigData (reportTxIntAnaSigData msg))
    (cl:cons ':reportExtAnaSigData (reportExtAnaSigData msg))
    (cl:cons ':reportSynthFreqData (reportSynthFreqData msg))
    (cl:cons ':reportTxPhShiftData (reportTxPhShiftData msg))
    (cl:cons ':reportTxGainPhaMisData (reportTxGainPhaMisData msg))
    (cl:cons ':reportTxBallBreakData (reportTxBallBreakData msg))
    (cl:cons ':reportTxPowData (reportTxPowData msg))
    (cl:cons ':reportRecvdGpAdcData (reportRecvdGpAdcData msg))
    (cl:cons ':reportAnalogFaultData (reportAnalogFaultData msg))
    (cl:cons ':reportTimingErrorData (reportTimingErrorData msg))
))
