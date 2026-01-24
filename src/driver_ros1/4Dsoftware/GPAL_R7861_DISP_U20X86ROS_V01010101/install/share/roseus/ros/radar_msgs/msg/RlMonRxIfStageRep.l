;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonRxIfStageRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonRxIfStageRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONRXIFSTAGEREP")
  (make-package "RADAR_MSGS::RLMONRXIFSTAGEREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonRxIfStageRep.msg.html


(defclass radar_msgs::RlMonRxIfStageRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _reserved0 _lpfCutOffBandEdgeDroopValRx0 _hpfCutOffFreqEr _lpfCutOffStopBandAtten _rxIfaGainErVal _ifGainExp _reserved2 _lpfCutOffBandEdgeDroopValRx _timeStamp ))

(defmethod radar_msgs::RlMonRxIfStageRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:reserved0 __reserved0) 0)
    ((:lpfCutOffBandEdgeDroopValRx0 __lpfCutOffBandEdgeDroopValRx0) 0)
    ((:hpfCutOffFreqEr __hpfCutOffFreqEr) (make-array 8 :initial-element 0 :element-type :integer))
    ((:lpfCutOffStopBandAtten __lpfCutOffStopBandAtten) (make-array 8 :initial-element 0 :element-type :integer))
    ((:rxIfaGainErVal __rxIfaGainErVal) (make-array 8 :initial-element 0 :element-type :integer))
    ((:ifGainExp __ifGainExp) 0)
    ((:reserved2 __reserved2) 0)
    ((:lpfCutOffBandEdgeDroopValRx __lpfCutOffBandEdgeDroopValRx) (make-array 6 :initial-element 0 :element-type :integer))
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _reserved0 (round __reserved0))
   (setq _lpfCutOffBandEdgeDroopValRx0 (round __lpfCutOffBandEdgeDroopValRx0))
   (setq _hpfCutOffFreqEr __hpfCutOffFreqEr)
   (setq _lpfCutOffStopBandAtten __lpfCutOffStopBandAtten)
   (setq _rxIfaGainErVal __rxIfaGainErVal)
   (setq _ifGainExp (round __ifGainExp))
   (setq _reserved2 (round __reserved2))
   (setq _lpfCutOffBandEdgeDroopValRx __lpfCutOffBandEdgeDroopValRx)
   (setq _timeStamp (round __timeStamp))
   self)
  (:statusFlags
   (&optional __statusFlags)
   (if __statusFlags (setq _statusFlags __statusFlags)) _statusFlags)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:profIndex
   (&optional __profIndex)
   (if __profIndex (setq _profIndex __profIndex)) _profIndex)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:lpfCutOffBandEdgeDroopValRx0
   (&optional __lpfCutOffBandEdgeDroopValRx0)
   (if __lpfCutOffBandEdgeDroopValRx0 (setq _lpfCutOffBandEdgeDroopValRx0 __lpfCutOffBandEdgeDroopValRx0)) _lpfCutOffBandEdgeDroopValRx0)
  (:hpfCutOffFreqEr
   (&optional __hpfCutOffFreqEr)
   (if __hpfCutOffFreqEr (setq _hpfCutOffFreqEr __hpfCutOffFreqEr)) _hpfCutOffFreqEr)
  (:lpfCutOffStopBandAtten
   (&optional __lpfCutOffStopBandAtten)
   (if __lpfCutOffStopBandAtten (setq _lpfCutOffStopBandAtten __lpfCutOffStopBandAtten)) _lpfCutOffStopBandAtten)
  (:rxIfaGainErVal
   (&optional __rxIfaGainErVal)
   (if __rxIfaGainErVal (setq _rxIfaGainErVal __rxIfaGainErVal)) _rxIfaGainErVal)
  (:ifGainExp
   (&optional __ifGainExp)
   (if __ifGainExp (setq _ifGainExp __ifGainExp)) _ifGainExp)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:lpfCutOffBandEdgeDroopValRx
   (&optional __lpfCutOffBandEdgeDroopValRx)
   (if __lpfCutOffBandEdgeDroopValRx (setq _lpfCutOffBandEdgeDroopValRx __lpfCutOffBandEdgeDroopValRx)) _lpfCutOffBandEdgeDroopValRx)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _statusFlags
    2
    ;; uint16 _errorCode
    2
    ;; uint8 _profIndex
    1
    ;; uint8 _reserved0
    1
    ;; int16 _lpfCutOffBandEdgeDroopValRx0
    2
    ;; int8[8] _hpfCutOffFreqEr
    (* 1    8)
    ;; int8[8] _lpfCutOffStopBandAtten
    (* 1    8)
    ;; int8[8] _rxIfaGainErVal
    (* 1    8)
    ;; int8 _ifGainExp
    1
    ;; uint8 _reserved2
    1
    ;; int8[6] _lpfCutOffBandEdgeDroopValRx
    (* 1    6)
    ;; uint32 _timeStamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _statusFlags
       (write-word _statusFlags s)
     ;; uint16 _errorCode
       (write-word _errorCode s)
     ;; uint8 _profIndex
       (write-byte _profIndex s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; int16 _lpfCutOffBandEdgeDroopValRx0
       (write-word _lpfCutOffBandEdgeDroopValRx0 s)
     ;; int8[8] _hpfCutOffFreqEr
     (dotimes (i 8)
       (write-byte (elt _hpfCutOffFreqEr i) s)
       )
     ;; int8[8] _lpfCutOffStopBandAtten
     (dotimes (i 8)
       (write-byte (elt _lpfCutOffStopBandAtten i) s)
       )
     ;; int8[8] _rxIfaGainErVal
     (dotimes (i 8)
       (write-byte (elt _rxIfaGainErVal i) s)
       )
     ;; int8 _ifGainExp
       (write-byte _ifGainExp s)
     ;; uint8 _reserved2
       (write-byte _reserved2 s)
     ;; int8[6] _lpfCutOffBandEdgeDroopValRx
     (dotimes (i 6)
       (write-byte (elt _lpfCutOffBandEdgeDroopValRx i) s)
       )
     ;; uint32 _timeStamp
       (write-long _timeStamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _statusFlags
     (setq _statusFlags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _errorCode
     (setq _errorCode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _profIndex
     (setq _profIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _lpfCutOffBandEdgeDroopValRx0
     (setq _lpfCutOffBandEdgeDroopValRx0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8[8] _hpfCutOffFreqEr
   (dotimes (i (length _hpfCutOffFreqEr))
     (setf (elt _hpfCutOffFreqEr i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _hpfCutOffFreqEr i) 127) (setf (elt _hpfCutOffFreqEr i) (- (elt _hpfCutOffFreqEr i) 256)))
     )
   ;; int8[8] _lpfCutOffStopBandAtten
   (dotimes (i (length _lpfCutOffStopBandAtten))
     (setf (elt _lpfCutOffStopBandAtten i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _lpfCutOffStopBandAtten i) 127) (setf (elt _lpfCutOffStopBandAtten i) (- (elt _lpfCutOffStopBandAtten i) 256)))
     )
   ;; int8[8] _rxIfaGainErVal
   (dotimes (i (length _rxIfaGainErVal))
     (setf (elt _rxIfaGainErVal i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _rxIfaGainErVal i) 127) (setf (elt _rxIfaGainErVal i) (- (elt _rxIfaGainErVal i) 256)))
     )
   ;; int8 _ifGainExp
     (setq _ifGainExp (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ifGainExp 127) (setq _ifGainExp (- _ifGainExp 256)))
   ;; uint8 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8[6] _lpfCutOffBandEdgeDroopValRx
   (dotimes (i (length _lpfCutOffBandEdgeDroopValRx))
     (setf (elt _lpfCutOffBandEdgeDroopValRx i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _lpfCutOffBandEdgeDroopValRx i) 127) (setf (elt _lpfCutOffBandEdgeDroopValRx i) (- (elt _lpfCutOffBandEdgeDroopValRx i) 256)))
     )
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonRxIfStageRep :md5sum-) "5939de1fd7d085daf586727b8763f7ad")
(setf (get radar_msgs::RlMonRxIfStageRep :datatype-) "radar_msgs/RlMonRxIfStageRep")
(setf (get radar_msgs::RlMonRxIfStageRep :definition-)
      "uint16      statusFlags
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
")



(provide :radar_msgs/RlMonRxIfStageRep "5939de1fd7d085daf586727b8763f7ad")


