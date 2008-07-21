## CMake Sapi File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$


## TODO: this includes should be defined in a list and defined in the upper level.
include_directories(${PHP_SOURCE_DIR})
include_directories(${PHP_SOURCE_DIR}/main)
include_directories(${PHP_SOURCE_DIR}/Zend)
include_directories(${PHP_SOURCE_DIR}/TSRM)
include_directories(${PHP_SOURCE_DIR}/ext)
include_directories(${PHP_SOURCE_DIR}/ext/date/lib)

file(GLOB_RECURSE ISAPI_MODULES . CMakeLists.txt)
list(REMOVE_ITEM ISAPI_MODULES ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt)

foreach(MODULE ${ISAPI_MODULES})
  string(REPLACE ${CMAKE_CURRENT_SOURCE_DIR}/ "" MODULE_NAME ${MODULE})
  string(REPLACE /CMakeLists.txt "" MODULE_NAME ${MODULE_NAME})
  message("** Including module: ${MODULE_NAME}")
#  include(${MODULE})
  add_subdirectory(${MODULE_NAME})
endforeach(MODULE)
