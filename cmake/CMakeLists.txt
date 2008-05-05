# 
# CMake rules for PHP
#
# $Id$
MESSAGE("BEFORE cmaking of PHP ${PHP_VERSION}")

CMAKE_MINIMUM_REQUIRED(VERSION 2.6.0 FATAL_ERROR)

PROJECT(PHP)

#SET(CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake ${CMAKE_MODULE_PATH})
# Another way
LIST(APPEND CMAKE_MODULE_PATH ${PHP_SOURCE_DIR}/CMake)

# Includes 
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})


# Do the configure checks.
INCLUDE(ConfigureChecks.cmake)

# Check libs
if (ICU_FOUND AND ICU_I18N_FOUND)
#  add_definitions(-DPHP_HAS_ICU=2)
        MESSAGE("Found ICU: ${ICU_INCLUDE_DIRS}")
        include_directories(${ICU_INCLUDE_DIRS})
        set(PHP_ZEND_LIBRARIES ${ICU_LIBRARIES} ${ICU_I18N_LIBRARIES})
endif (ICU_FOUND AND ICU_I18N_FOUND)


# Process configure files.
INCLUDE(ConfigureFileIn)

# Configure in main zone
CONFIGURE_FILE_IN(php_config.h.cmake php_config.h main)
CONFIGURE_FILE_IN(build-defs.h.cmake build-defs.h main)
# Configure in Zend zone
CONFIGURE_FILE_IN(zend_config.h.cmake zend_config.h Zend)



# Constants setting
SET(PHP_VERSION_MAJOR 6)
SET(PHP_VERSION_MINOR 0)
SET(PHP_VERSION_SUBMINOR 0)
SET(PHP_VERSION "${PHP_VERSION_MAJOR}.${PHP_VERSION_MINOR}.${PHP_VERSION_SUBMINOR}")



MESSAGE("START cmaking of PHP ${PHP_VERSION}")


MESSAGE("info: AUTOVARS created by CMAKE")
MESSAGE("PHP_SOURCE_DIR: ${PHP_SOURCE_DIR}")
MESSAGE("PHP_CMAKE_DIR: ${PHP_CMAKE_DIR}")
MESSAGE("CMAKE_ROOT: ${CMAKE_ROOT}")
MESSAGE("CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")


# User parameters
SET(ZEND_DEBUG 1)





#configure_file(Zend/zend_config.h.cmake ${PHP_SOURCE_DIR}/Zend/zend_config.h @ONLY)

if(WIN32)
  configure_file(TSRM/tsrm_config.w32.h ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h COPYONLY)
else(WIN32)
  configure_file(TSRM/tsrm_config.h.cmake ${PHP_SOURCE_DIR}/TSRM/tsrm_config.h @ONLY)
endif(WIN32)



ADD_SUBDIRECTORY(Zend)
ADD_SUBDIRECTORY(TSRM)
ADD_SUBDIRECTORY(main)
