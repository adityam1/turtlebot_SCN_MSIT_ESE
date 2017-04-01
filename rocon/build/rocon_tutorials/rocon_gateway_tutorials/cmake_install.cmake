# Install script for directory: /home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/build/rocon_tutorials/rocon_gateway_tutorials/catkin_generated/installspace/rocon_gateway_tutorials.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway_tutorials/cmake" TYPE FILE FILES
    "/home/turtlebot/ese_team_project/rocon/build/rocon_tutorials/rocon_gateway_tutorials/catkin_generated/installspace/rocon_gateway_tutorialsConfig.cmake"
    "/home/turtlebot/ese_team_project/rocon/build/rocon_tutorials/rocon_gateway_tutorials/catkin_generated/installspace/rocon_gateway_tutorialsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway_tutorials" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rocon_gateway_tutorials" TYPE PROGRAM FILES
    "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/scripts/advertise_all.py"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/scripts/advertise_tutorials.py"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/scripts/connect_hub_by_service.py"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/scripts/flip_all.py"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/scripts/flip_tutorials.py"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/scripts/pull_all.py"
    "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/scripts/pull_tutorials.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway_tutorials" TYPE DIRECTORY FILES "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/launch")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway_tutorials" TYPE DIRECTORY FILES "/home/turtlebot/ese_team_project/rocon/src/rocon_tutorials/rocon_gateway_tutorials/concert")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

