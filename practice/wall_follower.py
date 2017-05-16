import math
import rospy
import sys
import tf
import threading

from geometry_msgs.msg import Twist
from kobuki_msgs.msg import BumperEvent
from nav_msgs.msg import Odometry

collision_lock = threading.Lock()

def bumper_callback(data):
	global collision_detected
	global collision_lock
#	if data.bumper == 0:
#		msg = 'Left bumper '
#	elif data.bumper == 1:
#		msg = 'Center bumper '
#	elif data.bumper == 2:
#		msg = 'Right bumper '
#
#	if data.state == 0:
#		msg += 'released'
#	elif data.state == 1:
#		msg += 'pressed'
#
#	print msg
	with collision_lock:
		collision_detected = True

odom_lock = threading.Lock()

def odom_callback(data):
	global odom_data
	global odom_lock

	with odom_lock:
		odom_data = data

def get_orientation(quaternion):
	(roll, pitch, yaw) = tf.transformations.euler_from_quaternion([ quaternion.x, quaternion.y, quaternion.z, quaternion.w ])

	return math.atan2(math.sin(yaw), math.cos(yaw))

def main():
	global collision_detected
	global collision_lock

	global odom_data
	global odom_lock

	rospy.init_node('wall_follower', anonymous=True)
	while rospy.get_time() == 0:
		pass

	rospy.Subscriber('/mobile_base/events/bumper', BumperEvent, bumper_callback)
	rospy.Subscriber('/odom', Odometry, odom_callback)

	frequency = 50		# Hertz
	rate = rospy.Rate(frequency)
	vel_pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size=math.ceil(2 * frequency))

	dist_tolerance = 0.001
	neg_dist_tolerance = -dist_tolerance
	yaw_tolerance = 0.01

	# This call to rospy.sleep() is here to ensure that odom_data gets assigned.
	# Otherwise, an exception will be thrown when odom_data is read in the loop below.
	rospy.sleep(1)

	twist_msg = Twist()

	a = 0.0
	b = 1.0
	c = 0.0
	e_dir = -1.0
	target_yaw = 0

	K_dist = 3
	K_dist_from_line = 1.5 #0.5
	K_yaw = 1.5
#	K_d = 1.0

	while not rospy.is_shutdown() and True:
#	if True:
		# Try to go forward 1m.
		# If you are able to go the full distance of 1m, then turn left by 90 degrees.
		# If you bump into a wall instead, back up by 50cm and turn right by 90 degrees.
		with odom_lock:
			latest_odom_data = odom_data

		with collision_lock:
			collision_detected = False
			bumped = collision_detected

		start_x = latest_odom_data.pose.pose.position.x
		start_y = latest_odom_data.pose.pose.position.y

		e_dist = 1.0
		e_dist_from_line = 0.0

		while not rospy.is_shutdown() and not bumped and e_dist >= dist_tolerance:
#		while True and not rospy.is_shutdown():
			twist_msg.linear.x = K_dist * e_dist
			if twist_msg.linear.x > 0.1:
				twist_msg.linear.x = 0.1

			twist_msg.angular.z = K_dist_from_line * e_dist_from_line

			#vel_pub.publish(twist_msg)

			with odom_lock:
				latest_odom_data = odom_data

			latest_x = latest_odom_data.pose.pose.position.x
			latest_y = latest_odom_data.pose.pose.position.y
			e_dist = 1.0 - math.sqrt((latest_x - start_x) * (latest_x - start_x) + (latest_y - start_y) * (latest_y - start_y))

			e_dist_from_line = e_dir * (a * latest_x + b * latest_y + c) / math.sqrt(a * a + b * b)

			with collision_lock:
				bumped = collision_detected

			rate.sleep()

		#sys.exit(0)

		if rospy.is_shutdown():
			sys.exit(0)

		if bumped:
			#Stop
#			twist_msg.linear.x = twist_msg.angular.z = 0
#			vel_pub.publish(twist_msg)
#			rospy.sleep(0.1)
#			vel_pub.publish(twist_msg)
#			rospy.sleep(0.1)
			rospy.sleep(1)

			with odom_lock:
				latest_odom_data = odom_data

			# Back up
			start_x = latest_odom_data.pose.pose.position.x
			start_y = latest_odom_data.pose.pose.position.y

			e_dist = -0.5
			e_dist_from_line = 0.0
			e_dir = -e_dir

			while not rospy.is_shutdown() and e_dist <= neg_dist_tolerance:
				twist_msg.linear.x = K_dist * e_dist
				if twist_msg.linear.x < -0.1:
					twist_msg.linear.x = -0.1

				twist_msg.angular.z = K_dist_from_line * e_dist_from_line

				#vel_pub.publish(twist_msg)

				with odom_lock:
					latest_odom_data = odom_data

				latest_x = latest_odom_data.pose.pose.position.x
				latest_y = latest_odom_data.pose.pose.position.y
				e_dist = math.sqrt((latest_x - start_x) * (latest_x - start_x) + (latest_y - start_y) * (latest_y - start_y)) - 0.5

				e_dist_from_line = e_dir * (a * latest_x + b * latest_y + c) / math.sqrt(a * a + b * b)

				rate.sleep()

			if rospy.is_shutdown():
				sys.exit(0)

			# Turn right
			target_yaw -= math.pi / 2
			target_yaw = math.atan2(math.sin(target_yaw), math.cos(target_yaw))

