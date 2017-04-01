# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scheduler_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ischeduler_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg;-Irocon_std_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg;-Irocon_std_msgs:/home/turtlebot/ese_team_project/rocon/devel/share/rocon_std_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/indigo/share/uuid_msgs/cmake/../msg;-Irocon_service_pair_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_service_pair_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scheduler_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" "rocon_std_msgs/KeyValue:uuid_msgs/UniqueID:rocon_std_msgs/Remapping"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" "uuid_msgs/UniqueID:std_msgs/Header:scheduler_msgs/CurrentStatus"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg" "scheduler_msgs/Resource:uuid_msgs/UniqueID:rocon_std_msgs/KeyValue:rocon_std_msgs/Remapping"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" "scheduler_msgs/Resource:rocon_std_msgs/KeyValue:scheduler_msgs/Request:std_msgs/Header:uuid_msgs/UniqueID:rocon_std_msgs/Remapping"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scheduler_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_gencpp)
add_dependencies(scheduler_msgs_gencpp scheduler_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scheduler_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_genlisp)
add_dependencies(scheduler_msgs_genlisp scheduler_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scheduler_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_genpy)
add_dependencies(scheduler_msgs_genpy scheduler_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(scheduler_msgs_generate_messages_cpp rocon_std_msgs_generate_messages_cpp)
add_dependencies(scheduler_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(scheduler_msgs_generate_messages_cpp uuid_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(scheduler_msgs_generate_messages_lisp rocon_std_msgs_generate_messages_lisp)
add_dependencies(scheduler_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(scheduler_msgs_generate_messages_lisp uuid_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(scheduler_msgs_generate_messages_py rocon_std_msgs_generate_messages_py)
add_dependencies(scheduler_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(scheduler_msgs_generate_messages_py uuid_msgs_generate_messages_py)
