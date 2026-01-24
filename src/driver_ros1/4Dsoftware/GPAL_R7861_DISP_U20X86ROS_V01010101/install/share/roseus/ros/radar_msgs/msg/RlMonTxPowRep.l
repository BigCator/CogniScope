;; Auto-generated. Do not edit!


(when (boundp 'radar_msgs::RlMonTxPowRep)
  (if (not (find-package "RADAR_MSGS"))
    (make-package "RADAR_MSGS"))
  (shadow 'RlMonTxPowRep (find-package "RADAR_MSGS")))
(unless (find-package "RADAR_MSGS::RLMONTXPOWREP")
  (make-package "RADAR_MSGS::RLMONTXPOWREP"))

(in-package "ROS")
;;//! \htmlinclude RlMonTxPowRep.msg.html


(defclass radar_msgs::RlMonTxPowRep
  :super ros::object
  :slots (_statusFlags _errorCode _profIndex _reserved0 _reserved1 _txPowVal _reserved2 _timeStamp ))

(defmethod radar_msgs::RlMonTxPowRep
  (:init
   (&key
    ((:statusFlags __statusFlags) 0)
    ((:errorCode __errorCode) 0)
    ((:profIndex __profIndex) 0)
    ((:reserved0 __reserved0) 0)
    ((:reserved1 __reserved1) 0)
    ((:txPowVal __txPowVal) (make-array 3 :initial-element 0 :element-type :integer))
    ((:reserved2 __reserved2) 0)
    ((:timeStamp __timeStamp) 0)
    )
   (send-super :init)
   (setq _statusFlags (round __statusFlags))
   (setq _errorCode (round __errorCode))
   (setq _profIndex (round __profIndex))
   (setq _reserved0 (round __reserved0))
   (setq _reserved1 (round __reserved1))
   (setq _txPowVal __txPowVal)
   (setq _reserved2 (round __reserved2))
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
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:txPowVal
   (&optional __txPowVal)
   (if __txPowVal (setq _txPowVal __txPowVal)) _txPowVal)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
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
    ;; uint16 _reserved1
    2
    ;; int16[3] _txPowVal
    (* 2    3)
    ;; uint16 _reserved2
    2
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
     ;; uint16 _reserved1
       (write-word _reserved1 s)
     ;; int16[3] _txPowVal
     (dotimes (i 3)
       (write-word (elt _txPowVal i) s)
       )
     ;; uint16 _reserved2
       (write-word _reserved2 s)
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
   ;; uint16 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[3] _txPowVal
   (dotimes (i (length _txPowVal))
     (setf (elt _txPowVal i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint16 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get radar_msgs::RlMonTxPowRep :md5sum-) "d0d799de826b753746c1db7855f6cc65")
(setf (get radar_msgs::RlMonTxPowRep :datatype-) "radar_msgs/RlMonTxPowRep")
(setf (get radar_msgs::RlMonTxPowRep :definition-)
      "uint16   statusFlags
uint16   errorCode
uint8    profIndex
uint8    reserved0
uint16   reserved1
int16[3] txPowVal
uint16   reserved2
uint32   timeStamp
")



(provide :radar_msgs/RlMonTxPowRep "d0d799de826b753746c1db7855f6cc65")


