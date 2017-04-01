# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "concert_workflow_engine_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iconcert_workflow_engine_msgs:/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(concert_workflow_engine_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg" NAME_WE)
add_custom_target(_concert_workflow_engine_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "concert_workflow_engine_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg" NAME_WE)
add_custom_target(_concert_workflow_engine_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "concert_workflow_engine_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg" NAME_WE)
add_custom_target(_concert_workflow_engine_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "concert_workflow_engine_msgs" "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg" "concert_workflow_engine_msgs/Workflow"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concert_workflow_engine_msgs
)
_generate_msg_cpp(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concert_workflow_engine_msgs
)
_generate_msg_cpp(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concert_workflow_engine_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(concert_workflow_engine_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concert_workflow_engine_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(concert_workflow_engine_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(concert_workflow_engine_msgs_generate_messages concert_workflow_engine_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_cpp _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_cpp _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_cpp _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concert_workflow_engine_msgs_gencpp)
add_dependencies(concert_workflow_engine_msgs_gencpp concert_workflow_engine_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concert_workflow_engine_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concert_workflow_engine_msgs
)
_generate_msg_lisp(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concert_workflow_engine_msgs
)
_generate_msg_lisp(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concert_workflow_engine_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(concert_workflow_engine_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concert_workflow_engine_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(concert_workflow_engine_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(concert_workflow_engine_msgs_generate_messages concert_workflow_engine_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_lisp _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_lisp _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_lisp _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concert_workflow_engine_msgs_genlisp)
add_dependencies(concert_workflow_engine_msgs_genlisp concert_workflow_engine_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concert_workflow_engine_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concert_workflow_engine_msgs
)
_generate_msg_py(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concert_workflow_engine_msgs
)
_generate_msg_py(concert_workflow_engine_msgs
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concert_workflow_engine_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(concert_workflow_engine_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concert_workflow_engine_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(concert_workflow_engine_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(concert_workflow_engine_msgs_generate_messages concert_workflow_engine_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/Workflow.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_py _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/WorkflowsStatus.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_py _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/rocon_msgs/concert_workflow_engine_msgs/msg/EnableWorkflows.msg" NAME_WE)
add_dependencies(concert_workflow_engine_msgs_generate_messages_py _concert_workflow_engine_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concert_workflow_engine_msgs_genpy)
add_dependencies(concert_workflow_engine_msgs_genpy concert_workflow_engine_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concert_workflow_engine_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concert_workflow_engine_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concert_workflow_engine_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(concert_workflow_engine_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concert_workflow_engine_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concert_workflow_engine_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(concert_workflow_engine_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concert_workflow_engine_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concert_workflow_engine_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concert_workflow_engine_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(concert_workflow_engine_msgs_generate_messages_py std_msgs_generate_messages_py)
