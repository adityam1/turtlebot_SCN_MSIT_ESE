# CMake generated Testfile for 
# Source directory: /home/turtlebot/ese_team_project/rocon/src/rocon_multimaster/rocon_gateway_tests/tests
# Build directory: /home/turtlebot/ese_team_project/rocon/build/rocon_multimaster/rocon_gateway_tests/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_rocon_gateway_tests_nosetests_nose "/home/turtlebot/ese_team_project/rocon/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/turtlebot/ese_team_project/rocon/build/test_results/rocon_gateway_tests/nosetests-nose.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/turtlebot/ese_team_project/rocon/build/test_results/rocon_gateway_tests" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/turtlebot/ese_team_project/rocon/src/rocon_multimaster/rocon_gateway_tests/tests/nose --with-xunit --xunit-file=/home/turtlebot/ese_team_project/rocon/build/test_results/rocon_gateway_tests/nosetests-nose.xml")
SUBDIRS(rocon)
