## CMake rules for PHP
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

message("BEFORE cmaking of PHP ${PHP_VERSION}")

cmake_minimum_required(VERSION 2.4.0 FATAL_ERROR)
project(PHP C)

#SET(CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake ${CMAKE_MODULE_PATH})
# Another way
LIST(APPEND CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake)

# Includes 
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_BINARY_DIR})

# CMake Module includes
include(ConfigureFileIn)

# Constants setting
# Version setting
include(php/PHP_Version)
configure_file_in(php_version.h.cmake php_version.h DIRECTORY main)

message("START cmaking of PHP ${PHP_VERSION}")


## DEL
# Recover information about extension source files
#file(READ ${PHP_BINARY_DIR}/php_extensions_source_list.txt PHP_EXTENSIONS_SOURCE_LIST)
#message("${PHP_EXTENSIONS_SOURCE_LIST}")
## /DEL

# Check libs
# Check ICU
find_package(ICU)
if (ICU_FOUND AND ICU_I18N_FOUND)
#  add_definitions(-DPHP_HAS_ICU=2)
  message("Found ICU: ${ICU_INCLUDE_DIRS}")
  include_directories(${ICU_INCLUDE_DIRS})
  set(PHP_ZEND_LIBRARIES ${ICU_LIBRARIES} ${ICU_I18N_LIBRARIES})
else (ICU_FOUND AND ICU_I18N_FOUND)
  message(FATAL_ERROR "Need to install ICU (http://icu-project.org) for compiling PHP.")
endif (ICU_FOUND AND ICU_I18N_FOUND)


# User parameters
set(ZEND_DEBUG 1)
set(PHP_UNAME Linux)

# PHP defined (where?)
## if test "$PHP_SHORT_TAGS" = "yes"; then
set(DEFAULT_SHORT_OPEN_TAG 1)

## need to apply some logic (development, production, linux, etc...) more info at configure.in
## try to resolve!
set(EXPANDED_EXTENSION_DIR ${CMAKE_CURRENT_BINARY_DIR})
set(EXPANDED_INCLUDE_PATH ${CMAKE_CURRENT_BINARY_DIR})
set(PHP_OS "gloobOS")
set(EXPANDED_PEAR_INSTALLDIR ${CMAKE_CURRENT_BINARY_DIR})

if(APPLE)
  set(DARWIN 1)
endif(APPLE)

configure_file_in(build-defs.h.cmake build-defs.h DIRECTORY main)

LIST(APPEND CMAKE_REQUIRED_INCLUDES ${PHP_BINARY_DIR}/main)
message(cmake_required_include: ${CMAKE_REQUIRED_INCLUDES})

# Do the configure checks.
include(ConfigureChecks.cmake)

# Configure in main zone
configure_file_in(php_config.h.cmake php_config.h DIRECTORY main)
# Configure in Zend zone
configure_file_in(zend_config.h.cmake zend_config.h DIRECTORY Zend)




message("info: AUTOVARS created by CMAKE")
message("PHP_SOURCE_DIR: ${PHP_SOURCE_DIR}")
message("PHP_CMAKE_DIR: ${PHP_CMAKE_DIR}")
message("CMAKE_ROOT: ${CMAKE_ROOT}")
message("CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")



#configure_file(Zend/zend_config.h.cmake ${PHP_SOURCE_DIR}/Zend/zend_config.h @ONLY)

if(WIN32)
  configure_file(TSRM/tsrm_config.w32.h ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h COPYONLY)
else(WIN32)
  configure_file(TSRM/tsrm_config.h.cmake ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h @ONLY)
endif(WIN32)



add_subdirectory(Zend)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Zend)

add_subdirectory(TSRM)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/TSRM)

add_subdirectory(main)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/main)


add_subdirectory(ext)
add_subdirectory(sapi)
