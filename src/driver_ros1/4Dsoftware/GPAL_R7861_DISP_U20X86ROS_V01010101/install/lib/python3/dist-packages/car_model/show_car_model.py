#!/usr/bin/env python3
import os
import rospy
import numpy as np
import tf
from std_msgs.msg import Header
from visualization_msgs.msg import Marker,MarkerArray
FRAME_ID='car_model'
def publish_car_model(model_pub):
    mesh_marker=Marker()
    mesh_marker.header.frame_id=FRAME_ID
    mesh_marker.header.stamp=rospy.Time.now()

    mesh_marker.id=-1
    mesh_marker.lifetime=rospy.Duration()
    mesh_marker.type=Marker.MESH_RESOURCE
    mesh_marker.mesh_resource="package://car_model/BMW.dae"
    #mesh_marker.mesh_resource="package:///car_model/BMW.dae"
    mesh_marker.pose.position.x=0.0
    mesh_marker.pose.position.y=0.0
    mesh_marker.pose.position.z=0.0

    q=tf.transformations.quaternion_from_euler(np.pi/2,0,0)
    mesh_marker.pose.orientation.x=q[0]
    mesh_marker.pose.orientation.y=q[1]
    mesh_marker.pose.orientation.z=q[2]
    mesh_marker.pose.orientation.w=q[3]

    mesh_marker.color.r=1.0
    mesh_marker.color.g=1.0
    mesh_marker.color.b=1.0
    mesh_marker.color.a=1.0

    mesh_marker.scale.x=0.9
    mesh_marker.scale.y=0.9
    mesh_marker.scale.z=0.9

    model_pub.publish(mesh_marker)
if __name__== '__main__':
    rospy.init_node('EgoCar',anonymous=True)
    ego_pub=rospy.Publisher('show_ego_car',Marker,queue_size=10)
    rate=rospy.Rate(10)
    while not rospy.is_shutdown():
        publish_car_model(ego_pub)
        rate.sleep()
