# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "crazy_turtle: 0 messages, 1 services")

set(MSG_I_FLAGS "-Iturtlesim:/opt/ros/melodic/share/turtlesim/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(crazy_turtle_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv" NAME_WE)
add_custom_target(_crazy_turtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazy_turtle" "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv" "turtlesim/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(crazy_turtle
  "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazy_turtle
)

### Generating Module File
_generate_module_cpp(crazy_turtle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazy_turtle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(crazy_turtle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(crazy_turtle_generate_messages crazy_turtle_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv" NAME_WE)
add_dependencies(crazy_turtle_generate_messages_cpp _crazy_turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazy_turtle_gencpp)
add_dependencies(crazy_turtle_gencpp crazy_turtle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_turtle_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(crazy_turtle
  "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazy_turtle
)

### Generating Module File
_generate_module_eus(crazy_turtle
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazy_turtle
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(crazy_turtle_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(crazy_turtle_generate_messages crazy_turtle_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv" NAME_WE)
add_dependencies(crazy_turtle_generate_messages_eus _crazy_turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazy_turtle_geneus)
add_dependencies(crazy_turtle_geneus crazy_turtle_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_turtle_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(crazy_turtle
  "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazy_turtle
)

### Generating Module File
_generate_module_lisp(crazy_turtle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazy_turtle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(crazy_turtle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(crazy_turtle_generate_messages crazy_turtle_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv" NAME_WE)
add_dependencies(crazy_turtle_generate_messages_lisp _crazy_turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazy_turtle_genlisp)
add_dependencies(crazy_turtle_genlisp crazy_turtle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_turtle_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(crazy_turtle
  "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazy_turtle
)

### Generating Module File
_generate_module_nodejs(crazy_turtle
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazy_turtle
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(crazy_turtle_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(crazy_turtle_generate_messages crazy_turtle_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv" NAME_WE)
add_dependencies(crazy_turtle_generate_messages_nodejs _crazy_turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazy_turtle_gennodejs)
add_dependencies(crazy_turtle_gennodejs crazy_turtle_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_turtle_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(crazy_turtle
  "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/turtlesim/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_turtle
)

### Generating Module File
_generate_module_py(crazy_turtle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_turtle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(crazy_turtle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(crazy_turtle_generate_messages crazy_turtle_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alex/Git_Stuff/495/HW1/ws/src/crazy_turtle/srv/Switch.srv" NAME_WE)
add_dependencies(crazy_turtle_generate_messages_py _crazy_turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazy_turtle_genpy)
add_dependencies(crazy_turtle_genpy crazy_turtle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazy_turtle_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazy_turtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazy_turtle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET turtlesim_generate_messages_cpp)
  add_dependencies(crazy_turtle_generate_messages_cpp turtlesim_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazy_turtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazy_turtle
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET turtlesim_generate_messages_eus)
  add_dependencies(crazy_turtle_generate_messages_eus turtlesim_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazy_turtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazy_turtle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET turtlesim_generate_messages_lisp)
  add_dependencies(crazy_turtle_generate_messages_lisp turtlesim_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazy_turtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazy_turtle
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET turtlesim_generate_messages_nodejs)
  add_dependencies(crazy_turtle_generate_messages_nodejs turtlesim_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_turtle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_turtle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazy_turtle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET turtlesim_generate_messages_py)
  add_dependencies(crazy_turtle_generate_messages_py turtlesim_generate_messages_py)
endif()
