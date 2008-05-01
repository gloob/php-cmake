# 
# CMake rules for PHP
#
# $Id$
MESSAGE("BEFORE cmaking of PHP ${PHP_VERSION}")

CMAKE_MINIMUM_REQUIRED(VERSION 2.6.0 FATAL_ERROR)
PROJECT(PHP)

SET(PHP_VERSION_MAJOR 6)
SET(PHP_VERSION_MINOR 0)
SET(PHP_VERSION_SUBMINOR 0)
SET(PHP_VERSION "${PHP_VERSION_MAJOR}.${PHP_VERSION_MINOR}.${PHP_VERSION_SUBMINOR}")

MESSAGE("START cmaking of PHP ${PHP_VERSION}")

SET(CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake ${CMAKE_MODULE_PATH})
# Another way
LIST(APPEND CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake)

MESSAGE("info: AUTOVARS created by CMAKE")
MESSAGE("PHP_SOURCE_DIR: ${PHP_SOURCE_DIR}")
MESSAGE("PHP_CMAKE_DIR: ${PHP_CMAKE_DIR}")
MESSAGE("CMAKE_ROOT: ${CMAKE_ROOT}")
MESSAGE("CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")





# do the configure checks
include(ConfigureChecks.cmake)






configure_file(main/php_config.h.cmake ${PHP_SOURCE_DIR}/main/php_config.h @ONLY)
configure_file(Zend/zend_config.h.cmake ${PHP_SOURCE_DIR}Zend/zend_config.h @ONLY)

if(WIN32)
  configure_file(TSRM/tsrm_config.w32.h ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h COPYONLY)
else(WIN32)
  configure_file(TSRM/tsrm_config.h.cmake ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h @ONLY)
endif(WIN32)



ADD_SUBDIRECTORY(TSRM)
ADD_SUBDIRECTORY(Zend)
ADD_SUBDIRECTORY(main)
