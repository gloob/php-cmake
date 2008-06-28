## CMake Sapi File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

file(GLOB_RECURSE ISAPI_MODULES . CMakeLists.txt)
list(REMOVE_ITEM ISAPI_MODULES ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt)

foreach(MODULE ${ISAPI_MODULES})
  string(REPLACE ${CMAKE_CURRENT_SOURCE_DIR}/ "" MODULE_NAME ${MODULE})
  string(REPLACE /CMakeLists.txt "" MODULE_NAME ${MODULE_NAME})
  message("** Including module: ${MODULE_NAME}")
  include(${MODULE})
endforeach(MODULE)