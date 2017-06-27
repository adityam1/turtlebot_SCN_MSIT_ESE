#!/usr/bin/env python

import roslaunch
import rospy
from time import sleep

def myhook():
    print "shutdown time!"

#rospy.init_node('systemControlNode', anonymous=True)
rospy.init_node('demo_node2', anonymous=True)
rospy.on_shutdown(myhook)

uuid = roslaunch.rlutil.get_or_generate_uuid(None, False)
roslaunch.configure_logging(uuid)
#launch = roslaunch.parent.ROSLaunchParent(uuid, ["/home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/reconfigure_node.launch"])
launch = roslaunch.parent.ROSLaunchParent(uuid, ["/home/turtlebot/ese_team_project/yunpengx/experiments/src/reconfigure/src/demo_node2.launch"])

launch.start()
print "reconfigure node is started!"
sleep(30)

#launch.shutdown()
