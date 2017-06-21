import roslaunch
from time import sleep

package = 'reconfigure'
executable = 'reconfigure_node'

node = roslaunch.core.Node(package, executable)

launch = roslaunch.scriptapi.ROSLaunch()
launch.start()

process = launch.launch(node)
print "node reconfigure is started"
sleep(30)

print process.is_alive()
process.stop()
