# Install script for directory: /home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/turtlebot/ese_team_project/rocon/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gateway_msgs/msg" TYPE FILE FILES
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/ConnectionStatistics.msg"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/ConnectionType.msg"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/GatewayInfo.msg"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/RemoteGateway.msg"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/RemoteRule.msg"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/RemoteRuleWithStatus.msg"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/ErrorCodes.msg"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/msg/Rule.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gateway_msgs/srv" TYPE FILE FILES
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/srv/Advertise.srv"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/srv/AdvertiseAll.srv"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/srv/ConnectHub.srv"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/srv/Remote.srv"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/srv/RemoteAll.srv"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/srv/RemoteGatewayInfo.srv"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/srv/SetWatcherPeriod.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gateway_msgs/cmake" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/build/rocon_msgs/gateway_msgs/catkin_generated/installspace/gateway_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/turtlebot/ese_team_project/rocon/devel/include/gateway_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/turtlebot/ese_team_project/rocon/devel/share/common-lisp/ros/gateway_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/turtlebot/ese_team_project/rocon/devel/lib/python2.7/dist-packages/gateway_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/turtlebot/ese_team_project/rocon/devel/lib/python2.7/dist-packages/gateway_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/build/rocon_msgs/gateway_msgs/catkin_generated/installspace/gateway_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gateway_msgs/cmake" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/build/rocon_msgs/gateway_msgs/catkin_generated/installspace/gateway_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gateway_msgs/cmake" TYPE FILE FILES
    "/home/turtlebot/ese_team_project/rocon/build/rocon_msgs/gateway_msgs/catkin_generated/installspace/gateway_msgsConfig.cmake"
    "/home/turtlebot/ese_team_project/rocon/build/rocon_msgs/gateway_msgs/catkin_generated/installspace/gateway_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gateway_msgs" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/gateway_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

