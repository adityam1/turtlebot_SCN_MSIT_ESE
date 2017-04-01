# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "world_canvas_msgs: 5 messages, 17 services")

set(MSG_I_FLAGS "-Iworld_canvas_msgs:/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/indigo/share/uuid_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(world_canvas_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv" "world_canvas_msgs/MapListEntry"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:geometry_msgs/Vector3:std_msgs/Header:std_msgs/ColorRGBA:world_canvas_msgs/Annotation:uuid_msgs/UniqueID:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv" "world_canvas_msgs/AnnotationData:uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:geometry_msgs/Vector3:std_msgs/Header:std_msgs/ColorRGBA:world_canvas_msgs/Annotation:uuid_msgs/UniqueID:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:geometry_msgs/Vector3:std_msgs/Header:std_msgs/ColorRGBA:world_canvas_msgs/Annotation:uuid_msgs/UniqueID:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:world_canvas_msgs/AnnotationData:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:geometry_msgs/Vector3:std_msgs/Header:std_msgs/ColorRGBA:world_canvas_msgs/Annotation:uuid_msgs/UniqueID:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:world_canvas_msgs/AnnotationData:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:geometry_msgs/Vector3:std_msgs/Header:std_msgs/ColorRGBA:world_canvas_msgs/Annotation:uuid_msgs/UniqueID:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Vector3:std_msgs/Header:std_msgs/ColorRGBA:uuid_msgs/UniqueID:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv" ""
)

get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_cpp(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(world_canvas_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_gencpp)
add_dependencies(world_canvas_msgs_gencpp world_canvas_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_lisp(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(world_canvas_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_genlisp)
add_dependencies(world_canvas_msgs_genlisp world_canvas_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/indigo/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_py(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(world_canvas_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/ese_team_project/rocon/src/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_genpy)
add_dependencies(world_canvas_msgs_genpy world_canvas_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(world_canvas_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(world_canvas_msgs_generate_messages_cpp uuid_msgs_generate_messages_cpp)
add_dependencies(world_canvas_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(world_canvas_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(world_canvas_msgs_generate_messages_lisp uuid_msgs_generate_messages_lisp)
add_dependencies(world_canvas_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(world_canvas_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(world_canvas_msgs_generate_messages_py uuid_msgs_generate_messages_py)
add_dependencies(world_canvas_msgs_generate_messages_py geometry_msgs_generate_messages_py)
