## CMake rules for PHP
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

MESSAGE("BEFORE cmaking of PHP ${PHP_VERSION}")

CMAKE_MINIMUM_REQUIRED(VERSION 2.4.0 FATAL_ERROR)

PROJECT(PHP)

#SET(CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake ${CMAKE_MODULE_PATH})
# Another way
LIST(APPEND CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake)

# Includes 
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})

# CMake Module includes
INCLUDE(ConfigureFileIn)


# Constants setting
# Version setting
#include(php/PHP_Version)
#configure_file_in(php_version.h.cmake php_version.h DIRECTORY main)

MESSAGE("START cmaking of PHP ${PHP_VERSION}")

add_subdirectory(ext)

# Recover information about extension source files
file(READ ${PHP_BINARY_DIR}/php_extensions_source_list.txt PHP_EXTENSIONS_SOURCE_LIST)
message("${PHP_EXTENSIONS_SOURCE_LIST}")

# Check libs
if (ICU_FOUND AND ICU_I18N_FOUND)
#  add_definitions(-DPHP_HAS_ICU=2)
        MESSAGE("Found ICU: ${ICU_INCLUDE_DIRS}")
        include_directories(${ICU_INCLUDE_DIRS})
        set(PHP_ZEND_LIBRARIES ${ICU_LIBRARIES} ${ICU_I18N_LIBRARIES})
endif (ICU_FOUND AND ICU_I18N_FOUND)


# User parameters
SET(ZEND_DEBUG 1)

# PHP defined (where?)
## if test "$PHP_SHORT_TAGS" = "yes"; then
SET(DEFAULT_SHORT_OPEN_TAG 1)

## need to apply some logic (development, production, linux, etc...) more info at configure.in
## try to resolve!
SET(EXPANDED_EXTENSION_DIR ${CMAKE_CURRENT_BINARY_DIR})
SET(EXPANDED_INCLUDE_PATH ${CMAKE_CURRENT_BINARY_DIR})
SET(PHP_OS "gloobOS")
SET(EXPANDED_PEAR_INSTALLDIR ${CMAKE_CURRENT_BINARY_DIR})

if(APPLE)
  set(DARWIN 1)
endif(APPLE)

configure_file_in(build-defs.h.cmake build-defs.h DIRECTORY main)

LIST(APPEND CMAKE_REQUIRED_INCLUDES ${PHP_BINARY_DIR}/main)
MESSAGE(cmake_required_include: ${CMAKE_REQUIRED_INCLUDES})

# Do the configure checks.
INCLUDE(ConfigureChecks.cmake)

# Configure in main zone
configure_file_in(php_config.h.cmake php_config.h DIRECTORY main)
# Configure in Zend zone
configure_file_in(zend_config.h.cmake zend_config.h DIRECTORY Zend)




message("PHP_EXTENSIONS_SOURCE_LIST: ${PHP_EXTENSIONS_SOURCE_LIST}")



MESSAGE("info: AUTOVARS created by CMAKE")
MESSAGE("PHP_SOURCE_DIR: ${PHP_SOURCE_DIR}")
MESSAGE("PHP_CMAKE_DIR: ${PHP_CMAKE_DIR}")
MESSAGE("CMAKE_ROOT: ${CMAKE_ROOT}")
MESSAGE("CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")




#configure_file(Zend/zend_config.h.cmake ${PHP_SOURCE_DIR}/Zend/zend_config.h @ONLY)

if(WIN32)
  configure_file(TSRM/tsrm_config.w32.h ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h COPYONLY)
else(WIN32)
  configure_file(TSRM/tsrm_config.h.cmake ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h @ONLY)
endif(WIN32)



ADD_SUBDIRECTORY(Zend)
ADD_SUBDIRECTORY(TSRM)
ADD_SUBDIRECTORY(main)



add_subdirectory(sapi)