#			twist_msg.linear.x = 0.35

			with odom_lock:
				latest_odom_data = odom_data

			yaw = get_orientation(latest_odom_data.pose.pose.orientation)

			error_yaw = target_yaw - yaw
			error_yaw = math.atan2(math.sin(error_yaw), math.cos(error_yaw))

#			turn = True

			while not rospy.is_shutdown() and math.fabs(error_yaw) >= yaw_tolerance:
#				if turn:
				twist_msg.linear.x = 0
				twist_msg.angular.z = K_yaw * error_yaw
#				else:
#					x = latest_odom_data.pose.pose.position.x
#					y = latest_odom_data.pose.pose.position.y
#					error_d = math.sqrt(x * x + y * y)
#
#					if error_d > 0:
#						point_orientation = math.atan2(y, x)
#
#						lower = point_orientation - math.pi / 2
#						lower = math.atan2(math.sin(lower), math.cos(lower))
#
#						upper = point_orientation + math.pi / 2
#						upper = math.atan2(math.sin(upper), math.cos(upper))
#
#						if upper < lower:
#							upper += (2 * math.pi)
#
#							if yaw < 0:
#								yaw += (2 * math.pi)
#
#						if (lower <= yaw) and (yaw < upper):
#							direction = -1
#						else:
#							direction = 1
#
#						twist_msg.linear.x = direction
#
#					twist_msg.linear.x = twist_msg.linear.x * K_d * error_d
#					twist_msg.angular.z = 0
#
				#vel_pub.publish(twist_msg)

				with odom_lock:
					latest_odom_data = odom_data

				yaw = get_orientation(latest_odom_data.pose.pose.orientation)

				error_yaw = target_yaw - yaw
				error_yaw = math.atan2(math.sin(error_yaw), math.cos(error_yaw))

				rate.sleep()

			if rospy.is_shutdown():
				sys.exit(0)
		elif e_dist < dist_tolerance:
#		if e_dist < dist_tolerance:
#		if True:
			# Turn left
			target_yaw += math.pi / 2
			target_yaw = math.atan2(math.sin(target_yaw), math.cos(target_yaw))
#			print target_yaw

#			twist_msg.linear.x = 0.35

			with odom_lock:
				latest_odom_data = odom_data

			yaw = get_orientation(latest_odom_data.pose.pose.orientation)

			error_yaw = target_yaw - yaw
			error_yaw = math.atan2(math.sin(error_yaw), math.cos(error_yaw))

#			turn = True

			while not rospy.is_shutdown() and math.fabs(error_yaw) >= yaw_tolerance:
#				if turn:
				twist_msg.linear.x = 0
				twist_msg.angular.z = K_yaw * error_yaw
#				else:
#					x = latest_odom_data.pose.pose.position.x
#					y = latest_odom_data.pose.pose.position.y
#					error_d = math.sqrt(x * x + y * y)
#
#					if error_d > 0:
#						point_orientation = math.atan2(y, x)
#
#						lower = point_orientation - math.pi / 2
#						lower = math.atan2(math.sin(lower), math.cos(lower))
#
#						upper = point_orientation + math.pi / 2
#						upper = math.atan2(math.sin(upper), math.cos(upper))
#
#						if upper < lower:
#							upper += (2 * math.pi)
#
#							if yaw < 0:
#								yaw += (2 * math.pi)
#
#						if (lower <= yaw) and (yaw < upper):
#							direction = -1
#						else:
#							direction = 1
#
#						twist_msg.linear.x = direction
#
#					twist_msg.linear.x = twist_msg.linear.x * K_d * error_d
#					twist_msg.angular.z = 0

				#vel_pub.publish(twist_msg)

				with odom_lock:
					latest_odom_data = odom_data

				yaw = get_orientation(latest_odom_data.pose.pose.orientation)

				error_yaw = target_yaw - yaw
				error_yaw = math.atan2(math.sin(error_yaw), math.cos(error_yaw))

				rate.sleep()

			if rospy.is_shutdown():
				sys.exit(0)
		else:
			assert False, "You should not be here."

		# This call to sleep() is required in order to ensure that the robot
		# has turned completely and to prevent it from moving straight while
		# it is still turning.
		rospy.sleep(1)

		with odom_lock:
			latest_odom_data = odom_data

		if a == 0:
			if b != 0:
				a = 1.0
				b = 0.0
				c = -latest_odom_data.pose.pose.position.x

#				orientation = get_orientation(latest_odom_data.pose.pose.orientation)
#				print orientation
#				if orientation >= 0 and orientation <= math.pi:
				if target_yaw >= 0 and target_yaw <= math.pi:
					e_dir = 1.0
				else:
					e_dir = -1.0
			else:
				raise ValueError('Equation of line to follow is invalid. (a = 0, b = 0)')
		elif b == 0:
			a = 0.0
			b = 1.0
			c = -latest_odom_data.pose.pose.position.y

#			orientation = get_orientation(latest_odom_data.pose.pose.orientation)
#			if orientation >= -math.pi / 2 and orientation <= math.pi / 2:
			if target_yaw >= -math.pi / 2 and target_yaw <= math.pi / 2:
				e_dir = -1.0
			else:
				e_dir = 1.0
		else:
			#TODO: In the current implementation, this case is not needed.
			assert False, "Not Implemented"

if __name__ == '__main__':
	main()
