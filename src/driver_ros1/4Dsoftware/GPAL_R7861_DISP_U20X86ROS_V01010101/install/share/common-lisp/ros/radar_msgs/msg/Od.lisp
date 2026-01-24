; Auto-generated. Do not edit!


(cl:in-package radar_msgs-msg)


;//! \htmlinclude Od.msg.html

(cl:defclass <Od> (roslisp-msg-protocol:ros-message)
  ((object_ID
    :reader object_ID
    :initarg :object_ID
    :type cl:integer
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (measurement_status
    :reader measurement_status
    :initarg :measurement_status
    :type cl:fixnum
    :initform 0)
   (motion_state
    :reader motion_state
    :initarg :motion_state
    :type cl:fixnum
    :initform 0)
   (existance_confidence
    :reader existance_confidence
    :initarg :existance_confidence
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (v2ground
    :reader v2ground
    :initarg :v2ground
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (pose_nearest
    :reader pose_nearest
    :initarg :pose_nearest
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (car_confidence
    :reader car_confidence
    :initarg :car_confidence
    :type cl:fixnum
    :initform 0)
   (bike_confidence
    :reader bike_confidence
    :initarg :bike_confidence
    :type cl:fixnum
    :initform 0)
   (ped_confidence
    :reader ped_confidence
    :initarg :ped_confidence
    :type cl:fixnum
    :initform 0)
   (truck_confidence
    :reader truck_confidence
    :initarg :truck_confidence
    :type cl:fixnum
    :initform 0)
   (signboard_confidence
    :reader signboard_confidence
    :initarg :signboard_confidence
    :type cl:fixnum
    :initform 0)
   (ground_confidence
    :reader ground_confidence
    :initarg :ground_confidence
    :type cl:fixnum
    :initform 0)
   (obstacle_confidence
    :reader obstacle_confidence
    :initarg :obstacle_confidence
    :type cl:fixnum
    :initform 0)
   (EnrollPtsNum
    :reader EnrollPtsNum
    :initarg :EnrollPtsNum
    :type cl:float
    :initform 0.0)
   (NearestPtsX
    :reader NearestPtsX
    :initarg :NearestPtsX
    :type cl:float
    :initform 0.0)
   (NearestPtsY
    :reader NearestPtsY
    :initarg :NearestPtsY
    :type cl:float
    :initform 0.0)
   (NearestPtsZ
    :reader NearestPtsZ
    :initarg :NearestPtsZ
    :type cl:float
    :initform 0.0)
   (Reserved_D
    :reader Reserved_D
    :initarg :Reserved_D
    :type cl:float
    :initform 0.0)
   (Reserved_E
    :reader Reserved_E
    :initarg :Reserved_E
    :type cl:integer
    :initform 0)
   (Reserved_F
    :reader Reserved_F
    :initarg :Reserved_F
    :type cl:integer
    :initform 0)
   (Reserved_G
    :reader Reserved_G
    :initarg :Reserved_G
    :type cl:integer
    :initform 0)
   (Reserved_H
    :reader Reserved_H
    :initarg :Reserved_H
    :type cl:integer
    :initform 0)
   (Reserved_I
    :reader Reserved_I
    :initarg :Reserved_I
    :type cl:fixnum
    :initform 0)
   (Reserved_J
    :reader Reserved_J
    :initarg :Reserved_J
    :type cl:fixnum
    :initform 0)
   (Reserved_K
    :reader Reserved_K
    :initarg :Reserved_K
    :type cl:fixnum
    :initform 0)
   (Reserved_L
    :reader Reserved_L
    :initarg :Reserved_L
    :type cl:fixnum
    :initform 0)
   (Reserved_M
    :reader Reserved_M
    :initarg :Reserved_M
    :type cl:fixnum
    :initform 0)
   (Reserved_N
    :reader Reserved_N
    :initarg :Reserved_N
    :type cl:fixnum
    :initform 0)
   (Reserved_O
    :reader Reserved_O
    :initarg :Reserved_O
    :type cl:string
    :initform "")
   (Reserved_P
    :reader Reserved_P
    :initarg :Reserved_P
    :type cl:string
    :initform ""))
)

(cl:defclass Od (<Od>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Od>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Od)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_msgs-msg:<Od> is deprecated: use radar_msgs-msg:Od instead.")))

(cl:ensure-generic-function 'object_ID-val :lambda-list '(m))
(cl:defmethod object_ID-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:object_ID-val is deprecated.  Use radar_msgs-msg:object_ID instead.")
  (object_ID m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:age-val is deprecated.  Use radar_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'measurement_status-val :lambda-list '(m))
(cl:defmethod measurement_status-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:measurement_status-val is deprecated.  Use radar_msgs-msg:measurement_status instead.")
  (measurement_status m))

(cl:ensure-generic-function 'motion_state-val :lambda-list '(m))
(cl:defmethod motion_state-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:motion_state-val is deprecated.  Use radar_msgs-msg:motion_state instead.")
  (motion_state m))

(cl:ensure-generic-function 'existance_confidence-val :lambda-list '(m))
(cl:defmethod existance_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:existance_confidence-val is deprecated.  Use radar_msgs-msg:existance_confidence instead.")
  (existance_confidence m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:pose-val is deprecated.  Use radar_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:dimensions-val is deprecated.  Use radar_msgs-msg:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:velocity-val is deprecated.  Use radar_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:acceleration-val is deprecated.  Use radar_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'v2ground-val :lambda-list '(m))
(cl:defmethod v2ground-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:v2ground-val is deprecated.  Use radar_msgs-msg:v2ground instead.")
  (v2ground m))

(cl:ensure-generic-function 'pose_nearest-val :lambda-list '(m))
(cl:defmethod pose_nearest-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:pose_nearest-val is deprecated.  Use radar_msgs-msg:pose_nearest instead.")
  (pose_nearest m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:type-val is deprecated.  Use radar_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'car_confidence-val :lambda-list '(m))
(cl:defmethod car_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:car_confidence-val is deprecated.  Use radar_msgs-msg:car_confidence instead.")
  (car_confidence m))

(cl:ensure-generic-function 'bike_confidence-val :lambda-list '(m))
(cl:defmethod bike_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:bike_confidence-val is deprecated.  Use radar_msgs-msg:bike_confidence instead.")
  (bike_confidence m))

(cl:ensure-generic-function 'ped_confidence-val :lambda-list '(m))
(cl:defmethod ped_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ped_confidence-val is deprecated.  Use radar_msgs-msg:ped_confidence instead.")
  (ped_confidence m))

(cl:ensure-generic-function 'truck_confidence-val :lambda-list '(m))
(cl:defmethod truck_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:truck_confidence-val is deprecated.  Use radar_msgs-msg:truck_confidence instead.")
  (truck_confidence m))

(cl:ensure-generic-function 'signboard_confidence-val :lambda-list '(m))
(cl:defmethod signboard_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:signboard_confidence-val is deprecated.  Use radar_msgs-msg:signboard_confidence instead.")
  (signboard_confidence m))

(cl:ensure-generic-function 'ground_confidence-val :lambda-list '(m))
(cl:defmethod ground_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:ground_confidence-val is deprecated.  Use radar_msgs-msg:ground_confidence instead.")
  (ground_confidence m))

(cl:ensure-generic-function 'obstacle_confidence-val :lambda-list '(m))
(cl:defmethod obstacle_confidence-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:obstacle_confidence-val is deprecated.  Use radar_msgs-msg:obstacle_confidence instead.")
  (obstacle_confidence m))

(cl:ensure-generic-function 'EnrollPtsNum-val :lambda-list '(m))
(cl:defmethod EnrollPtsNum-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:EnrollPtsNum-val is deprecated.  Use radar_msgs-msg:EnrollPtsNum instead.")
  (EnrollPtsNum m))

(cl:ensure-generic-function 'NearestPtsX-val :lambda-list '(m))
(cl:defmethod NearestPtsX-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:NearestPtsX-val is deprecated.  Use radar_msgs-msg:NearestPtsX instead.")
  (NearestPtsX m))

(cl:ensure-generic-function 'NearestPtsY-val :lambda-list '(m))
(cl:defmethod NearestPtsY-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:NearestPtsY-val is deprecated.  Use radar_msgs-msg:NearestPtsY instead.")
  (NearestPtsY m))

(cl:ensure-generic-function 'NearestPtsZ-val :lambda-list '(m))
(cl:defmethod NearestPtsZ-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:NearestPtsZ-val is deprecated.  Use radar_msgs-msg:NearestPtsZ instead.")
  (NearestPtsZ m))

(cl:ensure-generic-function 'Reserved_D-val :lambda-list '(m))
(cl:defmethod Reserved_D-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_D-val is deprecated.  Use radar_msgs-msg:Reserved_D instead.")
  (Reserved_D m))

(cl:ensure-generic-function 'Reserved_E-val :lambda-list '(m))
(cl:defmethod Reserved_E-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_E-val is deprecated.  Use radar_msgs-msg:Reserved_E instead.")
  (Reserved_E m))

(cl:ensure-generic-function 'Reserved_F-val :lambda-list '(m))
(cl:defmethod Reserved_F-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_F-val is deprecated.  Use radar_msgs-msg:Reserved_F instead.")
  (Reserved_F m))

(cl:ensure-generic-function 'Reserved_G-val :lambda-list '(m))
(cl:defmethod Reserved_G-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_G-val is deprecated.  Use radar_msgs-msg:Reserved_G instead.")
  (Reserved_G m))

(cl:ensure-generic-function 'Reserved_H-val :lambda-list '(m))
(cl:defmethod Reserved_H-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_H-val is deprecated.  Use radar_msgs-msg:Reserved_H instead.")
  (Reserved_H m))

(cl:ensure-generic-function 'Reserved_I-val :lambda-list '(m))
(cl:defmethod Reserved_I-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_I-val is deprecated.  Use radar_msgs-msg:Reserved_I instead.")
  (Reserved_I m))

(cl:ensure-generic-function 'Reserved_J-val :lambda-list '(m))
(cl:defmethod Reserved_J-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_J-val is deprecated.  Use radar_msgs-msg:Reserved_J instead.")
  (Reserved_J m))

(cl:ensure-generic-function 'Reserved_K-val :lambda-list '(m))
(cl:defmethod Reserved_K-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_K-val is deprecated.  Use radar_msgs-msg:Reserved_K instead.")
  (Reserved_K m))

(cl:ensure-generic-function 'Reserved_L-val :lambda-list '(m))
(cl:defmethod Reserved_L-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_L-val is deprecated.  Use radar_msgs-msg:Reserved_L instead.")
  (Reserved_L m))

(cl:ensure-generic-function 'Reserved_M-val :lambda-list '(m))
(cl:defmethod Reserved_M-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_M-val is deprecated.  Use radar_msgs-msg:Reserved_M instead.")
  (Reserved_M m))

(cl:ensure-generic-function 'Reserved_N-val :lambda-list '(m))
(cl:defmethod Reserved_N-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_N-val is deprecated.  Use radar_msgs-msg:Reserved_N instead.")
  (Reserved_N m))

(cl:ensure-generic-function 'Reserved_O-val :lambda-list '(m))
(cl:defmethod Reserved_O-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_O-val is deprecated.  Use radar_msgs-msg:Reserved_O instead.")
  (Reserved_O m))

(cl:ensure-generic-function 'Reserved_P-val :lambda-list '(m))
(cl:defmethod Reserved_P-val ((m <Od>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_msgs-msg:Reserved_P-val is deprecated.  Use radar_msgs-msg:Reserved_P instead.")
  (Reserved_P m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Od>) ostream)
  "Serializes a message object of type '<Od>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'measurement_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'existance_confidence)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2ground) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_nearest) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bike_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ped_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'truck_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signboard_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ground_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_confidence)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'EnrollPtsNum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'NearestPtsX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'NearestPtsY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'NearestPtsZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Reserved_D))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_E)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_E)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved_E)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved_E)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_F)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_F)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved_F)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved_F)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Reserved_G)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Reserved_H)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_I)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_I)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_J)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_J)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Reserved_K)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Reserved_L)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_M)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_N)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Reserved_O))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Reserved_O))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Reserved_P))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Reserved_P))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Od>) istream)
  "Deserializes a message object of type '<Od>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'measurement_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'existance_confidence)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2ground) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_nearest) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'car_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bike_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ped_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'truck_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signboard_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ground_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacle_confidence)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EnrollPtsNum) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'NearestPtsX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'NearestPtsY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'NearestPtsZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Reserved_D) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_E)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_E)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved_E)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved_E)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_F)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_F)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved_F)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved_F)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reserved_G) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reserved_H) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_I)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_I)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_J)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved_J)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reserved_K) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reserved_L) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_M)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved_N)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reserved_O) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Reserved_O) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reserved_P) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Reserved_P) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Od>)))
  "Returns string type for a message object of type '<Od>"
  "radar_msgs/Od")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Od)))
  "Returns string type for a message object of type 'Od"
  "radar_msgs/Od")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Od>)))
  "Returns md5sum for a message object of type '<Od>"
  "8abbf365d0b04a773bf2e6d9a6dd7b7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Od)))
  "Returns md5sum for a message object of type 'Od"
  "8abbf365d0b04a773bf2e6d9a6dd7b7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Od>)))
  "Returns full string definition for message of type '<Od>"
  (cl:format cl:nil "# Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    object_ID            # object ID~%uint16    age                  # total frames from the object occurs~%uint8     measurement_status   # track status (0: measured; 1: new; 2: predicted)~%uint8     motion_state         # movement state ( 0: static; 1: dynamic)~%uint8     existance_confidence # existance confidence~%geometry_msgs/Pose              pose #central position x, y, z; roll=0, pitch=0, yaw to quaternion~%geometry_msgs/Vector3           dimensions #length, width, height~%geometry_msgs/Twist             velocity~%geometry_msgs/Twist             acceleration~%geometry_msgs/Twist             v2ground #velocity towards ground of x, y, z orientation~%geometry_msgs/Pose              pose_nearest #NearestPts x, y, z~%uint8     type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)~%uint8     car_confidence       # car confidence~%uint8     bike_confidence      # bike confidence~%uint8     ped_confidence       # pedestrian confidence~%uint8     truck_confidence     # truck confidence~%uint8     signboard_confidence # signboard confidence~%uint8     ground_confidence    # ground confidence~%uint8     obstacle_confidence  # obstacle confidence~%float32   EnrollPtsNum         # EnrollPtsNum~%float32   NearestPtsX          # NearestPtsX           ~%float32   NearestPtsY          # NearestPtsY~%float32   NearestPtsZ          # NearestPtsZ~%float32   Reserved_D  ~%uint32    Reserved_E          ~%uint32    Reserved_F           ~%int32     Reserved_G           ~%int32     Reserved_H    ~%uint16    Reserved_I   ~%uint16    Reserved_J    ~%int16     Reserved_K   ~%int16     Reserved_L ~%uint8     Reserved_M  ~%uint8     Reserved_N    ~%string    Reserved_O~%string    Reserved_P~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Od)))
  "Returns full string definition for message of type 'Od"
  (cl:format cl:nil "# Header    header               # Includes measurement timestamp and coordinate frame.~%uint32    object_ID            # object ID~%uint16    age                  # total frames from the object occurs~%uint8     measurement_status   # track status (0: measured; 1: new; 2: predicted)~%uint8     motion_state         # movement state ( 0: static; 1: dynamic)~%uint8     existance_confidence # existance confidence~%geometry_msgs/Pose              pose #central position x, y, z; roll=0, pitch=0, yaw to quaternion~%geometry_msgs/Vector3           dimensions #length, width, height~%geometry_msgs/Twist             velocity~%geometry_msgs/Twist             acceleration~%geometry_msgs/Twist             v2ground #velocity towards ground of x, y, z orientation~%geometry_msgs/Pose              pose_nearest #NearestPts x, y, z~%uint8     type                 # object type (（0: car 小型汽车; 1: bike 两轮车; 2: pedestrian 行人; 3: truck 大车; 4: signboard 高空物; 5: ground 地面; 6: obstacle 静态障碍物)~%uint8     car_confidence       # car confidence~%uint8     bike_confidence      # bike confidence~%uint8     ped_confidence       # pedestrian confidence~%uint8     truck_confidence     # truck confidence~%uint8     signboard_confidence # signboard confidence~%uint8     ground_confidence    # ground confidence~%uint8     obstacle_confidence  # obstacle confidence~%float32   EnrollPtsNum         # EnrollPtsNum~%float32   NearestPtsX          # NearestPtsX           ~%float32   NearestPtsY          # NearestPtsY~%float32   NearestPtsZ          # NearestPtsZ~%float32   Reserved_D  ~%uint32    Reserved_E          ~%uint32    Reserved_F           ~%int32     Reserved_G           ~%int32     Reserved_H    ~%uint16    Reserved_I   ~%uint16    Reserved_J    ~%int16     Reserved_K   ~%int16     Reserved_L ~%uint8     Reserved_M  ~%uint8     Reserved_N    ~%string    Reserved_O~%string    Reserved_P~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Od>))
  (cl:+ 0
     4
     2
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2ground))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_nearest))
     1
     1
     1
     1
     1
     1
     1
     1
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
     2
     2
     1
     1
     4 (cl:length (cl:slot-value msg 'Reserved_O))
     4 (cl:length (cl:slot-value msg 'Reserved_P))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Od>))
  "Converts a ROS message object to a list"
  (cl:list 'Od
    (cl:cons ':object_ID (object_ID msg))
    (cl:cons ':age (age msg))
    (cl:cons ':measurement_status (measurement_status msg))
    (cl:cons ':motion_state (motion_state msg))
    (cl:cons ':existance_confidence (existance_confidence msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':v2ground (v2ground msg))
    (cl:cons ':pose_nearest (pose_nearest msg))
    (cl:cons ':type (type msg))
    (cl:cons ':car_confidence (car_confidence msg))
    (cl:cons ':bike_confidence (bike_confidence msg))
    (cl:cons ':ped_confidence (ped_confidence msg))
    (cl:cons ':truck_confidence (truck_confidence msg))
    (cl:cons ':signboard_confidence (signboard_confidence msg))
    (cl:cons ':ground_confidence (ground_confidence msg))
    (cl:cons ':obstacle_confidence (obstacle_confidence msg))
    (cl:cons ':EnrollPtsNum (EnrollPtsNum msg))
    (cl:cons ':NearestPtsX (NearestPtsX msg))
    (cl:cons ':NearestPtsY (NearestPtsY msg))
    (cl:cons ':NearestPtsZ (NearestPtsZ msg))
    (cl:cons ':Reserved_D (Reserved_D msg))
    (cl:cons ':Reserved_E (Reserved_E msg))
    (cl:cons ':Reserved_F (Reserved_F msg))
    (cl:cons ':Reserved_G (Reserved_G msg))
    (cl:cons ':Reserved_H (Reserved_H msg))
    (cl:cons ':Reserved_I (Reserved_I msg))
    (cl:cons ':Reserved_J (Reserved_J msg))
    (cl:cons ':Reserved_K (Reserved_K msg))
    (cl:cons ':Reserved_L (Reserved_L msg))
    (cl:cons ':Reserved_M (Reserved_M msg))
    (cl:cons ':Reserved_N (Reserved_N msg))
    (cl:cons ':Reserved_O (Reserved_O msg))
    (cl:cons ':Reserved_P (Reserved_P msg))
))
