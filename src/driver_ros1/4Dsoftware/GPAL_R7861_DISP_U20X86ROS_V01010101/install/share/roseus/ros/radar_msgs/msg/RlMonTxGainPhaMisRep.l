;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonTxGainPhaMisRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonTxGainPhaMisRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONTXGAINPHAMISREP")
  (make-package "RADAR_MSGS::RLMONTXGAINPHAMISREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonTxGainPhaMisRep.msg.html


(defclass radar_msgs::RlMonTxGainPhaMisRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _noisePower00 _noisePower01 _noisePower02 _txGainVal _txPhaVal _noisePower10 _noisePower11 _noisePower12 _noisePower20 _noisePower21 _noisePower22 _reserved0 _reserved1 _timeStamp ))

(defmethod radar_msgs::RlMonTxGainPhaMisRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:noisePower00 __noisePower00) 0)
    ((:noisePower01 __noisePower01) 0)
    ((:noisePower02 __noisePower02) 0)
    ((:txGainVal __txGainVal) (make-array 9 :initial-element 0 :element-type :integer))
    ((:txPhaVal __txPhaVal) (make-array 9 :initial-element 0 :element-type :integer))
    ((:noisePower10 __noisePower10) 0)
    ((:noisePower11 __noisePower11) 0)
    ((:noisePower12 __noisePower12) 0)
    ((:noisePower20 __noisePower20) 0)
    ((:noisePower21 __noisePower21) 0)
    ((:noisePower22 __noisePower22) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _noisePower00 (round __noisePower00))
   (setq _noisePower01 (round __noisePower01))
   (setq _noisePower02 (round __noisePower02))
   (setq _txGainVal __txGainVal)
   (setq _txPhaVal __txPhaVal)
   (setq _noisePower10 (round __noisePower10))
   (setq _noisePower11 (round __noisePower11))
   (setq _noisePower12 (round __noisePower12))
   (setq _noisePower20 (round __noisePower20))
   (setq _noisePower21 (round __noisePower21))
   (setq _noisePower22 (round __noisePower22))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
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
  (:noisePower00
   (&optional __noisePower00)
   (if __noisePower00 (setq _noisePower00 __noisePower00)) _noisePower00)
  (:noisePower01
   (&optional __noisePower01)
   (if __noisePower01 (setq _noisePower01 __noisePower01)) _noisePower01)
  (:noisePower02
   (&optional __noisePower02)
   (if __noisePower02 (setq _noisePower02 __noisePower02)) _noisePower02)
  (:txGainVal
   (&optional __txGainVal)
   (if __txGainVal (setq _txGainVal __txGainVal)) _txGainVal)
  (:txPhaVal
   (&optional __txPhaVal)
   (if __txPhaVal (setq _txPhaVal __txPhaVal)) _txPhaVal)
  (:noisePower10
   (&optional __noisePower10)
   (if __noisePower10 (setq _noisePower10 __noisePower10)) _noisePower10)
  (:noisePower11
   (&optional __noisePower11)
   (if __noisePower11 (setq _noisePower11 __noisePower11)) _noisePower11)
  (:noisePower12
   (&optional __noisePower12)
   (if __noisePower12 (setq _noisePower12 __noisePower12)) _noisePower12)
  (:noisePower20
   (&optional __noisePower20)
   (if __noisePower20 (setq _noisePower20 __noisePower20)) _noisePower20)
  (:noisePower21
   (&optional __noisePower21)
   (if __noisePower21 (setq _noisePower21 __noisePower21)) _noisePower21)
  (:noisePower22
   (&optional __noisePower22)
   (if __noisePower22 (setq _noisePower22 __noisePower22)) _noisePower22)
  (:reserved0
   (&optional __reserved0)
   (if __reserved0 (setq _reserved0 __reserved0)) _reserved0)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
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
    ;; uint8 _noisePower00
    1
    ;; uint8 _noisePower01
    1
    ;; uint8 _noisePower02
    1
    ;; int16[9] _txGainVal
    (* 2    9)
    ;; uint16[9] _txPhaVal
    (* 2    9)
    ;; uint8 _noisePower10
    1
    ;; uint8 _noisePower11
    1
    ;; uint8 _noisePower12
    1
    ;; uint8 _noisePower20
    1
    ;; uint8 _noisePower21
    1
    ;; uint8 _noisePower22
    1
    ;; uint8 _reserved0
    1
    ;; uint8 _reserved1
    1
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
     ;; uint8 _noisePower00
       (write-byte _noisePower00 s)
     ;; uint8 _noisePower01
       (write-byte _noisePower01 s)
     ;; uint8 _noisePower02
       (write-byte _noisePower02 s)
     ;; int16[9] _txGainVal
     (dotimes (i 9)
       (write-word (elt _txGainVal i) s)
       )
     ;; uint16[9] _txPhaVal
     (dotimes (i 9)
       (write-word (elt _txPhaVal i) s)
       )
     ;; uint8 _noisePower10
       (write-byte _noisePower10 s)
     ;; uint8 _noisePower11
       (write-byte _noisePower11 s)
     ;; uint8 _noisePower12
       (write-byte _noisePower12 s)
     ;; uint8 _noisePower20
       (write-byte _noisePower20 s)
     ;; uint8 _noisePower21
       (write-byte _noisePower21 s)
     ;; uint8 _noisePower22
       (write-byte _noisePower22 s)
     ;; uint8 _reserved0
       (write-byte _reserved0 s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
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
   ;; uint8 _noisePower00
     (setq _noisePower00 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noisePower01
     (setq _noisePower01 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noisePower02
     (setq _noisePower02 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16[9] _txGainVal
   (dotimes (i (length _txGainVal))
     (setf (elt _txGainVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint16[9] _txPhaVal
   (dotimes (i (length _txPhaVal))
     (setf (elt _txPhaVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint8 _noisePower10
     (setq _noisePower10 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noisePower11
     (setq _noisePower11 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noisePower12
     (setq _noisePower12 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noisePower20
     (setq _noisePower20 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noisePower21
     (setq _noisePower21 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noisePower22
     (setq _noisePower22 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved0
     (setq _reserved0 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonTxGainPhaMisRep :md5sum-) "f27f6ab37b6066abd149c07bb608a4d9")
(setf (get radar_msgs::RlMonTxGainPhaMisRep :datatype-) "radar_msgs/RlMonTxGainPhaMisRep")
(setf (get radar_msgs::RlMonTxGainPhaMisRep :definition-)
      "uint16      statusFlags
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
")



(provide :radar_msgs/RlMonTxGainPhaMisRep "f27f6ab37b6066abd149c07bb608a4d9")


