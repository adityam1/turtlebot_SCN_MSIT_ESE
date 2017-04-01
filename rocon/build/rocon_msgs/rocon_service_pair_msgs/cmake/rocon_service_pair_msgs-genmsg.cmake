# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rocon_service_pair_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Irocon_service_pair_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg;-Iuuid_msgs:/opt/ros/indigo/share/uuid_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rocon_service_pair_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg" NAME_WE)
add_custom_target(_rocon_service_pair_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_service_pair_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg" "rocon_service_pair_msgs/TestiesPairResponse:rocon_service_pair_msgs/TestiesResponse:rocon_service_pair_msgs/TestiesPairRequest:rocon_service_pair_msgs/TestiesRequest:uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg" NAME_WE)
add_custom_target(_rocon_service_pair_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_service_pair_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg" "rocon_service_pair_msgs/TestiesResponse:uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg" NAME_WE)
add_custom_target(_rocon_service_pair_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_service_pair_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg" "uuid_msgs/UniqueID:rocon_service_pair_msgs/TestiesRequest"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg" NAME_WE)
add_custom_target(_rocon_service_pair_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_service_pair_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg" NAME_WE)
add_custom_target(_rocon_service_pair_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_service_pair_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg" "uuid_msgs/UniqueID"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_cpp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_cpp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_cpp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_cpp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rocon_service_pair_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rocon_service_pair_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rocon_service_pair_msgs_generate_messages rocon_service_pair_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_cpp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_cpp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_cpp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_cpp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_cpp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_service_pair_msgs_gencpp)
add_dependencies(rocon_service_pair_msgs_gencpp rocon_service_pair_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_service_pair_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_lisp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_lisp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_lisp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_lisp(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rocon_service_pair_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rocon_service_pair_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rocon_service_pair_msgs_generate_messages rocon_service_pair_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_lisp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_lisp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_lisp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_lisp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_lisp _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_service_pair_msgs_genlisp)
add_dependencies(rocon_service_pair_msgs_genlisp rocon_service_pair_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_service_pair_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_py(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_py(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_py(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs
)
_generate_msg_py(rocon_service_pair_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rocon_service_pair_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rocon_service_pair_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rocon_service_pair_msgs_generate_messages rocon_service_pair_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPair.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_py _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairResponse.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_py _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesPairRequest.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_py _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesRequest.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_py _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg/TestiesResponse.msg" NAME_WE)
add_dependencies(rocon_service_pair_msgs_generate_messages_py _rocon_service_pair_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_service_pair_msgs_genpy)
add_dependencies(rocon_service_pair_msgs_genpy rocon_service_pair_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_service_pair_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_service_pair_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(rocon_service_pair_msgs_generate_messages_cpp uuid_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_service_pair_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(rocon_service_pair_msgs_generate_messages_lisp uuid_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_service_pair_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(rocon_service_pair_msgs_generate_messages_py uuid_msgs_generate_messages_py)
