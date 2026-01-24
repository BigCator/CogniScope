;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RfStatus)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RfStatus (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RFSTATUS")
  (make-package "RADAR_MSGS::RFSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RfStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_msgs::RfStatus
  :super ros::object
  :slots (_header _radarID _frameCnt _digLatentFaultData _reportHeaderData _reportTempData _digPeriodicReportData _reportRxGainPhData _reportRxNoiseFigData _reportRxIfStageData _reportRxIntAnaSigData _reportPmclkloIntAnaSigData _reportGpadcIntAnaSigData _reportPllConVoltData _reportDccClkFreqData _reportSynthFreqNonLiveData _reportRxMixrInPwrData _reportTxIntAnaSigData _reportExtAnaSigData _reportSynthFreqData _reportTxPhShiftData _reportTxGainPhaMisData _reportTxBallBreakData _reportTxPowData _reportRecvdGpAdcData _reportAnalogFaultData _reportTimingErrorData ))

(defmethod radar_msgs::RfStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarID __radarID) 0)
    ((:frameCnt __frameCnt) 0)
    ((:digLatentFaultData __digLatentFaultData) (instance radar_msgs::RlDigLatentFaultReportData :init))
    ((:reportHeaderData __reportHeaderData) (instance radar_msgs::RlMonReportHdrData :init))
    ((:reportTempData __reportTempData) (instance radar_msgs::RlMonTempReportData :init))
    ((:digPeriodicReportData __digPeriodicReportData) (instance radar_msgs::RlDigPeriodicReportData :init))
    ((:reportRxGainPhData __reportRxGainPhData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonRxGainPhRep :init) r)) r))
    ((:reportRxNoiseFigData __reportRxNoiseFigData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonRxNoiseFigRep :init) r)) r))
    ((:reportRxIfStageData __reportRxIfStageData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonRxIfStageRep :init) r)) r))
    ((:reportRxIntAnaSigData __reportRxIntAnaSigData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonRxIntAnaSigRep :init) r)) r))
    ((:reportPmclkloIntAnaSigData __reportPmclkloIntAnaSigData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonPmclkloIntAnaSigRep :init) r)) r))
    ((:reportGpadcIntAnaSigData __reportGpadcIntAnaSigData) (instance radar_msgs::RlMonGpadcIntAnaSigRep :init))
    ((:reportPllConVoltData __reportPllConVoltData) (instance radar_msgs::RlMonPllConVoltRep :init))
    ((:reportDccClkFreqData __reportDccClkFreqData) (instance radar_msgs::RlMonDccClkFreqRep :init))
    ((:reportSynthFreqNonLiveData __reportSynthFreqNonLiveData) (instance radar_msgs::RlMonSynthFreqNonLiveRep :init))
    ((:reportRxMixrInPwrData __reportRxMixrInPwrData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonRxMixrInPwrRep :init) r)) r))
    ((:reportTxIntAnaSigData __reportTxIntAnaSigData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonTxIntAnaSigRep :init) r)) r))
    ((:reportExtAnaSigData __reportExtAnaSigData) (instance radar_msgs::RlMonExtAnaSigRep :init))
    ((:reportSynthFreqData __reportSynthFreqData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonSynthFreqRep :init) r)) r))
    ((:reportTxPhShiftData __reportTxPhShiftData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonTxPhShiftRep :init) r)) r))
    ((:reportTxGainPhaMisData __reportTxGainPhaMisData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonTxGainPhaMisRep :init) r)) r))
    ((:reportTxBallBreakData __reportTxBallBreakData) (instance radar_msgs::RlMonTxBallBreakRep :init))
    ((:reportTxPowData __reportTxPowData) (let (r) (dotimes (i 2) (push (instance radar_msgs::RlMonTxPowRep :init) r)) r))
    ((:reportRecvdGpAdcData __reportRecvdGpAdcData) (instance radar_msgs::RlRecvdGpAdcData :init))
    ((:reportAnalogFaultData __reportAnalogFaultData) (instance radar_msgs::RlAnalogFaultReportData :init))
    ((:reportTimingErrorData __reportTimingErrorData) (instance radar_msgs::RlCalMonTimingErrorReportData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarID (round __radarID))
   (setq _frameCnt (round __frameCnt))
   (setq _digLatentFaultData __digLatentFaultData)
   (setq _reportHeaderData __reportHeaderData)
   (setq _reportTempData __reportTempData)
   (setq _digPeriodicReportData __digPeriodicReportData)
   (setq _reportRxGainPhData __reportRxGainPhData)
   (setq _reportRxNoiseFigData __reportRxNoiseFigData)
   (setq _reportRxIfStageData __reportRxIfStageData)
   (setq _reportRxIntAnaSigData __reportRxIntAnaSigData)
   (setq _reportPmclkloIntAnaSigData __reportPmclkloIntAnaSigData)
   (setq _reportGpadcIntAnaSigData __reportGpadcIntAnaSigData)
   (setq _reportPllConVoltData __reportPllConVoltData)
   (setq _reportDccClkFreqData __reportDccClkFreqData)
   (setq _reportSynthFreqNonLiveData __reportSynthFreqNonLiveData)
   (setq _reportRxMixrInPwrData __reportRxMixrInPwrData)
   (setq _reportTxIntAnaSigData __reportTxIntAnaSigData)
   (setq _reportExtAnaSigData __reportExtAnaSigData)
   (setq _reportSynthFreqData __reportSynthFreqData)
   (setq _reportTxPhShiftData __reportTxPhShiftData)
   (setq _reportTxGainPhaMisData __reportTxGainPhaMisData)
   (setq _reportTxBallBreakData __reportTxBallBreakData)
   (setq _reportTxPowData __reportTxPowData)
   (setq _reportRecvdGpAdcData __reportRecvdGpAdcData)
   (setq _reportAnalogFaultData __reportAnalogFaultData)
   (setq _reportTimingErrorData __reportTimingErrorData)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radarID
   (&optional __radarID)
   (if __radarID (setq _radarID __radarID)) _radarID)
  (:frameCnt
   (&optional __frameCnt)
   (if __frameCnt (setq _frameCnt __frameCnt)) _frameCnt)
  (:digLatentFaultData
   (&rest __digLatentFaultData)
   (if (keywordp (car __digLatentFaultData))
       (send* _digLatentFaultData __digLatentFaultData)
     (progn
       (if __digLatentFaultData (setq _digLatentFaultData (car __digLatentFaultData)))
       _digLatentFaultData)))
  (:reportHeaderData
   (&rest __reportHeaderData)
   (if (keywordp (car __reportHeaderData))
       (send* _reportHeaderData __reportHeaderData)
     (progn
       (if __reportHeaderData (setq _reportHeaderData (car __reportHeaderData)))
       _reportHeaderData)))
  (:reportTempData
   (&rest __reportTempData)
   (if (keywordp (car __reportTempData))
       (send* _reportTempData __reportTempData)
     (progn
       (if __reportTempData (setq _reportTempData (car __reportTempData)))
       _reportTempData)))
  (:digPeriodicReportData
   (&rest __digPeriodicReportData)
   (if (keywordp (car __digPeriodicReportData))
       (send* _digPeriodicReportData __digPeriodicReportData)
     (progn
       (if __digPeriodicReportData (setq _digPeriodicReportData (car __digPeriodicReportData)))
       _digPeriodicReportData)))
  (:reportRxGainPhData
   (&rest __reportRxGainPhData)
   (if (keywordp (car __reportRxGainPhData))
       (send* _reportRxGainPhData __reportRxGainPhData)
     (progn
       (if __reportRxGainPhData (setq _reportRxGainPhData (car __reportRxGainPhData)))
       _reportRxGainPhData)))
  (:reportRxNoiseFigData
   (&rest __reportRxNoiseFigData)
   (if (keywordp (car __reportRxNoiseFigData))
       (send* _reportRxNoiseFigData __reportRxNoiseFigData)
     (progn
       (if __reportRxNoiseFigData (setq _reportRxNoiseFigData (car __reportRxNoiseFigData)))
       _reportRxNoiseFigData)))
  (:reportRxIfStageData
   (&rest __reportRxIfStageData)
   (if (keywordp (car __reportRxIfStageData))
       (send* _reportRxIfStageData __reportRxIfStageData)
     (progn
       (if __reportRxIfStageData (setq _reportRxIfStageData (car __reportRxIfStageData)))
       _reportRxIfStageData)))
  (:reportRxIntAnaSigData
   (&rest __reportRxIntAnaSigData)
   (if (keywordp (car __reportRxIntAnaSigData))
       (send* _reportRxIntAnaSigData __reportRxIntAnaSigData)
     (progn
       (if __reportRxIntAnaSigData (setq _reportRxIntAnaSigData (car __reportRxIntAnaSigData)))
       _reportRxIntAnaSigData)))
  (:reportPmclkloIntAnaSigData
   (&rest __reportPmclkloIntAnaSigData)
   (if (keywordp (car __reportPmclkloIntAnaSigData))
       (send* _reportPmclkloIntAnaSigData __reportPmclkloIntAnaSigData)
     (progn
       (if __reportPmclkloIntAnaSigData (setq _reportPmclkloIntAnaSigData (car __reportPmclkloIntAnaSigData)))
       _reportPmclkloIntAnaSigData)))
  (:reportGpadcIntAnaSigData
   (&rest __reportGpadcIntAnaSigData)
   (if (keywordp (car __reportGpadcIntAnaSigData))
       (send* _reportGpadcIntAnaSigData __reportGpadcIntAnaSigData)
     (progn
       (if __reportGpadcIntAnaSigData (setq _reportGpadcIntAnaSigData (car __reportGpadcIntAnaSigData)))
       _reportGpadcIntAnaSigData)))
  (:reportPllConVoltData
   (&rest __reportPllConVoltData)
   (if (keywordp (car __reportPllConVoltData))
       (send* _reportPllConVoltData __reportPllConVoltData)
     (progn
       (if __reportPllConVoltData (setq _reportPllConVoltData (car __reportPllConVoltData)))
       _reportPllConVoltData)))
  (:reportDccClkFreqData
   (&rest __reportDccClkFreqData)
   (if (keywordp (car __reportDccClkFreqData))
       (send* _reportDccClkFreqData __reportDccClkFreqData)
     (progn
       (if __reportDccClkFreqData (setq _reportDccClkFreqData (car __reportDccClkFreqData)))
       _reportDccClkFreqData)))
  (:reportSynthFreqNonLiveData
   (&rest __reportSynthFreqNonLiveData)
   (if (keywordp (car __reportSynthFreqNonLiveData))
       (send* _reportSynthFreqNonLiveData __reportSynthFreqNonLiveData)
     (progn
       (if __reportSynthFreqNonLiveData (setq _reportSynthFreqNonLiveData (car __reportSynthFreqNonLiveData)))
       _reportSynthFreqNonLiveData)))
  (:reportRxMixrInPwrData
   (&rest __reportRxMixrInPwrData)
   (if (keywordp (car __reportRxMixrInPwrData))
       (send* _reportRxMixrInPwrData __reportRxMixrInPwrData)
     (progn
       (if __reportRxMixrInPwrData (setq _reportRxMixrInPwrData (car __reportRxMixrInPwrData)))
       _reportRxMixrInPwrData)))
  (:reportTxIntAnaSigData
   (&rest __reportTxIntAnaSigData)
   (if (keywordp (car __reportTxIntAnaSigData))
       (send* _reportTxIntAnaSigData __reportTxIntAnaSigData)
     (progn
       (if __reportTxIntAnaSigData (setq _reportTxIntAnaSigData (car __reportTxIntAnaSigData)))
       _reportTxIntAnaSigData)))
  (:reportExtAnaSigData
   (&rest __reportExtAnaSigData)
   (if (keywordp (car __reportExtAnaSigData))
       (send* _reportExtAnaSigData __reportExtAnaSigData)
     (progn
       (if __reportExtAnaSigData (setq _reportExtAnaSigData (car __reportExtAnaSigData)))
       _reportExtAnaSigData)))
  (:reportSynthFreqData
   (&rest __reportSynthFreqData)
   (if (keywordp (car __reportSynthFreqData))
       (send* _reportSynthFreqData __reportSynthFreqData)
     (progn
       (if __reportSynthFreqData (setq _reportSynthFreqData (car __reportSynthFreqData)))
       _reportSynthFreqData)))
  (:reportTxPhShiftData
   (&rest __reportTxPhShiftData)
   (if (keywordp (car __reportTxPhShiftData))
       (send* _reportTxPhShiftData __reportTxPhShiftData)
     (progn
       (if __reportTxPhShiftData (setq _reportTxPhShiftData (car __reportTxPhShiftData)))
       _reportTxPhShiftData)))
  (:reportTxGainPhaMisData
   (&rest __reportTxGainPhaMisData)
   (if (keywordp (car __reportTxGainPhaMisData))
       (send* _reportTxGainPhaMisData __reportTxGainPhaMisData)
     (progn
       (if __reportTxGainPhaMisData (setq _reportTxGainPhaMisData (car __reportTxGainPhaMisData)))
       _reportTxGainPhaMisData)))
  (:reportTxBallBreakData
   (&rest __reportTxBallBreakData)
   (if (keywordp (car __reportTxBallBreakData))
       (send* _reportTxBallBreakData __reportTxBallBreakData)
     (progn
       (if __reportTxBallBreakData (setq _reportTxBallBreakData (car __reportTxBallBreakData)))
       _reportTxBallBreakData)))
  (:reportTxPowData
   (&rest __reportTxPowData)
   (if (keywordp (car __reportTxPowData))
       (send* _reportTxPowData __reportTxPowData)
     (progn
       (if __reportTxPowData (setq _reportTxPowData (car __reportTxPowData)))
       _reportTxPowData)))
  (:reportRecvdGpAdcData
   (&rest __reportRecvdGpAdcData)
   (if (keywordp (car __reportRecvdGpAdcData))
       (send* _reportRecvdGpAdcData __reportRecvdGpAdcData)
     (progn
       (if __reportRecvdGpAdcData (setq _reportRecvdGpAdcData (car __reportRecvdGpAdcData)))
       _reportRecvdGpAdcData)))
  (:reportAnalogFaultData
   (&rest __reportAnalogFaultData)
   (if (keywordp (car __reportAnalogFaultData))
       (send* _reportAnalogFaultData __reportAnalogFaultData)
     (progn
       (if __reportAnalogFaultData (setq _reportAnalogFaultData (car __reportAnalogFaultData)))
       _reportAnalogFaultData)))
  (:reportTimingErrorData
   (&rest __reportTimingErrorData)
   (if (keywordp (car __reportTimingErrorData))
       (send* _reportTimingErrorData __reportTimingErrorData)
     (progn
       (if __reportTimingErrorData (setq _reportTimingErrorData (car __reportTimingErrorData)))
       _reportTimingErrorData)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _radarID
    4
    ;; uint32 _frameCnt
    4
    ;; radar_msgs/RlDigLatentFaultReportData _digLatentFaultData
    (send _digLatentFaultData :serialization-length)
    ;; radar_msgs/RlMonReportHdrData _reportHeaderData
    (send _reportHeaderData :serialization-length)
    ;; radar_msgs/RlMonTempReportData _reportTempData
    (send _reportTempData :serialization-length)
    ;; radar_msgs/RlDigPeriodicReportData _digPeriodicReportData
    (send _digPeriodicReportData :serialization-length)
    ;; radar_msgs/RlMonRxGainPhRep[2] _reportRxGainPhData
    (apply #'+ (send-all _reportRxGainPhData :serialization-length))
    ;; radar_msgs/RlMonRxNoiseFigRep[2] _reportRxNoiseFigData
    (apply #'+ (send-all _reportRxNoiseFigData :serialization-length))
    ;; radar_msgs/RlMonRxIfStageRep[2] _reportRxIfStageData
    (apply #'+ (send-all _reportRxIfStageData :serialization-length))
    ;; radar_msgs/RlMonRxIntAnaSigRep[2] _reportRxIntAnaSigData
    (apply #'+ (send-all _reportRxIntAnaSigData :serialization-length))
    ;; radar_msgs/RlMonPmclkloIntAnaSigRep[2] _reportPmclkloIntAnaSigData
    (apply #'+ (send-all _reportPmclkloIntAnaSigData :serialization-length))
    ;; radar_msgs/RlMonGpadcIntAnaSigRep _reportGpadcIntAnaSigData
    (send _reportGpadcIntAnaSigData :serialization-length)
    ;; radar_msgs/RlMonPllConVoltRep _reportPllConVoltData
    (send _reportPllConVoltData :serialization-length)
    ;; radar_msgs/RlMonDccClkFreqRep _reportDccClkFreqData
    (send _reportDccClkFreqData :serialization-length)
    ;; radar_msgs/RlMonSynthFreqNonLiveRep _reportSynthFreqNonLiveData
    (send _reportSynthFreqNonLiveData :serialization-length)
    ;; radar_msgs/RlMonRxMixrInPwrRep[2] _reportRxMixrInPwrData
    (apply #'+ (send-all _reportRxMixrInPwrData :serialization-length))
    ;; radar_msgs/RlMonTxIntAnaSigRep[2] _reportTxIntAnaSigData
    (apply #'+ (send-all _reportTxIntAnaSigData :serialization-length))
    ;; radar_msgs/RlMonExtAnaSigRep _reportExtAnaSigData
    (send _reportExtAnaSigData :serialization-length)
    ;; radar_msgs/RlMonSynthFreqRep[2] _reportSynthFreqData
    (apply #'+ (send-all _reportSynthFreqData :serialization-length))
    ;; radar_msgs/RlMonTxPhShiftRep[2] _reportTxPhShiftData
    (apply #'+ (send-all _reportTxPhShiftData :serialization-length))
    ;; radar_msgs/RlMonTxGainPhaMisRep[2] _reportTxGainPhaMisData
    (apply #'+ (send-all _reportTxGainPhaMisData :serialization-length))
    ;; radar_msgs/RlMonTxBallBreakRep _reportTxBallBreakData
    (send _reportTxBallBreakData :serialization-length)
    ;; radar_msgs/RlMonTxPowRep[2] _reportTxPowData
    (apply #'+ (send-all _reportTxPowData :serialization-length))
    ;; radar_msgs/RlRecvdGpAdcData _reportRecvdGpAdcData
    (send _reportRecvdGpAdcData :serialization-length)
    ;; radar_msgs/RlAnalogFaultReportData _reportAnalogFaultData
    (send _reportAnalogFaultData :serialization-length)
    ;; radar_msgs/RlCalMonTimingErrorReportData _reportTimingErrorData
    (send _reportTimingErrorData :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _radarID
       (write-long _radarID s)
     ;; uint32 _frameCnt
       (write-long _frameCnt s)
     ;; radar_msgs/RlDigLatentFaultReportData _digLatentFaultData
       (send _digLatentFaultData :serialize s)
     ;; radar_msgs/RlMonReportHdrData _reportHeaderData
       (send _reportHeaderData :serialize s)
     ;; radar_msgs/RlMonTempReportData _reportTempData
       (send _reportTempData :serialize s)
     ;; radar_msgs/RlDigPeriodicReportData _digPeriodicReportData
       (send _digPeriodicReportData :serialize s)
     ;; radar_msgs/RlMonRxGainPhRep[2] _reportRxGainPhData
     (dolist (elem _reportRxGainPhData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonRxNoiseFigRep[2] _reportRxNoiseFigData
     (dolist (elem _reportRxNoiseFigData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonRxIfStageRep[2] _reportRxIfStageData
     (dolist (elem _reportRxIfStageData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonRxIntAnaSigRep[2] _reportRxIntAnaSigData
     (dolist (elem _reportRxIntAnaSigData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonPmclkloIntAnaSigRep[2] _reportPmclkloIntAnaSigData
     (dolist (elem _reportPmclkloIntAnaSigData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonGpadcIntAnaSigRep _reportGpadcIntAnaSigData
       (send _reportGpadcIntAnaSigData :serialize s)
     ;; radar_msgs/RlMonPllConVoltRep _reportPllConVoltData
       (send _reportPllConVoltData :serialize s)
     ;; radar_msgs/RlMonDccClkFreqRep _reportDccClkFreqData
       (send _reportDccClkFreqData :serialize s)
     ;; radar_msgs/RlMonSynthFreqNonLiveRep _reportSynthFreqNonLiveData
       (send _reportSynthFreqNonLiveData :serialize s)
     ;; radar_msgs/RlMonRxMixrInPwrRep[2] _reportRxMixrInPwrData
     (dolist (elem _reportRxMixrInPwrData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonTxIntAnaSigRep[2] _reportTxIntAnaSigData
     (dolist (elem _reportTxIntAnaSigData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonExtAnaSigRep _reportExtAnaSigData
       (send _reportExtAnaSigData :serialize s)
     ;; radar_msgs/RlMonSynthFreqRep[2] _reportSynthFreqData
     (dolist (elem _reportSynthFreqData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonTxPhShiftRep[2] _reportTxPhShiftData
     (dolist (elem _reportTxPhShiftData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonTxGainPhaMisRep[2] _reportTxGainPhaMisData
     (dolist (elem _reportTxGainPhaMisData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlMonTxBallBreakRep _reportTxBallBreakData
       (send _reportTxBallBreakData :serialize s)
     ;; radar_msgs/RlMonTxPowRep[2] _reportTxPowData
     (dolist (elem _reportTxPowData)
       (send elem :serialize s)
       )
     ;; radar_msgs/RlRecvdGpAdcData _reportRecvdGpAdcData
       (send _reportRecvdGpAdcData :serialize s)
     ;; radar_msgs/RlAnalogFaultReportData _reportAnalogFaultData
       (send _reportAnalogFaultData :serialize s)
     ;; radar_msgs/RlCalMonTimingErrorReportData _reportTimingErrorData
       (send _reportTimingErrorData :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _radarID
     (setq _radarID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _frameCnt
     (setq _frameCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; radar_msgs/RlDigLatentFaultReportData _digLatentFaultData
     (send _digLatentFaultData :deserialize buf ptr-) (incf ptr- (send _digLatentFaultData :serialization-length))
   ;; radar_msgs/RlMonReportHdrData _reportHeaderData
     (send _reportHeaderData :deserialize buf ptr-) (incf ptr- (send _reportHeaderData :serialization-length))
   ;; radar_msgs/RlMonTempReportData _reportTempData
     (send _reportTempData :deserialize buf ptr-) (incf ptr- (send _reportTempData :serialization-length))
   ;; radar_msgs/RlDigPeriodicReportData _digPeriodicReportData
     (send _digPeriodicReportData :deserialize buf ptr-) (incf ptr- (send _digPeriodicReportData :serialization-length))
   ;; radar_msgs/RlMonRxGainPhRep[2] _reportRxGainPhData
   (dotimes (i 2)
     (send (elt _reportRxGainPhData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportRxGainPhData i) :serialization-length))
     )
   ;; radar_msgs/RlMonRxNoiseFigRep[2] _reportRxNoiseFigData
   (dotimes (i 2)
     (send (elt _reportRxNoiseFigData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportRxNoiseFigData i) :serialization-length))
     )
   ;; radar_msgs/RlMonRxIfStageRep[2] _reportRxIfStageData
   (dotimes (i 2)
     (send (elt _reportRxIfStageData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportRxIfStageData i) :serialization-length))
     )
   ;; radar_msgs/RlMonRxIntAnaSigRep[2] _reportRxIntAnaSigData
   (dotimes (i 2)
     (send (elt _reportRxIntAnaSigData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportRxIntAnaSigData i) :serialization-length))
     )
   ;; radar_msgs/RlMonPmclkloIntAnaSigRep[2] _reportPmclkloIntAnaSigData
   (dotimes (i 2)
     (send (elt _reportPmclkloIntAnaSigData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportPmclkloIntAnaSigData i) :serialization-length))
     )
   ;; radar_msgs/RlMonGpadcIntAnaSigRep _reportGpadcIntAnaSigData
     (send _reportGpadcIntAnaSigData :deserialize buf ptr-) (incf ptr- (send _reportGpadcIntAnaSigData :serialization-length))
   ;; radar_msgs/RlMonPllConVoltRep _reportPllConVoltData
     (send _reportPllConVoltData :deserialize buf ptr-) (incf ptr- (send _reportPllConVoltData :serialization-length))
   ;; radar_msgs/RlMonDccClkFreqRep _reportDccClkFreqData
     (send _reportDccClkFreqData :deserialize buf ptr-) (incf ptr- (send _reportDccClkFreqData :serialization-length))
   ;; radar_msgs/RlMonSynthFreqNonLiveRep _reportSynthFreqNonLiveData
     (send _reportSynthFreqNonLiveData :deserialize buf ptr-) (incf ptr- (send _reportSynthFreqNonLiveData :serialization-length))
   ;; radar_msgs/RlMonRxMixrInPwrRep[2] _reportRxMixrInPwrData
   (dotimes (i 2)
     (send (elt _reportRxMixrInPwrData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportRxMixrInPwrData i) :serialization-length))
     )
   ;; radar_msgs/RlMonTxIntAnaSigRep[2] _reportTxIntAnaSigData
   (dotimes (i 2)
     (send (elt _reportTxIntAnaSigData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportTxIntAnaSigData i) :serialization-length))
     )
   ;; radar_msgs/RlMonExtAnaSigRep _reportExtAnaSigData
     (send _reportExtAnaSigData :deserialize buf ptr-) (incf ptr- (send _reportExtAnaSigData :serialization-length))
   ;; radar_msgs/RlMonSynthFreqRep[2] _reportSynthFreqData
   (dotimes (i 2)
     (send (elt _reportSynthFreqData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportSynthFreqData i) :serialization-length))
     )
   ;; radar_msgs/RlMonTxPhShiftRep[2] _reportTxPhShiftData
   (dotimes (i 2)
     (send (elt _reportTxPhShiftData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportTxPhShiftData i) :serialization-length))
     )
   ;; radar_msgs/RlMonTxGainPhaMisRep[2] _reportTxGainPhaMisData
   (dotimes (i 2)
     (send (elt _reportTxGainPhaMisData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportTxGainPhaMisData i) :serialization-length))
     )
   ;; radar_msgs/RlMonTxBallBreakRep _reportTxBallBreakData
     (send _reportTxBallBreakData :deserialize buf ptr-) (incf ptr- (send _reportTxBallBreakData :serialization-length))
   ;; radar_msgs/RlMonTxPowRep[2] _reportTxPowData
   (dotimes (i 2)
     (send (elt _reportTxPowData i) :deserialize buf ptr-) (incf ptr- (send (elt _reportTxPowData i) :serialization-length))
     )
   ;; radar_msgs/RlRecvdGpAdcData _reportRecvdGpAdcData
     (send _reportRecvdGpAdcData :deserialize buf ptr-) (incf ptr- (send _reportRecvdGpAdcData :serialization-length))
   ;; radar_msgs/RlAnalogFaultReportData _reportAnalogFaultData
     (send _reportAnalogFaultData :deserialize buf ptr-) (incf ptr- (send _reportAnalogFaultData :serialization-length))
   ;; radar_msgs/RlCalMonTimingErrorReportData _reportTimingErrorData
     (send _reportTimingErrorData :deserialize buf ptr-) (incf ptr- (send _reportTimingErrorData :serialization-length))
   ;;
   self)
  )

(setf (get radar_msgs::RfStatus :md5sum-) "6fa249dd965cece786013e1f923eed7a")
(setf (get radar_msgs::RfStatus :datatype-) "radar_msgs/RfStatus")
(setf (get radar_msgs::RfStatus :definition-)
      "Header                          header  # Includes measurement timestamp and coordinate frame.
uint32                          radarID # radar ID
uint32                          frameCnt # frame cnt in radar
RlDigLatentFaultReportData      digLatentFaultData
RlMonReportHdrData              reportHeaderData
RlMonTempReportData             reportTempData
RlDigPeriodicReportData         digPeriodicReportData
RlMonRxGainPhRep[2]             reportRxGainPhData
RlMonRxNoiseFigRep[2]           reportRxNoiseFigData
RlMonRxIfStageRep[2]            reportRxIfStageData
RlMonRxIntAnaSigRep[2]          reportRxIntAnaSigData
RlMonPmclkloIntAnaSigRep[2]     reportPmclkloIntAnaSigData
RlMonGpadcIntAnaSigRep          reportGpadcIntAnaSigData
RlMonPllConVoltRep              reportPllConVoltData
RlMonDccClkFreqRep              reportDccClkFreqData
RlMonSynthFreqNonLiveRep        reportSynthFreqNonLiveData
RlMonRxMixrInPwrRep[2]          reportRxMixrInPwrData
RlMonTxIntAnaSigRep[2]          reportTxIntAnaSigData
RlMonExtAnaSigRep               reportExtAnaSigData
RlMonSynthFreqRep[2]            reportSynthFreqData
RlMonTxPhShiftRep[2]            reportTxPhShiftData
RlMonTxGainPhaMisRep[2]         reportTxGainPhaMisData
RlMonTxBallBreakRep             reportTxBallBreakData
RlMonTxPowRep[2]                reportTxPowData
RlRecvdGpAdcData                reportRecvdGpAdcData
RlAnalogFaultReportData         reportAnalogFaultData
RlCalMonTimingErrorReportData   reportTimingErrorData
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

================================================================================
MSG: radar_msgs/RlDigLatentFaultReportData
uint32  digMonLatentFault
================================================================================
MSG: radar_msgs/RlMonReportHdrData
uint32  fttiCount
uint16  avgTemp
uint16  reserved0
uint32  reserved1
================================================================================
MSG: radar_msgs/RlMonTempReportData
uint16      statusFlags
uint16      errorCode
int16[10]   tempValues
uint32      reserved
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlDigPeriodicReportData
uint32 digMonPeriodicStatus
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonRxGainPhRep
uint16      statusFlags
uint16      errorCode
uint8       profIndex
uint8       loopbackPowerRF1
uint8       loopbackPowerRF2
uint8       loopbackPowerRF3
uint16[12]  rxGainVal
uint16[12]  rxPhaseVal
uint32      rxNoisePower1
uint32      rxNoisePower2
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlMonRxNoiseFigRep
uint16      statusFlags
uint16      errorCode
uint8       profIndex
uint8       reserved0
uint16      reserved1
uint16[12]  rxNoiseFigVal
uint32      reserved2
uint32      reserved3
uint32      reserved4
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlMonRxIfStageRep
uint16      statusFlags
uint16      errorCode
uint8       profIndex
uint8       reserved0
int16       lpfCutOffBandEdgeDroopValRx0
int8[8]     hpfCutOffFreqEr
int8[8]     lpfCutOffStopBandAtten
int8[8]     rxIfaGainErVal
int8        ifGainExp
uint8       reserved2
int8[6]     lpfCutOffBandEdgeDroopValRx
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlMonRxIntAnaSigRep
uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint16 reserved1
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonPmclkloIntAnaSigRep
uint16 statusFlags
uint16 errorCode
uint8 profIndex
int8 sync20GPower
uint16 reserved
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonGpadcIntAnaSigRep
uint16 statusFlags
uint16 errorCode
int16 gpadcRef1Val
uint16 gpadcRef2Val
uint32 reserved
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonPllConVoltRep
uint16      statusFlags
uint16      errorCode
int16[8]    pllContVoltVal
uint32      reserved
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlMonDccClkFreqRep
uint16      statusFlags
uint16      errorCode
uint16[8]   freqMeasVal
uint32      reserved
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlMonSynthFreqNonLiveRep
uint16 statusFlags
uint16 errorCode
uint8 profIndex0
uint8 reserved0
uint16 reserved1
int32 maxFreqErVal0
uint32 freqFailCnt0
uint32 maxFreqFailTime0
uint32 reserved2
uint8 profIndex1
uint8 reserved3
uint16 reserved4
int32 maxFreqErVal1
uint32 freqFailCnt1
uint32 maxFreqFailTime1
uint32 reserved5
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonRxMixrInPwrRep
uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint16 reserved1
uint32 rxMixInVolt
uint32 reserved2
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonTxIntAnaSigRep
uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint8 phShiftDacIdeltaMin
uint8 phShiftDacQdeltaMin
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonExtAnaSigRep
uint16      statusFlags
uint16      errorCode
int16[6]    extAnaSigVal
uint32      reserved
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlMonSynthFreqRep
uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint16 reserved1
int32 maxFreqErVal
uint32 freqFailCnt
uint32 reserved2
uint32 reserved3
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonTxPhShiftRep
uint16 statusFlags
uint16 errorCode
uint8 profIndex
uint8 reserved0
uint16 reserved1
uint16 phaseShifterMonVal1
uint16 phaseShifterMonVal2
uint16 phaseShifterMonVal3
uint16 phaseShifterMonVal4
int16 txPsAmplitudeVal1
int16 txPsAmplitudeVal2
int16 txPsAmplitudeVal3
int16 txPsAmplitudeVal4
int8 txPsNoiseVal1
int8 txPsNoiseVal2
int8 txPsNoiseVal3
int8 txPsNoiseVal4
uint32 timeStamp
uint32 reserved2
uint32 reserved3
================================================================================
MSG: radar_msgs/RlMonTxGainPhaMisRep
uint16      statusFlags
uint16      errorCode
uint8       profIndex
uint8       noisePower00
uint8       noisePower01
uint8       noisePower02
int16[9]    txGainVal
uint16[9]   txPhaVal
uint8       noisePower10
uint8       noisePower11
uint8       noisePower12
uint8       noisePower20
uint8       noisePower21
uint8       noisePower22
uint8       reserved0
uint8       reserved1
uint32      timeStamp
================================================================================
MSG: radar_msgs/RlMonTxBallBreakRep
uint16 statusFlags
uint16 errorCode
int16 txReflCoefVal
uint16 reserved0
uint32 reserved1
uint32 timeStamp
================================================================================
MSG: radar_msgs/RlMonTxPowRep
uint16   statusFlags
uint16   errorCode
uint8    profIndex
uint8    reserved0
uint16   reserved1
int16[3] txPowVal
uint16   reserved2
uint32   timeStamp
================================================================================
MSG: radar_msgs/RlRecvdGpAdcData
RlGpAdcData[6]  sensor
uint16[4]       reserved0
uint32[7]       reserved1
================================================================================
MSG: radar_msgs/RlGpAdcData
uint16 min
uint16 max
uint16 avg
================================================================================
MSG: radar_msgs/RlAnalogFaultReportData
uint8   faultType
uint8   reserved0
uint16  reserved1
uint32  faultSig
uint32  reserved2
================================================================================
MSG: radar_msgs/RlCalMonTimingErrorReportData
uint16 timingFailCode
uint16 reserved
")



(provide :radar_msgs/RfStatus "6fa249dd965cece786013e1f923eed7a")


