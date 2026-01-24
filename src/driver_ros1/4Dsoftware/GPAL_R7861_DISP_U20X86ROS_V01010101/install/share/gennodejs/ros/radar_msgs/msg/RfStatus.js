// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RlDigLatentFaultReportData = require('./RlDigLatentFaultReportData.js');
let RlMonReportHdrData = require('./RlMonReportHdrData.js');
let RlMonTempReportData = require('./RlMonTempReportData.js');
let RlDigPeriodicReportData = require('./RlDigPeriodicReportData.js');
let RlMonRxGainPhRep = require('./RlMonRxGainPhRep.js');
let RlMonRxNoiseFigRep = require('./RlMonRxNoiseFigRep.js');
let RlMonRxIfStageRep = require('./RlMonRxIfStageRep.js');
let RlMonRxIntAnaSigRep = require('./RlMonRxIntAnaSigRep.js');
let RlMonPmclkloIntAnaSigRep = require('./RlMonPmclkloIntAnaSigRep.js');
let RlMonGpadcIntAnaSigRep = require('./RlMonGpadcIntAnaSigRep.js');
let RlMonPllConVoltRep = require('./RlMonPllConVoltRep.js');
let RlMonDccClkFreqRep = require('./RlMonDccClkFreqRep.js');
let RlMonSynthFreqNonLiveRep = require('./RlMonSynthFreqNonLiveRep.js');
let RlMonRxMixrInPwrRep = require('./RlMonRxMixrInPwrRep.js');
let RlMonTxIntAnaSigRep = require('./RlMonTxIntAnaSigRep.js');
let RlMonExtAnaSigRep = require('./RlMonExtAnaSigRep.js');
let RlMonSynthFreqRep = require('./RlMonSynthFreqRep.js');
let RlMonTxPhShiftRep = require('./RlMonTxPhShiftRep.js');
let RlMonTxGainPhaMisRep = require('./RlMonTxGainPhaMisRep.js');
let RlMonTxBallBreakRep = require('./RlMonTxBallBreakRep.js');
let RlMonTxPowRep = require('./RlMonTxPowRep.js');
let RlRecvdGpAdcData = require('./RlRecvdGpAdcData.js');
let RlAnalogFaultReportData = require('./RlAnalogFaultReportData.js');
let RlCalMonTimingErrorReportData = require('./RlCalMonTimingErrorReportData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RfStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarID = null;
      this.frameCnt = null;
      this.digLatentFaultData = null;
      this.reportHeaderData = null;
      this.reportTempData = null;
      this.digPeriodicReportData = null;
      this.reportRxGainPhData = null;
      this.reportRxNoiseFigData = null;
      this.reportRxIfStageData = null;
      this.reportRxIntAnaSigData = null;
      this.reportPmclkloIntAnaSigData = null;
      this.reportGpadcIntAnaSigData = null;
      this.reportPllConVoltData = null;
      this.reportDccClkFreqData = null;
      this.reportSynthFreqNonLiveData = null;
      this.reportRxMixrInPwrData = null;
      this.reportTxIntAnaSigData = null;
      this.reportExtAnaSigData = null;
      this.reportSynthFreqData = null;
      this.reportTxPhShiftData = null;
      this.reportTxGainPhaMisData = null;
      this.reportTxBallBreakData = null;
      this.reportTxPowData = null;
      this.reportRecvdGpAdcData = null;
      this.reportAnalogFaultData = null;
      this.reportTimingErrorData = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radarID')) {
        this.radarID = initObj.radarID
      }
      else {
        this.radarID = 0;
      }
      if (initObj.hasOwnProperty('frameCnt')) {
        this.frameCnt = initObj.frameCnt
      }
      else {
        this.frameCnt = 0;
      }
      if (initObj.hasOwnProperty('digLatentFaultData')) {
        this.digLatentFaultData = initObj.digLatentFaultData
      }
      else {
        this.digLatentFaultData = new RlDigLatentFaultReportData();
      }
      if (initObj.hasOwnProperty('reportHeaderData')) {
        this.reportHeaderData = initObj.reportHeaderData
      }
      else {
        this.reportHeaderData = new RlMonReportHdrData();
      }
      if (initObj.hasOwnProperty('reportTempData')) {
        this.reportTempData = initObj.reportTempData
      }
      else {
        this.reportTempData = new RlMonTempReportData();
      }
      if (initObj.hasOwnProperty('digPeriodicReportData')) {
        this.digPeriodicReportData = initObj.digPeriodicReportData
      }
      else {
        this.digPeriodicReportData = new RlDigPeriodicReportData();
      }
      if (initObj.hasOwnProperty('reportRxGainPhData')) {
        this.reportRxGainPhData = initObj.reportRxGainPhData
      }
      else {
        this.reportRxGainPhData = new Array(2).fill(new RlMonRxGainPhRep());
      }
      if (initObj.hasOwnProperty('reportRxNoiseFigData')) {
        this.reportRxNoiseFigData = initObj.reportRxNoiseFigData
      }
      else {
        this.reportRxNoiseFigData = new Array(2).fill(new RlMonRxNoiseFigRep());
      }
      if (initObj.hasOwnProperty('reportRxIfStageData')) {
        this.reportRxIfStageData = initObj.reportRxIfStageData
      }
      else {
        this.reportRxIfStageData = new Array(2).fill(new RlMonRxIfStageRep());
      }
      if (initObj.hasOwnProperty('reportRxIntAnaSigData')) {
        this.reportRxIntAnaSigData = initObj.reportRxIntAnaSigData
      }
      else {
        this.reportRxIntAnaSigData = new Array(2).fill(new RlMonRxIntAnaSigRep());
      }
      if (initObj.hasOwnProperty('reportPmclkloIntAnaSigData')) {
        this.reportPmclkloIntAnaSigData = initObj.reportPmclkloIntAnaSigData
      }
      else {
        this.reportPmclkloIntAnaSigData = new Array(2).fill(new RlMonPmclkloIntAnaSigRep());
      }
      if (initObj.hasOwnProperty('reportGpadcIntAnaSigData')) {
        this.reportGpadcIntAnaSigData = initObj.reportGpadcIntAnaSigData
      }
      else {
        this.reportGpadcIntAnaSigData = new RlMonGpadcIntAnaSigRep();
      }
      if (initObj.hasOwnProperty('reportPllConVoltData')) {
        this.reportPllConVoltData = initObj.reportPllConVoltData
      }
      else {
        this.reportPllConVoltData = new RlMonPllConVoltRep();
      }
      if (initObj.hasOwnProperty('reportDccClkFreqData')) {
        this.reportDccClkFreqData = initObj.reportDccClkFreqData
      }
      else {
        this.reportDccClkFreqData = new RlMonDccClkFreqRep();
      }
      if (initObj.hasOwnProperty('reportSynthFreqNonLiveData')) {
        this.reportSynthFreqNonLiveData = initObj.reportSynthFreqNonLiveData
      }
      else {
        this.reportSynthFreqNonLiveData = new RlMonSynthFreqNonLiveRep();
      }
      if (initObj.hasOwnProperty('reportRxMixrInPwrData')) {
        this.reportRxMixrInPwrData = initObj.reportRxMixrInPwrData
      }
      else {
        this.reportRxMixrInPwrData = new Array(2).fill(new RlMonRxMixrInPwrRep());
      }
      if (initObj.hasOwnProperty('reportTxIntAnaSigData')) {
        this.reportTxIntAnaSigData = initObj.reportTxIntAnaSigData
      }
      else {
        this.reportTxIntAnaSigData = new Array(2).fill(new RlMonTxIntAnaSigRep());
      }
      if (initObj.hasOwnProperty('reportExtAnaSigData')) {
        this.reportExtAnaSigData = initObj.reportExtAnaSigData
      }
      else {
        this.reportExtAnaSigData = new RlMonExtAnaSigRep();
      }
      if (initObj.hasOwnProperty('reportSynthFreqData')) {
        this.reportSynthFreqData = initObj.reportSynthFreqData
      }
      else {
        this.reportSynthFreqData = new Array(2).fill(new RlMonSynthFreqRep());
      }
      if (initObj.hasOwnProperty('reportTxPhShiftData')) {
        this.reportTxPhShiftData = initObj.reportTxPhShiftData
      }
      else {
        this.reportTxPhShiftData = new Array(2).fill(new RlMonTxPhShiftRep());
      }
      if (initObj.hasOwnProperty('reportTxGainPhaMisData')) {
        this.reportTxGainPhaMisData = initObj.reportTxGainPhaMisData
      }
      else {
        this.reportTxGainPhaMisData = new Array(2).fill(new RlMonTxGainPhaMisRep());
      }
      if (initObj.hasOwnProperty('reportTxBallBreakData')) {
        this.reportTxBallBreakData = initObj.reportTxBallBreakData
      }
      else {
        this.reportTxBallBreakData = new RlMonTxBallBreakRep();
      }
      if (initObj.hasOwnProperty('reportTxPowData')) {
        this.reportTxPowData = initObj.reportTxPowData
      }
      else {
        this.reportTxPowData = new Array(2).fill(new RlMonTxPowRep());
      }
      if (initObj.hasOwnProperty('reportRecvdGpAdcData')) {
        this.reportRecvdGpAdcData = initObj.reportRecvdGpAdcData
      }
      else {
        this.reportRecvdGpAdcData = new RlRecvdGpAdcData();
      }
      if (initObj.hasOwnProperty('reportAnalogFaultData')) {
        this.reportAnalogFaultData = initObj.reportAnalogFaultData
      }
      else {
        this.reportAnalogFaultData = new RlAnalogFaultReportData();
      }
      if (initObj.hasOwnProperty('reportTimingErrorData')) {
        this.reportTimingErrorData = initObj.reportTimingErrorData
      }
      else {
        this.reportTimingErrorData = new RlCalMonTimingErrorReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RfStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarID]
    bufferOffset = _serializer.uint32(obj.radarID, buffer, bufferOffset);
    // Serialize message field [frameCnt]
    bufferOffset = _serializer.uint32(obj.frameCnt, buffer, bufferOffset);
    // Serialize message field [digLatentFaultData]
    bufferOffset = RlDigLatentFaultReportData.serialize(obj.digLatentFaultData, buffer, bufferOffset);
    // Serialize message field [reportHeaderData]
    bufferOffset = RlMonReportHdrData.serialize(obj.reportHeaderData, buffer, bufferOffset);
    // Serialize message field [reportTempData]
    bufferOffset = RlMonTempReportData.serialize(obj.reportTempData, buffer, bufferOffset);
    // Serialize message field [digPeriodicReportData]
    bufferOffset = RlDigPeriodicReportData.serialize(obj.digPeriodicReportData, buffer, bufferOffset);
    // Check that the constant length array field [reportRxGainPhData] has the right length
    if (obj.reportRxGainPhData.length !== 2) {
      throw new Error('Unable to serialize array field reportRxGainPhData - length must be 2')
    }
    // Serialize message field [reportRxGainPhData]
    obj.reportRxGainPhData.forEach((val) => {
      bufferOffset = RlMonRxGainPhRep.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reportRxNoiseFigData] has the right length
    if (obj.reportRxNoiseFigData.length !== 2) {
      throw new Error('Unable to serialize array field reportRxNoiseFigData - length must be 2')
    }
    // Serialize message field [reportRxNoiseFigData]
    obj.reportRxNoiseFigData.forEach((val) => {
      bufferOffset = RlMonRxNoiseFigRep.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reportRxIfStageData] has the right length
    if (obj.reportRxIfStageData.length !== 2) {
      throw new Error('Unable to serialize array field reportRxIfStageData - length must be 2')
    }
    // Serialize message field [reportRxIfStageData]
    obj.reportRxIfStageData.forEach((val) => {
      bufferOffset = RlMonRxIfStageRep.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reportRxIntAnaSigData] has the right length
    if (obj.reportRxIntAnaSigData.length !== 2) {
      throw new Error('Unable to serialize array field reportRxIntAnaSigData - length must be 2')
    }
    // Serialize message field [reportRxIntAnaSigData]
    obj.reportRxIntAnaSigData.forEach((val) => {
      bufferOffset = RlMonRxIntAnaSigRep.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reportPmclkloIntAnaSigData] has the right length
    if (obj.reportPmclkloIntAnaSigData.length !== 2) {
      throw new Error('Unable to serialize array field reportPmclkloIntAnaSigData - length must be 2')
    }
    // Serialize message field [reportPmclkloIntAnaSigData]
    obj.reportPmclkloIntAnaSigData.forEach((val) => {
      bufferOffset = RlMonPmclkloIntAnaSigRep.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reportGpadcIntAnaSigData]
    bufferOffset = RlMonGpadcIntAnaSigRep.serialize(obj.reportGpadcIntAnaSigData, buffer, bufferOffset);
    // Serialize message field [reportPllConVoltData]
    bufferOffset = RlMonPllConVoltRep.serialize(obj.reportPllConVoltData, buffer, bufferOffset);
    // Serialize message field [reportDccClkFreqData]
    bufferOffset = RlMonDccClkFreqRep.serialize(obj.reportDccClkFreqData, buffer, bufferOffset);
    // Serialize message field [reportSynthFreqNonLiveData]
    bufferOffset = RlMonSynthFreqNonLiveRep.serialize(obj.reportSynthFreqNonLiveData, buffer, bufferOffset);
    // Check that the constant length array field [reportRxMixrInPwrData] has the right length
    if (obj.reportRxMixrInPwrData.length !== 2) {
      throw new Error('Unable to serialize array field reportRxMixrInPwrData - length must be 2')
    }
    // Serialize message field [reportRxMixrInPwrData]
    obj.reportRxMixrInPwrData.forEach((val) => {
      bufferOffset = RlMonRxMixrInPwrRep.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reportTxIntAnaSigData] has the right length
    if (obj.reportTxIntAnaSigData.length !== 2) {
      throw new Error('Unable to serialize array field reportTxIntAnaSigData - length must be 2')
    }
    // Serialize message field [reportTxIntAnaSigData]
    obj.reportTxIntAnaSigData.forEach((val) => {
      bufferOffset = RlMonTxIntAnaSigRep.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reportExtAnaSigData]
    bufferOffset = RlMonExtAnaSigRep.serialize(obj.reportExtAnaSigData, buffer, bufferOffset);
    // Check that the constant length array field [reportSynthFreqData] has the right length
    if (obj.reportSynthFreqData.length !== 2) {
      throw new Error('Unable to serialize array field reportSynthFreqData - length must be 2')
    }
    // Serialize message field [reportSynthFreqData]
    obj.reportSynthFreqData.forEach((val) => {
      bufferOffset = RlMonSynthFreqRep.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reportTxPhShiftData] has the right length
    if (obj.reportTxPhShiftData.length !== 2) {
      throw new Error('Unable to serialize array field reportTxPhShiftData - length must be 2')
    }
    // Serialize message field [reportTxPhShiftData]
    obj.reportTxPhShiftData.forEach((val) => {
      bufferOffset = RlMonTxPhShiftRep.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [reportTxGainPhaMisData] has the right length
    if (obj.reportTxGainPhaMisData.length !== 2) {
      throw new Error('Unable to serialize array field reportTxGainPhaMisData - length must be 2')
    }
    // Serialize message field [reportTxGainPhaMisData]
    obj.reportTxGainPhaMisData.forEach((val) => {
      bufferOffset = RlMonTxGainPhaMisRep.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reportTxBallBreakData]
    bufferOffset = RlMonTxBallBreakRep.serialize(obj.reportTxBallBreakData, buffer, bufferOffset);
    // Check that the constant length array field [reportTxPowData] has the right length
    if (obj.reportTxPowData.length !== 2) {
      throw new Error('Unable to serialize array field reportTxPowData - length must be 2')
    }
    // Serialize message field [reportTxPowData]
    obj.reportTxPowData.forEach((val) => {
      bufferOffset = RlMonTxPowRep.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reportRecvdGpAdcData]
    bufferOffset = RlRecvdGpAdcData.serialize(obj.reportRecvdGpAdcData, buffer, bufferOffset);
    // Serialize message field [reportAnalogFaultData]
    bufferOffset = RlAnalogFaultReportData.serialize(obj.reportAnalogFaultData, buffer, bufferOffset);
    // Serialize message field [reportTimingErrorData]
    bufferOffset = RlCalMonTimingErrorReportData.serialize(obj.reportTimingErrorData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfStatus
    let len;
    let data = new RfStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarID]
    data.radarID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [frameCnt]
    data.frameCnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [digLatentFaultData]
    data.digLatentFaultData = RlDigLatentFaultReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportHeaderData]
    data.reportHeaderData = RlMonReportHdrData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportTempData]
    data.reportTempData = RlMonTempReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [digPeriodicReportData]
    data.digPeriodicReportData = RlDigPeriodicReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportRxGainPhData]
    len = 2;
    data.reportRxGainPhData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportRxGainPhData[i] = RlMonRxGainPhRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportRxNoiseFigData]
    len = 2;
    data.reportRxNoiseFigData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportRxNoiseFigData[i] = RlMonRxNoiseFigRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportRxIfStageData]
    len = 2;
    data.reportRxIfStageData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportRxIfStageData[i] = RlMonRxIfStageRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportRxIntAnaSigData]
    len = 2;
    data.reportRxIntAnaSigData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportRxIntAnaSigData[i] = RlMonRxIntAnaSigRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportPmclkloIntAnaSigData]
    len = 2;
    data.reportPmclkloIntAnaSigData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportPmclkloIntAnaSigData[i] = RlMonPmclkloIntAnaSigRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportGpadcIntAnaSigData]
    data.reportGpadcIntAnaSigData = RlMonGpadcIntAnaSigRep.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportPllConVoltData]
    data.reportPllConVoltData = RlMonPllConVoltRep.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportDccClkFreqData]
    data.reportDccClkFreqData = RlMonDccClkFreqRep.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportSynthFreqNonLiveData]
    data.reportSynthFreqNonLiveData = RlMonSynthFreqNonLiveRep.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportRxMixrInPwrData]
    len = 2;
    data.reportRxMixrInPwrData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportRxMixrInPwrData[i] = RlMonRxMixrInPwrRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportTxIntAnaSigData]
    len = 2;
    data.reportTxIntAnaSigData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportTxIntAnaSigData[i] = RlMonTxIntAnaSigRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportExtAnaSigData]
    data.reportExtAnaSigData = RlMonExtAnaSigRep.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportSynthFreqData]
    len = 2;
    data.reportSynthFreqData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportSynthFreqData[i] = RlMonSynthFreqRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportTxPhShiftData]
    len = 2;
    data.reportTxPhShiftData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportTxPhShiftData[i] = RlMonTxPhShiftRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportTxGainPhaMisData]
    len = 2;
    data.reportTxGainPhaMisData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportTxGainPhaMisData[i] = RlMonTxGainPhaMisRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportTxBallBreakData]
    data.reportTxBallBreakData = RlMonTxBallBreakRep.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportTxPowData]
    len = 2;
    data.reportTxPowData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.reportTxPowData[i] = RlMonTxPowRep.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reportRecvdGpAdcData]
    data.reportRecvdGpAdcData = RlRecvdGpAdcData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportAnalogFaultData]
    data.reportAnalogFaultData = RlAnalogFaultReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [reportTimingErrorData]
    data.reportTimingErrorData = RlCalMonTimingErrorReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1002;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/RfStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fa249dd965cece786013e1f923eed7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RfStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radarID !== undefined) {
      resolved.radarID = msg.radarID;
    }
    else {
      resolved.radarID = 0
    }

    if (msg.frameCnt !== undefined) {
      resolved.frameCnt = msg.frameCnt;
    }
    else {
      resolved.frameCnt = 0
    }

    if (msg.digLatentFaultData !== undefined) {
      resolved.digLatentFaultData = RlDigLatentFaultReportData.Resolve(msg.digLatentFaultData)
    }
    else {
      resolved.digLatentFaultData = new RlDigLatentFaultReportData()
    }

    if (msg.reportHeaderData !== undefined) {
      resolved.reportHeaderData = RlMonReportHdrData.Resolve(msg.reportHeaderData)
    }
    else {
      resolved.reportHeaderData = new RlMonReportHdrData()
    }

    if (msg.reportTempData !== undefined) {
      resolved.reportTempData = RlMonTempReportData.Resolve(msg.reportTempData)
    }
    else {
      resolved.reportTempData = new RlMonTempReportData()
    }

    if (msg.digPeriodicReportData !== undefined) {
      resolved.digPeriodicReportData = RlDigPeriodicReportData.Resolve(msg.digPeriodicReportData)
    }
    else {
      resolved.digPeriodicReportData = new RlDigPeriodicReportData()
    }

    if (msg.reportRxGainPhData !== undefined) {
      resolved.reportRxGainPhData = new Array(2)
      for (let i = 0; i < resolved.reportRxGainPhData.length; ++i) {
        if (msg.reportRxGainPhData.length > i) {
          resolved.reportRxGainPhData[i] = RlMonRxGainPhRep.Resolve(msg.reportRxGainPhData[i]);
        }
        else {
          resolved.reportRxGainPhData[i] = new RlMonRxGainPhRep();
        }
      }
    }
    else {
      resolved.reportRxGainPhData = new Array(2).fill(new RlMonRxGainPhRep())
    }

    if (msg.reportRxNoiseFigData !== undefined) {
      resolved.reportRxNoiseFigData = new Array(2)
      for (let i = 0; i < resolved.reportRxNoiseFigData.length; ++i) {
        if (msg.reportRxNoiseFigData.length > i) {
          resolved.reportRxNoiseFigData[i] = RlMonRxNoiseFigRep.Resolve(msg.reportRxNoiseFigData[i]);
        }
        else {
          resolved.reportRxNoiseFigData[i] = new RlMonRxNoiseFigRep();
        }
      }
    }
    else {
      resolved.reportRxNoiseFigData = new Array(2).fill(new RlMonRxNoiseFigRep())
    }

    if (msg.reportRxIfStageData !== undefined) {
      resolved.reportRxIfStageData = new Array(2)
      for (let i = 0; i < resolved.reportRxIfStageData.length; ++i) {
        if (msg.reportRxIfStageData.length > i) {
          resolved.reportRxIfStageData[i] = RlMonRxIfStageRep.Resolve(msg.reportRxIfStageData[i]);
        }
        else {
          resolved.reportRxIfStageData[i] = new RlMonRxIfStageRep();
        }
      }
    }
    else {
      resolved.reportRxIfStageData = new Array(2).fill(new RlMonRxIfStageRep())
    }

    if (msg.reportRxIntAnaSigData !== undefined) {
      resolved.reportRxIntAnaSigData = new Array(2)
      for (let i = 0; i < resolved.reportRxIntAnaSigData.length; ++i) {
        if (msg.reportRxIntAnaSigData.length > i) {
          resolved.reportRxIntAnaSigData[i] = RlMonRxIntAnaSigRep.Resolve(msg.reportRxIntAnaSigData[i]);
        }
        else {
          resolved.reportRxIntAnaSigData[i] = new RlMonRxIntAnaSigRep();
        }
      }
    }
    else {
      resolved.reportRxIntAnaSigData = new Array(2).fill(new RlMonRxIntAnaSigRep())
    }

    if (msg.reportPmclkloIntAnaSigData !== undefined) {
      resolved.reportPmclkloIntAnaSigData = new Array(2)
      for (let i = 0; i < resolved.reportPmclkloIntAnaSigData.length; ++i) {
        if (msg.reportPmclkloIntAnaSigData.length > i) {
          resolved.reportPmclkloIntAnaSigData[i] = RlMonPmclkloIntAnaSigRep.Resolve(msg.reportPmclkloIntAnaSigData[i]);
        }
        else {
          resolved.reportPmclkloIntAnaSigData[i] = new RlMonPmclkloIntAnaSigRep();
        }
      }
    }
    else {
      resolved.reportPmclkloIntAnaSigData = new Array(2).fill(new RlMonPmclkloIntAnaSigRep())
    }

    if (msg.reportGpadcIntAnaSigData !== undefined) {
      resolved.reportGpadcIntAnaSigData = RlMonGpadcIntAnaSigRep.Resolve(msg.reportGpadcIntAnaSigData)
    }
    else {
      resolved.reportGpadcIntAnaSigData = new RlMonGpadcIntAnaSigRep()
    }

    if (msg.reportPllConVoltData !== undefined) {
      resolved.reportPllConVoltData = RlMonPllConVoltRep.Resolve(msg.reportPllConVoltData)
    }
    else {
      resolved.reportPllConVoltData = new RlMonPllConVoltRep()
    }

    if (msg.reportDccClkFreqData !== undefined) {
      resolved.reportDccClkFreqData = RlMonDccClkFreqRep.Resolve(msg.reportDccClkFreqData)
    }
    else {
      resolved.reportDccClkFreqData = new RlMonDccClkFreqRep()
    }

    if (msg.reportSynthFreqNonLiveData !== undefined) {
      resolved.reportSynthFreqNonLiveData = RlMonSynthFreqNonLiveRep.Resolve(msg.reportSynthFreqNonLiveData)
    }
    else {
      resolved.reportSynthFreqNonLiveData = new RlMonSynthFreqNonLiveRep()
    }

    if (msg.reportRxMixrInPwrData !== undefined) {
      resolved.reportRxMixrInPwrData = new Array(2)
      for (let i = 0; i < resolved.reportRxMixrInPwrData.length; ++i) {
        if (msg.reportRxMixrInPwrData.length > i) {
          resolved.reportRxMixrInPwrData[i] = RlMonRxMixrInPwrRep.Resolve(msg.reportRxMixrInPwrData[i]);
        }
        else {
          resolved.reportRxMixrInPwrData[i] = new RlMonRxMixrInPwrRep();
        }
      }
    }
    else {
      resolved.reportRxMixrInPwrData = new Array(2).fill(new RlMonRxMixrInPwrRep())
    }

    if (msg.reportTxIntAnaSigData !== undefined) {
      resolved.reportTxIntAnaSigData = new Array(2)
      for (let i = 0; i < resolved.reportTxIntAnaSigData.length; ++i) {
        if (msg.reportTxIntAnaSigData.length > i) {
          resolved.reportTxIntAnaSigData[i] = RlMonTxIntAnaSigRep.Resolve(msg.reportTxIntAnaSigData[i]);
        }
        else {
          resolved.reportTxIntAnaSigData[i] = new RlMonTxIntAnaSigRep();
        }
      }
    }
    else {
      resolved.reportTxIntAnaSigData = new Array(2).fill(new RlMonTxIntAnaSigRep())
    }

    if (msg.reportExtAnaSigData !== undefined) {
      resolved.reportExtAnaSigData = RlMonExtAnaSigRep.Resolve(msg.reportExtAnaSigData)
    }
    else {
      resolved.reportExtAnaSigData = new RlMonExtAnaSigRep()
    }

    if (msg.reportSynthFreqData !== undefined) {
      resolved.reportSynthFreqData = new Array(2)
      for (let i = 0; i < resolved.reportSynthFreqData.length; ++i) {
        if (msg.reportSynthFreqData.length > i) {
          resolved.reportSynthFreqData[i] = RlMonSynthFreqRep.Resolve(msg.reportSynthFreqData[i]);
        }
        else {
          resolved.reportSynthFreqData[i] = new RlMonSynthFreqRep();
        }
      }
    }
    else {
      resolved.reportSynthFreqData = new Array(2).fill(new RlMonSynthFreqRep())
    }

    if (msg.reportTxPhShiftData !== undefined) {
      resolved.reportTxPhShiftData = new Array(2)
      for (let i = 0; i < resolved.reportTxPhShiftData.length; ++i) {
        if (msg.reportTxPhShiftData.length > i) {
          resolved.reportTxPhShiftData[i] = RlMonTxPhShiftRep.Resolve(msg.reportTxPhShiftData[i]);
        }
        else {
          resolved.reportTxPhShiftData[i] = new RlMonTxPhShiftRep();
        }
      }
    }
    else {
      resolved.reportTxPhShiftData = new Array(2).fill(new RlMonTxPhShiftRep())
    }

    if (msg.reportTxGainPhaMisData !== undefined) {
      resolved.reportTxGainPhaMisData = new Array(2)
      for (let i = 0; i < resolved.reportTxGainPhaMisData.length; ++i) {
        if (msg.reportTxGainPhaMisData.length > i) {
          resolved.reportTxGainPhaMisData[i] = RlMonTxGainPhaMisRep.Resolve(msg.reportTxGainPhaMisData[i]);
        }
        else {
          resolved.reportTxGainPhaMisData[i] = new RlMonTxGainPhaMisRep();
        }
      }
    }
    else {
      resolved.reportTxGainPhaMisData = new Array(2).fill(new RlMonTxGainPhaMisRep())
    }

    if (msg.reportTxBallBreakData !== undefined) {
      resolved.reportTxBallBreakData = RlMonTxBallBreakRep.Resolve(msg.reportTxBallBreakData)
    }
    else {
      resolved.reportTxBallBreakData = new RlMonTxBallBreakRep()
    }

    if (msg.reportTxPowData !== undefined) {
      resolved.reportTxPowData = new Array(2)
      for (let i = 0; i < resolved.reportTxPowData.length; ++i) {
        if (msg.reportTxPowData.length > i) {
          resolved.reportTxPowData[i] = RlMonTxPowRep.Resolve(msg.reportTxPowData[i]);
        }
        else {
          resolved.reportTxPowData[i] = new RlMonTxPowRep();
        }
      }
    }
    else {
      resolved.reportTxPowData = new Array(2).fill(new RlMonTxPowRep())
    }

    if (msg.reportRecvdGpAdcData !== undefined) {
      resolved.reportRecvdGpAdcData = RlRecvdGpAdcData.Resolve(msg.reportRecvdGpAdcData)
    }
    else {
      resolved.reportRecvdGpAdcData = new RlRecvdGpAdcData()
    }

    if (msg.reportAnalogFaultData !== undefined) {
      resolved.reportAnalogFaultData = RlAnalogFaultReportData.Resolve(msg.reportAnalogFaultData)
    }
    else {
      resolved.reportAnalogFaultData = new RlAnalogFaultReportData()
    }

    if (msg.reportTimingErrorData !== undefined) {
      resolved.reportTimingErrorData = RlCalMonTimingErrorReportData.Resolve(msg.reportTimingErrorData)
    }
    else {
      resolved.reportTimingErrorData = new RlCalMonTimingErrorReportData()
    }

    return resolved;
    }
};

module.exports = RfStatus;
