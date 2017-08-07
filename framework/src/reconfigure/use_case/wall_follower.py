#!/usr/bin/env python
import math
import threading

import rospy
import tf
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry

odom_lock = threading.Lock()

def odom_cb(data):
	global odom_data
	global odom_lock

	with odom_lock:
		odom_data = data

def main():
	global odom_data
	global odom_lock

	rospy.init_node('wall_follower', anonymous=True)
	while rospy.get_time() == 0:
		pass

	frequency = 10

	vel_pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size=frequency)
	rospy.Subscriber('odom', Odometry, odom_cb)

	# This call to rospy.sleep() is here to ensure that odom_data gets assigned.
	# Otherwise, an exception will be thrown when odom_data is read in the loop below.
	rospy.sleep(1)

	target_x = 0.0
	target_y = 0.0
	target_yaw = -math.pi / 2

	twist_msg = Twist()

	K_pd = 1.0
	K_id = 0.0
	K_dd = 0.0

	K_po = 1.0
	K_io = 0.0
	K_do = 0.0

	last_time = rospy.Time.now()
	rate = rospy.Rate(frequency)
	while not rospy.is_shutdown():
		curr_time = rospy.Time.now()
		with odom_lock:
			latest_odom_data = odom_data

		(roll, pitch, yaw) = tf.transformations.euler_from_quaternion([ latest_odom_data.pose.pose.orientation.x,
																		latest_odom_data.pose.pose.orientation.y,
																		latest_odom_data.pose.pose.orientation.z,
																		latest_odom_data.pose.pose.orientation.w ])
		x = odom_data.pose.pose.position.x
		y = odom_data.pose.pose.position.y
		print roll, pitch, yaw, x, y

		error_x = target_x - x
		error_y = target_y - y

		direction = math.atan2(error_y, error_x) - math.atan2(math.sin(yaw), math.cos(yaw))
#		if (direction < 0):
#			direction += 2 * math.pi

		error_d = math.sqrt(error_x * error_x + error_y * error_y) * math.cos(direction)

		error_o = target_yaw - yaw
		error_o = math.atan2(math.sin(error_o), math.cos(error_o))
		if math.fabs(error_o) < 0.01:
			exit(0)
		delta_t = (curr_time - last_time) / 1000000000.0

		p_term_d = K_pd * error_d
		i_term_d = 0
		d_term_d = 0

	#	twist_msg.linear.x = p_term_d + i_term_d + d_term_d
		if twist_msg.linear.x > 0.7:
			twist_msg.linear.x = 0.7

		if twist_msg.linear.x < -0.7:
			twist_msg.linear.x = -0.7

		p_term_o = K_po * error_o
		i_term_o = 0
		d_term_o = 0

		twist_msg.angular.z = p_term_o + i_term_o + d_term_o
	#	twist_msg.linear.x = -twist_msg.angular.z

		vel_pub.publish(twist_msg)

		last_time = curr_time
		rate.sleep()

if __name__ == '__main__':
	main()
