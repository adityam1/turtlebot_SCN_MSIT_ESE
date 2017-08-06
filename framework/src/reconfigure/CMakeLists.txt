cmake_minimum_required(VERSION 2.8.3)
project(reconfigure)

ENABLE_TESTING()
set (CMAKE_CXX_STANDARD 11)
SET(CMAKE_CXX_FLAGS="-g -O0 -Wall -W -Wshadow -Wunused-variable -Wunused-parameter -Wunused-function -Wunused -Wno-system-headers -Wno-deprecated -Woverloaded-virtual -Wwrite-strings -fprofile-arcs -ftest-coverage")
SET(CMAKE_C_FLAGS="-g -O0 -Wall -W -fprofile-arcs -ftest-coverage")
SET(CMAKE_EXE_LINKER_FLAGS="-fprofile-arcs -ftest-coverage")

## Add support for C++11, supported in ROS Kinetic and newer
add_definitions(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    std_msgs
    message_generation
    scn_library
)


find_package(PythonLibs REQUIRED)
include_directories(${PYTHON_INCLUDE_DIRS})

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a run_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a run_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
# add_message_files(
#  FILES
#  Num.msg
#)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  demoNodeService.srv
  userInterfaceService.srv
  frameworkInfoService.srv
)

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a run_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
    INCLUDE_DIRS include
    LIBRARIES reconfigure
    CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
    DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
  # add include here to enable "Dependency.h" header file
  include
)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/reconfigure.cpp
# )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
# add_executable(${PROJECT_NAME}_node src/reconfigure_node.cpp)
add_executable(${PROJECT_NAME}_node src/reconfigure_node.cpp src/Dependency.cpp)
add_executable(demoNode1 integration_test/1/demoNode1.cpp)
add_executable(demoNode2 integration_test/1/demoNode2.cpp)
add_executable(demoNode3 integration_test/1/demoNode3.cpp)
add_executable(demoNode4 integration_test/2/demoNode4.cpp)
add_executable(demoNode5 integration_test/2/demoNode5.cpp)
add_executable(demoNode6 integration_test/2/demoNode6.cpp)
add_executable(demoNode7 integration_test/2/demoNode7.cpp)
add_executable(demoNode8 integration_test/2/demoNode8.cpp)
add_executable(demoNode9 integration_test/3/demoNode9.cpp)
add_executable(demoNode10 integration_test/3/demoNode10.cpp)
add_executable(demoNode11 integration_test/3/demoNode11.cpp)
add_executable(demoNode12 integration_test/3/demoNode12.cpp)
add_executable(demoNode13 integration_test/3/demoNode13.cpp)
add_executable(demoNode14 integration_test/3/demoNode14.cpp)
add_executable(demoNode15 integration_test/3/demoNode15.cpp)
add_executable(demoNode16 integration_test/3/demoNode16.cpp)
add_executable(demoNode17 integration_test/3/demoNode17.cpp)
add_executable(demoNode18 integration_test/4/demoNode18.cpp)
add_executable(demoNode19 integration_test/4/demoNode19.cpp)
add_executable(demoNode20 integration_test/4/demoNode20.cpp)

add_dependencies(demoNode1 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode2 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode3 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode4 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode5 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode6 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode7 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode8 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode9 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode10 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode11 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode12 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode13 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode14 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode15 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode16 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode17 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode18 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library) 
add_dependencies(demoNode19 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
add_dependencies(demoNode20 reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)       
add_dependencies(${PROJECT_NAME}_node ${catkin_EXPORTED_TARGETS} scn_library)

## Specify libraries to link a library or executable target against
target_link_libraries(${PROJECT_NAME}_node
  ${catkin_LIBRARIES}
  ${PYTHON_LIBRARIES}
)
target_link_libraries(demoNode1 
${catkin_LIBRARIES}
)
target_link_libraries(demoNode2
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode3
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode4
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode5
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode6
  ${catkin_LIBRARIES}
  )
target_link_libraries(demoNode7
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode8
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode9 
${catkin_LIBRARIES}
)
target_link_libraries(demoNode10
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode11
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode12
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode13
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode14
  ${catkin_LIBRARIES}
  )
target_link_libraries(demoNode15
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode16
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode17
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode18
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode19
  ${catkin_LIBRARIES}
)
target_link_libraries(demoNode20
  ${catkin_LIBRARIES}
)
# add unit test
add_executable(unit_test_dependency unit_test/unit_test_dependency.cpp src/Dependency.cpp)
add_dependencies(unit_test_dependency reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
target_link_libraries(unit_test_dependency
  ${catkin_LIBRARIES} gcov
)
add_test(NAME unit_test_dependency COMMAND unit_test_dependency)

add_executable(init_test unit_test/init_test.cpp)
add_dependencies(init_test reconfigure_generate_messages_cpp ${catkin_EXPORTED_TARGETS} scn_library)
target_link_libraries(init_test
  ${catkin_LIBRARIES}
)

## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})


#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
  PATTERN ".svn" EXCLUDE
)

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_reconfigure.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
