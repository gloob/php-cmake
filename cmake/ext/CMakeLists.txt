## CMake Extension handler
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

include(php/PHP_ARG_ENABLE)
include(php/PHP_NEW_EXTENSION)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${PHP_BINARY_DIR}/Zend)

set(EXTENSION_DIR ${CMAKE_CURRENT_SOURCE_DIR})

file(GLOB_RECURSE EXTENSION_MODULES . CMakeLists.txt)
list(REMOVE_ITEM EXTENSION_MODULES ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt)

foreach(MODULE ${EXTENSION_MODULES})
  string(REPLACE ${CMAKE_CURRENT_SOURCE_DIR}/ "" MODULE_NAME ${MODULE})
  string(REPLACE /CMakeLists.txt "" MODULE_NAME ${MODULE_NAME})
  add_subdirectory(${MODULE_NAME})
  set(MOD_ACTIVE ${${MODULE_NAME}})
  if (MOD_ACTIVE)
    message("** Including extension: ${MODULE_NAME}")
#    include(${MODULE})
    string(TOUPPER "EXT_${MODULE_NAME}" EXTENSION_TARGET)
    set(EXTENSION_LIST ${EXTENSION_TARGET} ${EXTENSION_LIST})

#  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/${MODULE_NAME})
#  include_directories(${CMAKE_CURRENT_BINARY_DIR}/${MODULE_NAME})
  else()
    message("** NOT including extension: ${MODULE_NAME}")
  endif()
endforeach(MODULE)

set(EXTENSION_LIST ${EXTENSION_LIST} PARENT_SCOPE)

