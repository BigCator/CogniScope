// Auto-generated. Do not edit!

// (in-package radar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStateNew {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.projectCodeNum = null;
      this.productYear = null;
      this.productMonth = null;
      this.productDay = null;
      this.porductCode = null;
      this.serialNum = null;
      this.rfHwCode = null;
      this.rfHwVersion = null;
      this.dspHwCode = null;
      this.dspHwVersion = null;
      this.calibrateCode = null;
      this.osVersion = null;
      this.swVersion = null;
      this.algoVersion = null;
      this.waveformVersion = null;
      this.a72_0_loading = null;
      this.a72_1_loading = null;
      this.a72_0_freq = null;
      this.a72_1_freq = null;
      this.mcu_0_freq = null;
      this.mcu_1_freq = null;
      this.mcu_2_freq = null;
      this.mcu_3_freq = null;
      this.lp_mcu_0_freq = null;
      this.lp_mcu_1_freq = null;
      this.c7x_mma_freq = null;
      this.c66x_0_freq = null;
      this.c66x_1_freq = null;
      this.c7x_1_freq = null;
      this.rebootCnt = null;
      this.memoryLoading = null;
      this.junctionTemp = null;
      this.lowPowerModeEnable = null;
      this.errorCode = null;
      this.blockageDetection = null;
      this.radarMode = null;
      this.udpSendEnPnt = null;
      this.udpSendEnTrk = null;
      this.udpSendEnRDMap = null;
      this.udpSendEnCfar = null;
      this.udpSendEnAdc = null;
      this.udpSendEnFft1D = null;
      this.udpSendEnFft2D = null;
      this.udpSendEnDOA = null;
      this.radarTxFreq = null;
      this.frameTriggerDelay = null;
      this.syncEnable = null;
      this.syncRadarNum = null;
      this.antiInterfaceEnable = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('projectCodeNum')) {
        this.projectCodeNum = initObj.projectCodeNum
      }
      else {
        this.projectCodeNum = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('productYear')) {
        this.productYear = initObj.productYear
      }
      else {
        this.productYear = 0;
      }
      if (initObj.hasOwnProperty('productMonth')) {
        this.productMonth = initObj.productMonth
      }
      else {
        this.productMonth = 0;
      }
      if (initObj.hasOwnProperty('productDay')) {
        this.productDay = initObj.productDay
      }
      else {
        this.productDay = 0;
      }
      if (initObj.hasOwnProperty('porductCode')) {
        this.porductCode = initObj.porductCode
      }
      else {
        this.porductCode = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('serialNum')) {
        this.serialNum = initObj.serialNum
      }
      else {
        this.serialNum = new Array(40).fill(0);
      }
      if (initObj.hasOwnProperty('rfHwCode')) {
        this.rfHwCode = initObj.rfHwCode
      }
      else {
        this.rfHwCode = new Array(40).fill(0);
      }
      if (initObj.hasOwnProperty('rfHwVersion')) {
        this.rfHwVersion = initObj.rfHwVersion
      }
      else {
        this.rfHwVersion = 0;
      }
      if (initObj.hasOwnProperty('dspHwCode')) {
        this.dspHwCode = initObj.dspHwCode
      }
      else {
        this.dspHwCode = new Array(40).fill(0);
      }
      if (initObj.hasOwnProperty('dspHwVersion')) {
        this.dspHwVersion = initObj.dspHwVersion
      }
      else {
        this.dspHwVersion = 0;
      }
      if (initObj.hasOwnProperty('calibrateCode')) {
        this.calibrateCode = initObj.calibrateCode
      }
      else {
        this.calibrateCode = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('osVersion')) {
        this.osVersion = initObj.osVersion
      }
      else {
        this.osVersion = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('swVersion')) {
        this.swVersion = initObj.swVersion
      }
      else {
        this.swVersion = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('algoVersion')) {
        this.algoVersion = initObj.algoVersion
      }
      else {
        this.algoVersion = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('waveformVersion')) {
        this.waveformVersion = initObj.waveformVersion
      }
      else {
        this.waveformVersion = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('a72_0_loading')) {
        this.a72_0_loading = initObj.a72_0_loading
      }
      else {
        this.a72_0_loading = 0;
      }
      if (initObj.hasOwnProperty('a72_1_loading')) {
        this.a72_1_loading = initObj.a72_1_loading
      }
      else {
        this.a72_1_loading = 0;
      }
      if (initObj.hasOwnProperty('a72_0_freq')) {
        this.a72_0_freq = initObj.a72_0_freq
      }
      else {
        this.a72_0_freq = 0;
      }
      if (initObj.hasOwnProperty('a72_1_freq')) {
        this.a72_1_freq = initObj.a72_1_freq
      }
      else {
        this.a72_1_freq = 0;
      }
      if (initObj.hasOwnProperty('mcu_0_freq')) {
        this.mcu_0_freq = initObj.mcu_0_freq
      }
      else {
        this.mcu_0_freq = 0;
      }
      if (initObj.hasOwnProperty('mcu_1_freq')) {
        this.mcu_1_freq = initObj.mcu_1_freq
      }
      else {
        this.mcu_1_freq = 0;
      }
      if (initObj.hasOwnProperty('mcu_2_freq')) {
        this.mcu_2_freq = initObj.mcu_2_freq
      }
      else {
        this.mcu_2_freq = 0;
      }
      if (initObj.hasOwnProperty('mcu_3_freq')) {
        this.mcu_3_freq = initObj.mcu_3_freq
      }
      else {
        this.mcu_3_freq = 0;
      }
      if (initObj.hasOwnProperty('lp_mcu_0_freq')) {
        this.lp_mcu_0_freq = initObj.lp_mcu_0_freq
      }
      else {
        this.lp_mcu_0_freq = 0;
      }
      if (initObj.hasOwnProperty('lp_mcu_1_freq')) {
        this.lp_mcu_1_freq = initObj.lp_mcu_1_freq
      }
      else {
        this.lp_mcu_1_freq = 0;
      }
      if (initObj.hasOwnProperty('c7x_mma_freq')) {
        this.c7x_mma_freq = initObj.c7x_mma_freq
      }
      else {
        this.c7x_mma_freq = 0;
      }
      if (initObj.hasOwnProperty('c66x_0_freq')) {
        this.c66x_0_freq = initObj.c66x_0_freq
      }
      else {
        this.c66x_0_freq = 0;
      }
      if (initObj.hasOwnProperty('c66x_1_freq')) {
        this.c66x_1_freq = initObj.c66x_1_freq
      }
      else {
        this.c66x_1_freq = 0;
      }
      if (initObj.hasOwnProperty('c7x_1_freq')) {
        this.c7x_1_freq = initObj.c7x_1_freq
      }
      else {
        this.c7x_1_freq = 0;
      }
      if (initObj.hasOwnProperty('rebootCnt')) {
        this.rebootCnt = initObj.rebootCnt
      }
      else {
        this.rebootCnt = 0;
      }
      if (initObj.hasOwnProperty('memoryLoading')) {
        this.memoryLoading = initObj.memoryLoading
      }
      else {
        this.memoryLoading = 0;
      }
      if (initObj.hasOwnProperty('junctionTemp')) {
        this.junctionTemp = initObj.junctionTemp
      }
      else {
        this.junctionTemp = 0;
      }
      if (initObj.hasOwnProperty('lowPowerModeEnable')) {
        this.lowPowerModeEnable = initObj.lowPowerModeEnable
      }
      else {
        this.lowPowerModeEnable = 0;
      }
      if (initObj.hasOwnProperty('errorCode')) {
        this.errorCode = initObj.errorCode
      }
      else {
        this.errorCode = 0;
      }
      if (initObj.hasOwnProperty('blockageDetection')) {
        this.blockageDetection = initObj.blockageDetection
      }
      else {
        this.blockageDetection = 0;
      }
      if (initObj.hasOwnProperty('radarMode')) {
        this.radarMode = initObj.radarMode
      }
      else {
        this.radarMode = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnPnt')) {
        this.udpSendEnPnt = initObj.udpSendEnPnt
      }
      else {
        this.udpSendEnPnt = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnTrk')) {
        this.udpSendEnTrk = initObj.udpSendEnTrk
      }
      else {
        this.udpSendEnTrk = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnRDMap')) {
        this.udpSendEnRDMap = initObj.udpSendEnRDMap
      }
      else {
        this.udpSendEnRDMap = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnCfar')) {
        this.udpSendEnCfar = initObj.udpSendEnCfar
      }
      else {
        this.udpSendEnCfar = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnAdc')) {
        this.udpSendEnAdc = initObj.udpSendEnAdc
      }
      else {
        this.udpSendEnAdc = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnFft1D')) {
        this.udpSendEnFft1D = initObj.udpSendEnFft1D
      }
      else {
        this.udpSendEnFft1D = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnFft2D')) {
        this.udpSendEnFft2D = initObj.udpSendEnFft2D
      }
      else {
        this.udpSendEnFft2D = 0;
      }
      if (initObj.hasOwnProperty('udpSendEnDOA')) {
        this.udpSendEnDOA = initObj.udpSendEnDOA
      }
      else {
        this.udpSendEnDOA = 0;
      }
      if (initObj.hasOwnProperty('radarTxFreq')) {
        this.radarTxFreq = initObj.radarTxFreq
      }
      else {
        this.radarTxFreq = 0;
      }
      if (initObj.hasOwnProperty('frameTriggerDelay')) {
        this.frameTriggerDelay = initObj.frameTriggerDelay
      }
      else {
        this.frameTriggerDelay = 0;
      }
      if (initObj.hasOwnProperty('syncEnable')) {
        this.syncEnable = initObj.syncEnable
      }
      else {
        this.syncEnable = 0;
      }
      if (initObj.hasOwnProperty('syncRadarNum')) {
        this.syncRadarNum = initObj.syncRadarNum
      }
      else {
        this.syncRadarNum = 0;
      }
      if (initObj.hasOwnProperty('antiInterfaceEnable')) {
        this.antiInterfaceEnable = initObj.antiInterfaceEnable
      }
      else {
        this.antiInterfaceEnable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStateNew
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [projectCodeNum] has the right length
    if (obj.projectCodeNum.length !== 20) {
      throw new Error('Unable to serialize array field projectCodeNum - length must be 20')
    }
    // Serialize message field [projectCodeNum]
    bufferOffset = _arraySerializer.char(obj.projectCodeNum, buffer, bufferOffset, 20);
    // Serialize message field [productYear]
    bufferOffset = _serializer.uint16(obj.productYear, buffer, bufferOffset);
    // Serialize message field [productMonth]
    bufferOffset = _serializer.uint16(obj.productMonth, buffer, bufferOffset);
    // Serialize message field [productDay]
    bufferOffset = _serializer.uint16(obj.productDay, buffer, bufferOffset);
    // Check that the constant length array field [porductCode] has the right length
    if (obj.porductCode.length !== 20) {
      throw new Error('Unable to serialize array field porductCode - length must be 20')
    }
    // Serialize message field [porductCode]
    bufferOffset = _arraySerializer.char(obj.porductCode, buffer, bufferOffset, 20);
    // Check that the constant length array field [serialNum] has the right length
    if (obj.serialNum.length !== 40) {
      throw new Error('Unable to serialize array field serialNum - length must be 40')
    }
    // Serialize message field [serialNum]
    bufferOffset = _arraySerializer.char(obj.serialNum, buffer, bufferOffset, 40);
    // Check that the constant length array field [rfHwCode] has the right length
    if (obj.rfHwCode.length !== 40) {
      throw new Error('Unable to serialize array field rfHwCode - length must be 40')
    }
    // Serialize message field [rfHwCode]
    bufferOffset = _arraySerializer.char(obj.rfHwCode, buffer, bufferOffset, 40);
    // Serialize message field [rfHwVersion]
    bufferOffset = _serializer.uint16(obj.rfHwVersion, buffer, bufferOffset);
    // Check that the constant length array field [dspHwCode] has the right length
    if (obj.dspHwCode.length !== 40) {
      throw new Error('Unable to serialize array field dspHwCode - length must be 40')
    }
    // Serialize message field [dspHwCode]
    bufferOffset = _arraySerializer.char(obj.dspHwCode, buffer, bufferOffset, 40);
    // Serialize message field [dspHwVersion]
    bufferOffset = _serializer.uint16(obj.dspHwVersion, buffer, bufferOffset);
    // Check that the constant length array field [calibrateCode] has the right length
    if (obj.calibrateCode.length !== 20) {
      throw new Error('Unable to serialize array field calibrateCode - length must be 20')
    }
    // Serialize message field [calibrateCode]
    bufferOffset = _arraySerializer.char(obj.calibrateCode, buffer, bufferOffset, 20);
    // Check that the constant length array field [osVersion] has the right length
    if (obj.osVersion.length !== 20) {
      throw new Error('Unable to serialize array field osVersion - length must be 20')
    }
    // Serialize message field [osVersion]
    bufferOffset = _arraySerializer.char(obj.osVersion, buffer, bufferOffset, 20);
    // Check that the constant length array field [swVersion] has the right length
    if (obj.swVersion.length !== 20) {
      throw new Error('Unable to serialize array field swVersion - length must be 20')
    }
    // Serialize message field [swVersion]
    bufferOffset = _arraySerializer.char(obj.swVersion, buffer, bufferOffset, 20);
    // Check that the constant length array field [algoVersion] has the right length
    if (obj.algoVersion.length !== 20) {
      throw new Error('Unable to serialize array field algoVersion - length must be 20')
    }
    // Serialize message field [algoVersion]
    bufferOffset = _arraySerializer.char(obj.algoVersion, buffer, bufferOffset, 20);
    // Check that the constant length array field [waveformVersion] has the right length
    if (obj.waveformVersion.length !== 20) {
      throw new Error('Unable to serialize array field waveformVersion - length must be 20')
    }
    // Serialize message field [waveformVersion]
    bufferOffset = _arraySerializer.char(obj.waveformVersion, buffer, bufferOffset, 20);
    // Serialize message field [a72_0_loading]
    bufferOffset = _serializer.uint16(obj.a72_0_loading, buffer, bufferOffset);
    // Serialize message field [a72_1_loading]
    bufferOffset = _serializer.uint16(obj.a72_1_loading, buffer, bufferOffset);
    // Serialize message field [a72_0_freq]
    bufferOffset = _serializer.uint32(obj.a72_0_freq, buffer, bufferOffset);
    // Serialize message field [a72_1_freq]
    bufferOffset = _serializer.uint32(obj.a72_1_freq, buffer, bufferOffset);
    // Serialize message field [mcu_0_freq]
    bufferOffset = _serializer.uint32(obj.mcu_0_freq, buffer, bufferOffset);
    // Serialize message field [mcu_1_freq]
    bufferOffset = _serializer.uint32(obj.mcu_1_freq, buffer, bufferOffset);
    // Serialize message field [mcu_2_freq]
    bufferOffset = _serializer.uint32(obj.mcu_2_freq, buffer, bufferOffset);
    // Serialize message field [mcu_3_freq]
    bufferOffset = _serializer.uint32(obj.mcu_3_freq, buffer, bufferOffset);
    // Serialize message field [lp_mcu_0_freq]
    bufferOffset = _serializer.uint32(obj.lp_mcu_0_freq, buffer, bufferOffset);
    // Serialize message field [lp_mcu_1_freq]
    bufferOffset = _serializer.uint32(obj.lp_mcu_1_freq, buffer, bufferOffset);
    // Serialize message field [c7x_mma_freq]
    bufferOffset = _serializer.uint32(obj.c7x_mma_freq, buffer, bufferOffset);
    // Serialize message field [c66x_0_freq]
    bufferOffset = _serializer.uint32(obj.c66x_0_freq, buffer, bufferOffset);
    // Serialize message field [c66x_1_freq]
    bufferOffset = _serializer.uint32(obj.c66x_1_freq, buffer, bufferOffset);
    // Serialize message field [c7x_1_freq]
    bufferOffset = _serializer.uint32(obj.c7x_1_freq, buffer, bufferOffset);
    // Serialize message field [rebootCnt]
    bufferOffset = _serializer.uint16(obj.rebootCnt, buffer, bufferOffset);
    // Serialize message field [memoryLoading]
    bufferOffset = _serializer.uint16(obj.memoryLoading, buffer, bufferOffset);
    // Serialize message field [junctionTemp]
    bufferOffset = _serializer.uint32(obj.junctionTemp, buffer, bufferOffset);
    // Serialize message field [lowPowerModeEnable]
    bufferOffset = _serializer.uint16(obj.lowPowerModeEnable, buffer, bufferOffset);
    // Serialize message field [errorCode]
    bufferOffset = _serializer.uint16(obj.errorCode, buffer, bufferOffset);
    // Serialize message field [blockageDetection]
    bufferOffset = _serializer.uint16(obj.blockageDetection, buffer, bufferOffset);
    // Serialize message field [radarMode]
    bufferOffset = _serializer.uint16(obj.radarMode, buffer, bufferOffset);
    // Serialize message field [udpSendEnPnt]
    bufferOffset = _serializer.uint16(obj.udpSendEnPnt, buffer, bufferOffset);
    // Serialize message field [udpSendEnTrk]
    bufferOffset = _serializer.uint16(obj.udpSendEnTrk, buffer, bufferOffset);
    // Serialize message field [udpSendEnRDMap]
    bufferOffset = _serializer.uint16(obj.udpSendEnRDMap, buffer, bufferOffset);
    // Serialize message field [udpSendEnCfar]
    bufferOffset = _serializer.uint16(obj.udpSendEnCfar, buffer, bufferOffset);
    // Serialize message field [udpSendEnAdc]
    bufferOffset = _serializer.uint16(obj.udpSendEnAdc, buffer, bufferOffset);
    // Serialize message field [udpSendEnFft1D]
    bufferOffset = _serializer.uint16(obj.udpSendEnFft1D, buffer, bufferOffset);
    // Serialize message field [udpSendEnFft2D]
    bufferOffset = _serializer.uint16(obj.udpSendEnFft2D, buffer, bufferOffset);
    // Serialize message field [udpSendEnDOA]
    bufferOffset = _serializer.uint16(obj.udpSendEnDOA, buffer, bufferOffset);
    // Serialize message field [radarTxFreq]
    bufferOffset = _serializer.uint16(obj.radarTxFreq, buffer, bufferOffset);
    // Serialize message field [frameTriggerDelay]
    bufferOffset = _serializer.uint16(obj.frameTriggerDelay, buffer, bufferOffset);
    // Serialize message field [syncEnable]
    bufferOffset = _serializer.uint16(obj.syncEnable, buffer, bufferOffset);
    // Serialize message field [syncRadarNum]
    bufferOffset = _serializer.uint16(obj.syncRadarNum, buffer, bufferOffset);
    // Serialize message field [antiInterfaceEnable]
    bufferOffset = _serializer.uint16(obj.antiInterfaceEnable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStateNew
    let len;
    let data = new SystemStateNew(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [projectCodeNum]
    data.projectCodeNum = _arrayDeserializer.char(buffer, bufferOffset, 20)
    // Deserialize message field [productYear]
    data.productYear = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [productMonth]
    data.productMonth = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [productDay]
    data.productDay = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [porductCode]
    data.porductCode = _arrayDeserializer.char(buffer, bufferOffset, 20)
    // Deserialize message field [serialNum]
    data.serialNum = _arrayDeserializer.char(buffer, bufferOffset, 40)
    // Deserialize message field [rfHwCode]
    data.rfHwCode = _arrayDeserializer.char(buffer, bufferOffset, 40)
    // Deserialize message field [rfHwVersion]
    data.rfHwVersion = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [dspHwCode]
    data.dspHwCode = _arrayDeserializer.char(buffer, bufferOffset, 40)
    // Deserialize message field [dspHwVersion]
    data.dspHwVersion = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [calibrateCode]
    data.calibrateCode = _arrayDeserializer.char(buffer, bufferOffset, 20)
    // Deserialize message field [osVersion]
    data.osVersion = _arrayDeserializer.char(buffer, bufferOffset, 20)
    // Deserialize message field [swVersion]
    data.swVersion = _arrayDeserializer.char(buffer, bufferOffset, 20)
    // Deserialize message field [algoVersion]
    data.algoVersion = _arrayDeserializer.char(buffer, bufferOffset, 20)
    // Deserialize message field [waveformVersion]
    data.waveformVersion = _arrayDeserializer.char(buffer, bufferOffset, 20)
    // Deserialize message field [a72_0_loading]
    data.a72_0_loading = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [a72_1_loading]
    data.a72_1_loading = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [a72_0_freq]
    data.a72_0_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [a72_1_freq]
    data.a72_1_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mcu_0_freq]
    data.mcu_0_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mcu_1_freq]
    data.mcu_1_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mcu_2_freq]
    data.mcu_2_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mcu_3_freq]
    data.mcu_3_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lp_mcu_0_freq]
    data.lp_mcu_0_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lp_mcu_1_freq]
    data.lp_mcu_1_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [c7x_mma_freq]
    data.c7x_mma_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [c66x_0_freq]
    data.c66x_0_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [c66x_1_freq]
    data.c66x_1_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [c7x_1_freq]
    data.c7x_1_freq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rebootCnt]
    data.rebootCnt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [memoryLoading]
    data.memoryLoading = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [junctionTemp]
    data.junctionTemp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lowPowerModeEnable]
    data.lowPowerModeEnable = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [errorCode]
    data.errorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blockageDetection]
    data.blockageDetection = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [radarMode]
    data.radarMode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnPnt]
    data.udpSendEnPnt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnTrk]
    data.udpSendEnTrk = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnRDMap]
    data.udpSendEnRDMap = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnCfar]
    data.udpSendEnCfar = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnAdc]
    data.udpSendEnAdc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnFft1D]
    data.udpSendEnFft1D = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnFft2D]
    data.udpSendEnFft2D = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [udpSendEnDOA]
    data.udpSendEnDOA = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [radarTxFreq]
    data.radarTxFreq = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [frameTriggerDelay]
    data.frameTriggerDelay = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [syncEnable]
    data.syncEnable = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [syncRadarNum]
    data.syncRadarNum = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [antiInterfaceEnable]
    data.antiInterfaceEnable = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 364;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_msgs/SystemStateNew';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cd1f98266d88da5518e239931fd3c7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStateNew(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.projectCodeNum !== undefined) {
      resolved.projectCodeNum = msg.projectCodeNum;
    }
    else {
      resolved.projectCodeNum = new Array(20).fill(0)
    }

    if (msg.productYear !== undefined) {
      resolved.productYear = msg.productYear;
    }
    else {
      resolved.productYear = 0
    }

    if (msg.productMonth !== undefined) {
      resolved.productMonth = msg.productMonth;
    }
    else {
      resolved.productMonth = 0
    }

    if (msg.productDay !== undefined) {
      resolved.productDay = msg.productDay;
    }
    else {
      resolved.productDay = 0
    }

    if (msg.porductCode !== undefined) {
      resolved.porductCode = msg.porductCode;
    }
    else {
      resolved.porductCode = new Array(20).fill(0)
    }

    if (msg.serialNum !== undefined) {
      resolved.serialNum = msg.serialNum;
    }
    else {
      resolved.serialNum = new Array(40).fill(0)
    }

    if (msg.rfHwCode !== undefined) {
      resolved.rfHwCode = msg.rfHwCode;
    }
    else {
      resolved.rfHwCode = new Array(40).fill(0)
    }

    if (msg.rfHwVersion !== undefined) {
      resolved.rfHwVersion = msg.rfHwVersion;
    }
    else {
      resolved.rfHwVersion = 0
    }

    if (msg.dspHwCode !== undefined) {
      resolved.dspHwCode = msg.dspHwCode;
    }
    else {
      resolved.dspHwCode = new Array(40).fill(0)
    }

    if (msg.dspHwVersion !== undefined) {
      resolved.dspHwVersion = msg.dspHwVersion;
    }
    else {
      resolved.dspHwVersion = 0
    }

    if (msg.calibrateCode !== undefined) {
      resolved.calibrateCode = msg.calibrateCode;
    }
    else {
      resolved.calibrateCode = new Array(20).fill(0)
    }

    if (msg.osVersion !== undefined) {
      resolved.osVersion = msg.osVersion;
    }
    else {
      resolved.osVersion = new Array(20).fill(0)
    }

    if (msg.swVersion !== undefined) {
      resolved.swVersion = msg.swVersion;
    }
    else {
      resolved.swVersion = new Array(20).fill(0)
    }

    if (msg.algoVersion !== undefined) {
      resolved.algoVersion = msg.algoVersion;
    }
    else {
      resolved.algoVersion = new Array(20).fill(0)
    }

    if (msg.waveformVersion !== undefined) {
      resolved.waveformVersion = msg.waveformVersion;
    }
    else {
      resolved.waveformVersion = new Array(20).fill(0)
    }

    if (msg.a72_0_loading !== undefined) {
      resolved.a72_0_loading = msg.a72_0_loading;
    }
    else {
      resolved.a72_0_loading = 0
    }

    if (msg.a72_1_loading !== undefined) {
      resolved.a72_1_loading = msg.a72_1_loading;
    }
    else {
      resolved.a72_1_loading = 0
    }

    if (msg.a72_0_freq !== undefined) {
      resolved.a72_0_freq = msg.a72_0_freq;
    }
    else {
      resolved.a72_0_freq = 0
    }

    if (msg.a72_1_freq !== undefined) {
      resolved.a72_1_freq = msg.a72_1_freq;
    }
    else {
      resolved.a72_1_freq = 0
    }

    if (msg.mcu_0_freq !== undefined) {
      resolved.mcu_0_freq = msg.mcu_0_freq;
    }
    else {
      resolved.mcu_0_freq = 0
    }

    if (msg.mcu_1_freq !== undefined) {
      resolved.mcu_1_freq = msg.mcu_1_freq;
    }
    else {
      resolved.mcu_1_freq = 0
    }

    if (msg.mcu_2_freq !== undefined) {
      resolved.mcu_2_freq = msg.mcu_2_freq;
    }
    else {
      resolved.mcu_2_freq = 0
    }

    if (msg.mcu_3_freq !== undefined) {
      resolved.mcu_3_freq = msg.mcu_3_freq;
    }
    else {
      resolved.mcu_3_freq = 0
    }

    if (msg.lp_mcu_0_freq !== undefined) {
      resolved.lp_mcu_0_freq = msg.lp_mcu_0_freq;
    }
    else {
      resolved.lp_mcu_0_freq = 0
    }

    if (msg.lp_mcu_1_freq !== undefined) {
      resolved.lp_mcu_1_freq = msg.lp_mcu_1_freq;
    }
    else {
      resolved.lp_mcu_1_freq = 0
    }

    if (msg.c7x_mma_freq !== undefined) {
      resolved.c7x_mma_freq = msg.c7x_mma_freq;
    }
    else {
      resolved.c7x_mma_freq = 0
    }

    if (msg.c66x_0_freq !== undefined) {
      resolved.c66x_0_freq = msg.c66x_0_freq;
    }
    else {
      resolved.c66x_0_freq = 0
    }

    if (msg.c66x_1_freq !== undefined) {
      resolved.c66x_1_freq = msg.c66x_1_freq;
    }
    else {
      resolved.c66x_1_freq = 0
    }

    if (msg.c7x_1_freq !== undefined) {
      resolved.c7x_1_freq = msg.c7x_1_freq;
    }
    else {
      resolved.c7x_1_freq = 0
    }

    if (msg.rebootCnt !== undefined) {
      resolved.rebootCnt = msg.rebootCnt;
    }
    else {
      resolved.rebootCnt = 0
    }

    if (msg.memoryLoading !== undefined) {
      resolved.memoryLoading = msg.memoryLoading;
    }
    else {
      resolved.memoryLoading = 0
    }

    if (msg.junctionTemp !== undefined) {
      resolved.junctionTemp = msg.junctionTemp;
    }
    else {
      resolved.junctionTemp = 0
    }

    if (msg.lowPowerModeEnable !== undefined) {
      resolved.lowPowerModeEnable = msg.lowPowerModeEnable;
    }
    else {
      resolved.lowPowerModeEnable = 0
    }

    if (msg.errorCode !== undefined) {
      resolved.errorCode = msg.errorCode;
    }
    else {
      resolved.errorCode = 0
    }

    if (msg.blockageDetection !== undefined) {
      resolved.blockageDetection = msg.blockageDetection;
    }
    else {
      resolved.blockageDetection = 0
    }

    if (msg.radarMode !== undefined) {
      resolved.radarMode = msg.radarMode;
    }
    else {
      resolved.radarMode = 0
    }

    if (msg.udpSendEnPnt !== undefined) {
      resolved.udpSendEnPnt = msg.udpSendEnPnt;
    }
    else {
      resolved.udpSendEnPnt = 0
    }

    if (msg.udpSendEnTrk !== undefined) {
      resolved.udpSendEnTrk = msg.udpSendEnTrk;
    }
    else {
      resolved.udpSendEnTrk = 0
    }

    if (msg.udpSendEnRDMap !== undefined) {
      resolved.udpSendEnRDMap = msg.udpSendEnRDMap;
    }
    else {
      resolved.udpSendEnRDMap = 0
    }

    if (msg.udpSendEnCfar !== undefined) {
      resolved.udpSendEnCfar = msg.udpSendEnCfar;
    }
    else {
      resolved.udpSendEnCfar = 0
    }

    if (msg.udpSendEnAdc !== undefined) {
      resolved.udpSendEnAdc = msg.udpSendEnAdc;
    }
    else {
      resolved.udpSendEnAdc = 0
    }

    if (msg.udpSendEnFft1D !== undefined) {
      resolved.udpSendEnFft1D = msg.udpSendEnFft1D;
    }
    else {
      resolved.udpSendEnFft1D = 0
    }

    if (msg.udpSendEnFft2D !== undefined) {
      resolved.udpSendEnFft2D = msg.udpSendEnFft2D;
    }
    else {
      resolved.udpSendEnFft2D = 0
    }

    if (msg.udpSendEnDOA !== undefined) {
      resolved.udpSendEnDOA = msg.udpSendEnDOA;
    }
    else {
      resolved.udpSendEnDOA = 0
    }

    if (msg.radarTxFreq !== undefined) {
      resolved.radarTxFreq = msg.radarTxFreq;
    }
    else {
      resolved.radarTxFreq = 0
    }

    if (msg.frameTriggerDelay !== undefined) {
      resolved.frameTriggerDelay = msg.frameTriggerDelay;
    }
    else {
      resolved.frameTriggerDelay = 0
    }

    if (msg.syncEnable !== undefined) {
      resolved.syncEnable = msg.syncEnable;
    }
    else {
      resolved.syncEnable = 0
    }

    if (msg.syncRadarNum !== undefined) {
      resolved.syncRadarNum = msg.syncRadarNum;
    }
    else {
      resolved.syncRadarNum = 0
    }

    if (msg.antiInterfaceEnable !== undefined) {
      resolved.antiInterfaceEnable = msg.antiInterfaceEnable;
    }
    else {
      resolved.antiInterfaceEnable = 0
    }

    return resolved;
    }
};

module.exports = SystemStateNew;
