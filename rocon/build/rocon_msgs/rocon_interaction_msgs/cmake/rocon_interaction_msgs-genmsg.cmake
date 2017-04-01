# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rocon_interaction_msgs: 8 messages, 5 services")

set(MSG_I_FLAGS "-Irocon_interaction_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg;-Irocon_std_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg;-Irocon_std_msgs:/home/turtlebot/ese_team_project/rocon/devel/share/rocon_std_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Irocon_service_pair_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg;-Iuuid_msgs:/opt/ros/indigo/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rocon_interaction_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv" "rocon_interaction_msgs/Pairing:rocon_std_msgs/Remapping:rocon_interaction_msgs/Interaction:rocon_std_msgs/KeyValue:rocon_std_msgs/Icon"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv" "rocon_interaction_msgs/Pairing:rocon_std_msgs/Remapping:rocon_interaction_msgs/Interaction:rocon_std_msgs/KeyValue:rocon_std_msgs/Icon"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv" "rocon_interaction_msgs/Pairing:rocon_std_msgs/Remapping:rocon_interaction_msgs/Interaction:rocon_std_msgs/KeyValue:rocon_std_msgs/Icon"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg" "rocon_std_msgs/PlatformInfo:rocon_std_msgs/Icon"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg" "rocon_std_msgs/PlatformInfo:uuid_msgs/UniqueID:rocon_std_msgs/Icon"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg" "rocon_std_msgs/PlatformInfo:rocon_std_msgs/Icon:uuid_msgs/UniqueID:rocon_interaction_msgs/InteractiveClient"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg" "rocon_interaction_msgs/Pairing:rocon_std_msgs/KeyValue:rocon_std_msgs/Icon:rocon_std_msgs/Remapping"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg" NAME_WE)
add_custom_target(_rocon_interaction_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_interaction_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg" "rocon_std_msgs/Remapping:rocon_std_msgs/KeyValue"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)

### Generating Services
_generate_srv_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_cpp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
)

### Generating Module File
_generate_module_cpp(rocon_interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rocon_interaction_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rocon_interaction_msgs_generate_messages rocon_interaction_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_cpp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_interaction_msgs_gencpp)
add_dependencies(rocon_interaction_msgs_gencpp rocon_interaction_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_interaction_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)

### Generating Services
_generate_srv_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_lisp(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
)

### Generating Module File
_generate_module_lisp(rocon_interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rocon_interaction_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rocon_interaction_msgs_generate_messages rocon_interaction_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_lisp _rocon_interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_interaction_msgs_genlisp)
add_dependencies(rocon_interaction_msgs_genlisp rocon_interaction_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_interaction_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/PlatformInfo.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_msg_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)

### Generating Services
_generate_srv_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)
_generate_srv_py(rocon_interaction_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
)

### Generating Module File
_generate_module_py(rocon_interaction_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rocon_interaction_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rocon_interaction_msgs_generate_messages rocon_interaction_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteractions.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/SetInteractions.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetInteraction.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/RemoconStatus.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClient.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/InteractiveClients.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/RequestInteraction.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Interaction.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pair.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/srv/GetRoles.srv" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_interaction_msgs/msg/Pairing.msg" NAME_WE)
add_dependencies(rocon_interaction_msgs_generate_messages_py _rocon_interaction_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_interaction_msgs_genpy)
add_dependencies(rocon_interaction_msgs_genpy rocon_interaction_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_interaction_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_interaction_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(rocon_interaction_msgs_generate_messages_cpp rocon_std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_interaction_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(rocon_interaction_msgs_generate_messages_lisp rocon_std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_interaction_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(rocon_interaction_msgs_generate_messages_py rocon_std_msgs_generate_messages_py)
