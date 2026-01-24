Header                          header  # Includes measurement timestamp and coordinate frame.
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