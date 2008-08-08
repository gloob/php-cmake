## CMake Extension handler
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

include(php/PHP_ARG_ENABLE)
include(php/PHP_NEW_EXTENSION)

set(EXTENSION_DIR ${CMAKE_CURRENT_SOURCE_DIR})

file(GLOB_RECURSE EXTENSION_MODULES . CMakeLists.txt)
list(REMOVE_ITEM EXTENSION_MODULES ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt)

foreach(MODULE ${EXTENSION_MODULES})
  string(REPLACE ${CMAKE_CURRENT_SOURCE_DIR}/ "" MODULE_NAME ${MODULE})
  string(REPLACE /CMakeLists.txt "" MODULE_NAME ${MODULE_NAME})
  message("** Including extension: ${MODULE_NAME}")
#  include(${MODULE})
  add_subdirectory(${MODULE_NAME})
  string(TOUPPER "EXT_${MODULE_NAME}" EXTENSION_TARGET)
  set(EXTENSION_LIST ${EXTENSION_TARGET} ${EXTENSION_LIST})
#  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/${MODULE_NAME})
#  include_directories(${CMAKE_CURRENT_BINARY_DIR}/${MODULE_NAME})
endforeach(MODULE)

set(EXTENSION_LIST ${EXTENSION_LIST} PARENT_SCOPE)

