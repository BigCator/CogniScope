; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude ProcessStatus.msg.html

(cl:defclass <ProcessStatus> (roslisp-msg-protocol:ros-message)
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
   (captureTime
    :reader captureTime
    :initarg :captureTime
    :type cl:float
    :initform 0.0)
   (frameLostCnt
    :reader frameLostCnt
    :initarg :frameLostCnt
    :type cl:integer
    :initform 0)
   (adcErrCnt
    :reader adcErrCnt
    :initarg :adcErrCnt
    :type cl:integer
    :initform 0)
   (reserved_a
    :reader reserved_a
    :initarg :reserved_a
    :type cl:integer
    :initform 0)
   (reserved_b
    :reader reserved_b
    :initarg :reserved_b
    :type cl:integer
    :initform 0)
   (time1DFFT
    :reader time1DFFT
    :initarg :time1DFFT
    :type cl:float
    :initform 0.0)
   (reserved_c
    :reader reserved_c
    :initarg :reserved_c
    :type cl:integer
    :initform 0)
   (reserved_d
    :reader reserved_d
    :initarg :reserved_d
    :type cl:integer
    :initform 0)
   (reserved_e
    :reader reserved_e
    :initarg :reserved_e
    :type cl:integer
    :initform 0)
   (reserved_f
    :reader reserved_f
    :initarg :reserved_f
    :type cl:integer
    :initform 0)
   (time2DFFT
    :reader time2DFFT
    :initarg :time2DFFT
    :type cl:float
    :initform 0.0)
   (reserved_g
    :reader reserved_g
    :initarg :reserved_g
    :type cl:integer
    :initform 0)
   (reserved_h
    :reader reserved_h
    :initarg :reserved_h
    :type cl:integer
    :initform 0)
   (reserved_i
    :reader reserved_i
    :initarg :reserved_i
    :type cl:integer
    :initform 0)
   (reserved_j
    :reader reserved_j
    :initarg :reserved_j
    :type cl:integer
    :initform 0)
   (timeRDMap
    :reader timeRDMap
    :initarg :timeRDMap
    :type cl:float
    :initform 0.0)
   (reserved_k
    :reader reserved_k
    :initarg :reserved_k
    :type cl:integer
    :initform 0)
   (reserved_l
    :reader reserved_l
    :initarg :reserved_l
    :type cl:integer
    :initform 0)
   (reserved_m
    :reader reserved_m
    :initarg :reserved_m
    :type cl:integer
    :initform 0)
   (reserved_n
    :reader reserved_n
    :initarg :reserved_n
    :type cl:integer
    :initform 0)
   (timeCfar
    :reader timeCfar
    :initarg :timeCfar
    :type cl:float
    :initform 0.0)
   (reserved_o
    :reader reserved_o
    :initarg :reserved_o
    :type cl:integer
    :initform 0)
   (reserved_p
    :reader reserved_p
    :initarg :reserved_p
    :type cl:integer
    :initform 0)
   (reserved_q
    :reader reserved_q
    :initarg :reserved_q
    :type cl:integer
    :initform 0)
   (reserved_r
    :reader reserved_r
    :initarg :reserved_r
    :type cl:integer
    :initform 0)
   (timeDOA
    :reader timeDOA
    :initarg :timeDOA
    :type cl:float
    :initform 0.0)
   (reserved_s
    :reader reserved_s
    :initarg :reserved_s
    :type cl:integer
    :initform 0)
   (reserved_t
    :reader reserved_t
    :initarg :reserved_t
    :type cl:integer
    :initform 0)
   (reserved_u
    :reader reserved_u
    :initarg :reserved_u
    :type cl:integer
    :initform 0)
   (reserved_v
    :reader reserved_v
    :initarg :reserved_v
    :type cl:integer
    :initform 0)
   (timePCL
    :reader timePCL
    :initarg :timePCL
    :type cl:float
    :initform 0.0)
   (reserved_w
    :reader reserved_w
    :initarg :reserved_w
    :type cl:integer
    :initform 0)
   (reserved_x
    :reader reserved_x
    :initarg :reserved_x
    :type cl:integer
    :initform 0)
   (reserved_y
    :reader reserved_y
    :initarg :reserved_y
    :type cl:integer
    :initform 0)
   (reserved_z
    :reader reserved_z
    :initarg :reserved_z
    :type cl:integer
    :initform 0)
   (timeOD
    :reader timeOD
    :initarg :timeOD
    :type cl:float
    :initform 0.0)
   (odTimeoutCnt
    :reader odTimeoutCnt
    :initarg :odTimeoutCnt
    :type cl:integer
    :initform 0)
   (selfCaliStatus
    :reader selfCaliStatus
    :initarg :selfCaliStatus
    :type cl:integer
    :initform 0)
   (reserved_aa
    :reader reserved_aa
    :initarg :reserved_aa
    :type cl:integer
    :initform 0)
   (reserved_ab
    :reader reserved_ab
    :initarg :reserved_ab
    :type cl:integer
    :initform 0)
   (reserved_ac
    :reader reserved_ac
    :initarg :reserved_ac
    :type cl:integer
    :initform 0)
   (reserved_ad
    :reader reserved_ad
    :initarg :reserved_ad
    :type cl:integer
    :initform 0))
)

