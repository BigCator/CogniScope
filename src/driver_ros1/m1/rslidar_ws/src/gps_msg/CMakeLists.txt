cmake_minimum_required(VERSION 3.5)
cmake_policy(SET CMP0048 NEW)
project(gps_messages)


  find_package(catkin REQUIRED COMPONENTS
    roscpp
    message_generation #added by bit
    roslib)
    
  add_message_files(
  	#DIRECTORY msg
  	FILES
  	gps_location.msg
   )
  
  generate_messages(
  DEPENDENCIES
  std_msgs
  )
  
  catkin_package(CATKIN_DEPENDS 
    sensor_msgs
    roslib
    std_msgs#added by bit
    message_runtime#added by bit
    )
   
