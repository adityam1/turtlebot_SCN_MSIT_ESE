# Install script for directory: /home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/build/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_server.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_server/cmake" TYPE FILE FILES
    "/home/turtlebot/ese_team_project/rocon/build/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_serverConfig.cmake"
    "/home/turtlebot/ese_team_project/rocon/build/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_serverConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_server" TYPE FILE FILES "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  INCLUDE("/home/turtlebot/ese_team_project/rocon/build/world_canvas/world_canvas_server/catkin_generated/safe_execute_install.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/world_canvas_server" TYPE PROGRAM FILES "/home/turtlebot/ese_team_project/rocon/build/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_server")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/world_canvas_server" TYPE PROGRAM FILES
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/get_tables.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/get_columns.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/save_columns.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/set_relationship.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/import.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/save_tables.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/get_walls.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/add_map.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/get_any.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/save_walls.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/export.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/get_markers.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/save_map.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/set_keyword.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/save_tables_jh.py"
    "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/scripts/save_markers.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_server" TYPE DIRECTORY FILES "/home/turtlebot/ese_team_project/rocon/src/world_canvas/world_canvas_server/launch")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

