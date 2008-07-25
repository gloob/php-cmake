## CMake Extension handler
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

include(php/PHP_ARG_ENABLE)
include(php/PHP_NEW_EXTENSION)

file(GLOB_RECURSE EXTENSION_MODULES . CMakeLists.txt)
list(REMOVE_ITEM EXTENSION_MODULES ${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt)

foreach(MODULE ${EXTENSION_MODULES})
  string(REPLACE ${CMAKE_CURRENT_SOURCE_DIR}/ "" MODULE_NAME ${MODULE})
  string(REPLACE /CMakeLists.txt "" MODULE_NAME ${MODULE_NAME})
  message("** Including extension: ${MODULE_NAME}")
#  include(${MODULE})
  add_subdirectory(${MODULE_NAME})
  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/${MODULE_NAME})
  include_directories(${CMAKE_CURRENT_BINARY_DIR}/${MODULE_NAME})
endforeach(MODULE)


# Workaround for var scope
#file(WRITE ${PHP_BINARY_DIR}/php_extensions_source_list.txt "${PHP_EXTENSIONS_SOURCE_LIST}")
#message("post - PHP_EXTENSIONS_SOURCE_LIST: ${PHP_EXTENSIONS_SOURCE_LIST}")