(cl:defclass ProcessStatus (<ProcessStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<ProcessStatus> is deprecated: use radar_msgs-msg:ProcessStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:header-val is deprecated.  Use radar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarID-val :lambda-list '(m))
(cl:defmethod radarID-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:radarID-val is deprecated.  Use radar_msgs-msg:radarID instead.")
  (radarID m))

(cl:ensure-generic-function 'frameCnt-val :lambda-list '(m))
(cl:defmethod frameCnt-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameCnt-val is deprecated.  Use radar_msgs-msg:frameCnt instead.")
  (frameCnt m))

(cl:ensure-generic-function 'captureTime-val :lambda-list '(m))
(cl:defmethod captureTime-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:captureTime-val is deprecated.  Use radar_msgs-msg:captureTime instead.")
  (captureTime m))

(cl:ensure-generic-function 'frameLostCnt-val :lambda-list '(m))
(cl:defmethod frameLostCnt-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:frameLostCnt-val is deprecated.  Use radar_msgs-msg:frameLostCnt instead.")
  (frameLostCnt m))

(cl:ensure-generic-function 'adcErrCnt-val :lambda-list '(m))
(cl:defmethod adcErrCnt-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:adcErrCnt-val is deprecated.  Use radar_msgs-msg:adcErrCnt instead.")
  (adcErrCnt m))

(cl:ensure-generic-function 'reserved_a-val :lambda-list '(m))
(cl:defmethod reserved_a-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_a-val is deprecated.  Use radar_msgs-msg:reserved_a instead.")
  (reserved_a m))

(cl:ensure-generic-function 'reserved_b-val :lambda-list '(m))
(cl:defmethod reserved_b-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_b-val is deprecated.  Use radar_msgs-msg:reserved_b instead.")
  (reserved_b m))

(cl:ensure-generic-function 'time1DFFT-val :lambda-list '(m))
(cl:defmethod time1DFFT-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:time1DFFT-val is deprecated.  Use radar_msgs-msg:time1DFFT instead.")
  (time1DFFT m))

(cl:ensure-generic-function 'reserved_c-val :lambda-list '(m))
(cl:defmethod reserved_c-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_c-val is deprecated.  Use radar_msgs-msg:reserved_c instead.")
  (reserved_c m))

(cl:ensure-generic-function 'reserved_d-val :lambda-list '(m))
(cl:defmethod reserved_d-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_d-val is deprecated.  Use radar_msgs-msg:reserved_d instead.")
  (reserved_d m))

(cl:ensure-generic-function 'reserved_e-val :lambda-list '(m))
(cl:defmethod reserved_e-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_e-val is deprecated.  Use radar_msgs-msg:reserved_e instead.")
  (reserved_e m))

(cl:ensure-generic-function 'reserved_f-val :lambda-list '(m))
(cl:defmethod reserved_f-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_f-val is deprecated.  Use radar_msgs-msg:reserved_f instead.")
  (reserved_f m))

(cl:ensure-generic-function 'time2DFFT-val :lambda-list '(m))
(cl:defmethod time2DFFT-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:time2DFFT-val is deprecated.  Use radar_msgs-msg:time2DFFT instead.")
  (time2DFFT m))

(cl:ensure-generic-function 'reserved_g-val :lambda-list '(m))
(cl:defmethod reserved_g-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_g-val is deprecated.  Use radar_msgs-msg:reserved_g instead.")
  (reserved_g m))

(cl:ensure-generic-function 'reserved_h-val :lambda-list '(m))
(cl:defmethod reserved_h-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_h-val is deprecated.  Use radar_msgs-msg:reserved_h instead.")
  (reserved_h m))

(cl:ensure-generic-function 'reserved_i-val :lambda-list '(m))
(cl:defmethod reserved_i-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_i-val is deprecated.  Use radar_msgs-msg:reserved_i instead.")
  (reserved_i m))

(cl:ensure-generic-function 'reserved_j-val :lambda-list '(m))
(cl:defmethod reserved_j-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_j-val is deprecated.  Use radar_msgs-msg:reserved_j instead.")
  (reserved_j m))

(cl:ensure-generic-function 'timeRDMap-val :lambda-list '(m))
(cl:defmethod timeRDMap-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeRDMap-val is deprecated.  Use radar_msgs-msg:timeRDMap instead.")
  (timeRDMap m))

(cl:ensure-generic-function 'reserved_k-val :lambda-list '(m))
(cl:defmethod reserved_k-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_k-val is deprecated.  Use radar_msgs-msg:reserved_k instead.")
  (reserved_k m))

(cl:ensure-generic-function 'reserved_l-val :lambda-list '(m))
(cl:defmethod reserved_l-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_l-val is deprecated.  Use radar_msgs-msg:reserved_l instead.")
  (reserved_l m))

(cl:ensure-generic-function 'reserved_m-val :lambda-list '(m))
(cl:defmethod reserved_m-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_m-val is deprecated.  Use radar_msgs-msg:reserved_m instead.")
  (reserved_m m))

(cl:ensure-generic-function 'reserved_n-val :lambda-list '(m))
(cl:defmethod reserved_n-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_n-val is deprecated.  Use radar_msgs-msg:reserved_n instead.")
  (reserved_n m))

(cl:ensure-generic-function 'timeCfar-val :lambda-list '(m))
(cl:defmethod timeCfar-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeCfar-val is deprecated.  Use radar_msgs-msg:timeCfar instead.")
  (timeCfar m))

(cl:ensure-generic-function 'reserved_o-val :lambda-list '(m))
(cl:defmethod reserved_o-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_o-val is deprecated.  Use radar_msgs-msg:reserved_o instead.")
  (reserved_o m))

(cl:ensure-generic-function 'reserved_p-val :lambda-list '(m))
(cl:defmethod reserved_p-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_p-val is deprecated.  Use radar_msgs-msg:reserved_p instead.")
  (reserved_p m))

(cl:ensure-generic-function 'reserved_q-val :lambda-list '(m))
(cl:defmethod reserved_q-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_q-val is deprecated.  Use radar_msgs-msg:reserved_q instead.")
  (reserved_q m))

(cl:ensure-generic-function 'reserved_r-val :lambda-list '(m))
(cl:defmethod reserved_r-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_r-val is deprecated.  Use radar_msgs-msg:reserved_r instead.")
  (reserved_r m))

(cl:ensure-generic-function 'timeDOA-val :lambda-list '(m))
(cl:defmethod timeDOA-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeDOA-val is deprecated.  Use radar_msgs-msg:timeDOA instead.")
  (timeDOA m))

(cl:ensure-generic-function 'reserved_s-val :lambda-list '(m))
(cl:defmethod reserved_s-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_s-val is deprecated.  Use radar_msgs-msg:reserved_s instead.")
  (reserved_s m))

(cl:ensure-generic-function 'reserved_t-val :lambda-list '(m))
(cl:defmethod reserved_t-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_t-val is deprecated.  Use radar_msgs-msg:reserved_t instead.")
  (reserved_t m))

(cl:ensure-generic-function 'reserved_u-val :lambda-list '(m))
(cl:defmethod reserved_u-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_u-val is deprecated.  Use radar_msgs-msg:reserved_u instead.")
  (reserved_u m))

(cl:ensure-generic-function 'reserved_v-val :lambda-list '(m))
(cl:defmethod reserved_v-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_v-val is deprecated.  Use radar_msgs-msg:reserved_v instead.")
  (reserved_v m))

(cl:ensure-generic-function 'timePCL-val :lambda-list '(m))
(cl:defmethod timePCL-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timePCL-val is deprecated.  Use radar_msgs-msg:timePCL instead.")
  (timePCL m))

(cl:ensure-generic-function 'reserved_w-val :lambda-list '(m))
(cl:defmethod reserved_w-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_w-val is deprecated.  Use radar_msgs-msg:reserved_w instead.")
  (reserved_w m))

(cl:ensure-generic-function 'reserved_x-val :lambda-list '(m))
(cl:defmethod reserved_x-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_x-val is deprecated.  Use radar_msgs-msg:reserved_x instead.")
  (reserved_x m))

(cl:ensure-generic-function 'reserved_y-val :lambda-list '(m))
(cl:defmethod reserved_y-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_y-val is deprecated.  Use radar_msgs-msg:reserved_y instead.")
  (reserved_y m))

(cl:ensure-generic-function 'reserved_z-val :lambda-list '(m))
(cl:defmethod reserved_z-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_z-val is deprecated.  Use radar_msgs-msg:reserved_z instead.")
  (reserved_z m))

(cl:ensure-generic-function 'timeOD-val :lambda-list '(m))
(cl:defmethod timeOD-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:timeOD-val is deprecated.  Use radar_msgs-msg:timeOD instead.")
  (timeOD m))

(cl:ensure-generic-function 'odTimeoutCnt-val :lambda-list '(m))
(cl:defmethod odTimeoutCnt-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:odTimeoutCnt-val is deprecated.  Use radar_msgs-msg:odTimeoutCnt instead.")
  (odTimeoutCnt m))

(cl:ensure-generic-function 'selfCaliStatus-val :lambda-list '(m))
(cl:defmethod selfCaliStatus-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:selfCaliStatus-val is deprecated.  Use radar_msgs-msg:selfCaliStatus instead.")
  (selfCaliStatus m))

(cl:ensure-generic-function 'reserved_aa-val :lambda-list '(m))
(cl:defmethod reserved_aa-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_aa-val is deprecated.  Use radar_msgs-msg:reserved_aa instead.")
  (reserved_aa m))

(cl:ensure-generic-function 'reserved_ab-val :lambda-list '(m))
(cl:defmethod reserved_ab-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_ab-val is deprecated.  Use radar_msgs-msg:reserved_ab instead.")
  (reserved_ab m))

(cl:ensure-generic-function 'reserved_ac-val :lambda-list '(m))
(cl:defmethod reserved_ac-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_ac-val is deprecated.  Use radar_msgs-msg:reserved_ac instead.")
  (reserved_ac m))

(cl:ensure-generic-function 'reserved_ad-val :lambda-list '(m))
(cl:defmethod reserved_ad-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:reserved_ad-val is deprecated.  Use radar_msgs-msg:reserved_ad instead.")
  (reserved_ad m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessStatus>) ostream)
  "Serializes a message object of type '<ProcessStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'captureTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameLostCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'adcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'adcErrCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_b)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time1DFFT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_e)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_f)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_f)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_f)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_f)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time2DFFT))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_i)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_j)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeRDMap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_k)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_k)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_k)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_k)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_m)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_m)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_m)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_m)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_n)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_n)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_n)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_n)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeCfar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_o)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_o)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_o)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_o)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_p)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_q)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_q)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_q)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_q)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_r)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeDOA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_s)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_s)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_s)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_s)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_t)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_t)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_t)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_t)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_u)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_u)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_u)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_u)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_v)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_v)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timePCL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_z)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeOD))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'odTimeoutCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'odTimeoutCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'odTimeoutCnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'odTimeoutCnt)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'selfCaliStatus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_aa)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_aa)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_aa)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_aa)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_ab)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_ab)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_ab)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_ab)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_ac)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_ac)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_ac)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_ac)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_ad)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_ad)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_ad)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_ad)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessStatus>) istream)
  "Deserializes a message object of type '<ProcessStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radarID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameCnt)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'captureTime) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frameLostCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'adcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'adcErrCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_b)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time1DFFT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_e)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_f)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_f)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_f)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_f)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time2DFFT) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_j)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeRDMap) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_k)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_k)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_k)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_k)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_m)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_m)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_m)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_m)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_n)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_n)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_n)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_n)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeCfar) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_o)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_o)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_o)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_o)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_p)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_q)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_q)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_q)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_q)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_r)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeDOA) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_s)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_s)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_s)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_s)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_t)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_t)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_t)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_t)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_u)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_u)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_u)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_u)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_v)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_v)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timePCL) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_z)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeOD) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'odTimeoutCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'odTimeoutCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'odTimeoutCnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'odTimeoutCnt)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'selfCaliStatus) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_aa)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_aa)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_aa)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_aa)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_ab)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_ab)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_ab)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_ab)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_ac)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_ac)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_ac)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_ac)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved_ad)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved_ad)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved_ad)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved_ad)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessStatus>)))
  "Returns string type for a message object of type '<ProcessStatus>"
  "radar_msgs/ProcessStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessStatus)))
  "Returns string type for a message object of type 'ProcessStatus"
  "radar_msgs/ProcessStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessStatus>)))
  "Returns md5sum for a message object of type '<ProcessStatus>"
  "3b68402e7d30a9e6144470a4717d74aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessStatus)))
  "Returns md5sum for a message object of type 'ProcessStatus"
  "3b68402e7d30a9e6144470a4717d74aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessStatus>)))
  "Returns full string definition for message of type '<ProcessStatus>"
  (cl:format cl:nil "Header header                   # Includes measurement timestamp and coordinate frame.~%uint32 radarID                  # radar ID~%uint32 frameCnt                 # frame cnt in radar~%float32 captureTime              # LSB=ms~%uint32 frameLostCnt             ~%uint32 adcErrCnt       ~%uint32 reserved_a~%uint32 reserved_b~%float32 time1DFFT                # LSB=ms~%uint32 reserved_c~%uint32 reserved_d~%uint32 reserved_e~%uint32 reserved_f~%float32 time2DFFT                # LSB=ms~%uint32 reserved_g~%uint32 reserved_h~%uint32 reserved_i~%uint32 reserved_j~%float32 timeRDMap                # LSB=ms~%uint32 reserved_k~%uint32 reserved_l~%uint32 reserved_m~%uint32 reserved_n~%float32 timeCfar                 # LSB=ms~%uint32 reserved_o~%uint32 reserved_p~%uint32 reserved_q~%uint32 reserved_r~%float32 timeDOA                  # LSB=ms~%uint32 reserved_s~%uint32 reserved_t~%uint32 reserved_u~%uint32 reserved_v~%float32 timePCL                  # LSB=ms~%uint32 reserved_w                # velocity Estimated~%uint32 reserved_x                # ground K~%uint32 reserved_y                # ground B~%uint32 reserved_z                # pcl delay time, LSB = 0.1ms~%float32 timeOD                   # LSB=ms~%uint32 odTimeoutCnt             ~%int32  selfCaliStatus           # 0: cali fails; 1: pre-cali; 1~~99: calibrating(in process); 100: cali success~%uint32 reserved_aa              # od delay time, LSB = 0.1ms~%uint32 reserved_ab~%uint32 reserved_ac~%uint32 reserved_ad~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessStatus)))
  "Returns full string definition for message of type 'ProcessStatus"
  (cl:format cl:nil "Header header                   # Includes measurement timestamp and coordinate frame.~%uint32 radarID                  # radar ID~%uint32 frameCnt                 # frame cnt in radar~%float32 captureTime              # LSB=ms~%uint32 frameLostCnt             ~%uint32 adcErrCnt       ~%uint32 reserved_a~%uint32 reserved_b~%float32 time1DFFT                # LSB=ms~%uint32 reserved_c~%uint32 reserved_d~%uint32 reserved_e~%uint32 reserved_f~%float32 time2DFFT                # LSB=ms~%uint32 reserved_g~%uint32 reserved_h~%uint32 reserved_i~%uint32 reserved_j~%float32 timeRDMap                # LSB=ms~%uint32 reserved_k~%uint32 reserved_l~%uint32 reserved_m~%uint32 reserved_n~%float32 timeCfar                 # LSB=ms~%uint32 reserved_o~%uint32 reserved_p~%uint32 reserved_q~%uint32 reserved_r~%float32 timeDOA                  # LSB=ms~%uint32 reserved_s~%uint32 reserved_t~%uint32 reserved_u~%uint32 reserved_v~%float32 timePCL                  # LSB=ms~%uint32 reserved_w                # velocity Estimated~%uint32 reserved_x                # ground K~%uint32 reserved_y                # ground B~%uint32 reserved_z                # pcl delay time, LSB = 0.1ms~%float32 timeOD                   # LSB=ms~%uint32 odTimeoutCnt             ~%int32  selfCaliStatus           # 0: cali fails; 1: pre-cali; 1~~99: calibrating(in process); 100: cali success~%uint32 reserved_aa              # od delay time, LSB = 0.1ms~%uint32 reserved_ab~%uint32 reserved_ac~%uint32 reserved_ad~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessStatus
    (cl:cons ':header (header msg))
    (cl:cons ':radarID (radarID msg))
    (cl:cons ':frameCnt (frameCnt msg))
    (cl:cons ':captureTime (captureTime msg))
    (cl:cons ':frameLostCnt (frameLostCnt msg))
    (cl:cons ':adcErrCnt (adcErrCnt msg))
    (cl:cons ':reserved_a (reserved_a msg))
    (cl:cons ':reserved_b (reserved_b msg))
    (cl:cons ':time1DFFT (time1DFFT msg))
    (cl:cons ':reserved_c (reserved_c msg))
    (cl:cons ':reserved_d (reserved_d msg))
    (cl:cons ':reserved_e (reserved_e msg))
    (cl:cons ':reserved_f (reserved_f msg))
    (cl:cons ':time2DFFT (time2DFFT msg))
    (cl:cons ':reserved_g (reserved_g msg))
    (cl:cons ':reserved_h (reserved_h msg))
    (cl:cons ':reserved_i (reserved_i msg))
    (cl:cons ':reserved_j (reserved_j msg))
    (cl:cons ':timeRDMap (timeRDMap msg))
    (cl:cons ':reserved_k (reserved_k msg))
    (cl:cons ':reserved_l (reserved_l msg))
    (cl:cons ':reserved_m (reserved_m msg))
    (cl:cons ':reserved_n (reserved_n msg))
    (cl:cons ':timeCfar (timeCfar msg))
    (cl:cons ':reserved_o (reserved_o msg))
    (cl:cons ':reserved_p (reserved_p msg))
    (cl:cons ':reserved_q (reserved_q msg))
    (cl:cons ':reserved_r (reserved_r msg))
    (cl:cons ':timeDOA (timeDOA msg))
    (cl:cons ':reserved_s (reserved_s msg))
    (cl:cons ':reserved_t (reserved_t msg))
    (cl:cons ':reserved_u (reserved_u msg))
    (cl:cons ':reserved_v (reserved_v msg))
    (cl:cons ':timePCL (timePCL msg))
    (cl:cons ':reserved_w (reserved_w msg))
    (cl:cons ':reserved_x (reserved_x msg))
    (cl:cons ':reserved_y (reserved_y msg))
    (cl:cons ':reserved_z (reserved_z msg))
    (cl:cons ':timeOD (timeOD msg))
    (cl:cons ':odTimeoutCnt (odTimeoutCnt msg))
    (cl:cons ':selfCaliStatus (selfCaliStatus msg))
    (cl:cons ':reserved_aa (reserved_aa msg))
    (cl:cons ':reserved_ab (reserved_ab msg))
    (cl:cons ':reserved_ac (reserved_ac msg))
    (cl:cons ':reserved_ad (reserved_ad msg))
))
