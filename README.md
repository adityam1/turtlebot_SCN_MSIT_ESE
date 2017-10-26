# ROS reconfiguration framework
This is the repo for MSIT PROJECT, a reconﬁguration framework that allows ROS application developers to reconfigure nodes and parameters at run time. For demonstration, the framework was instantiated for TurtleBot to swap navigation and control algorithms and parameters being used in the robot while it is running.

Folders: 
* framework/ -- the framework's code and tests. 
* turtlebot/ -- an instantiation for TurtleBot's code, wrapping calls for AMCL and move_base nodes. 

Build/run instructions:
* See doc/Usecase_Testing_Steps and doc/User_Manual
