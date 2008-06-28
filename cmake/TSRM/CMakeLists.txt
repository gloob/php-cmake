## CMake TSRM File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

## TODO:
# Manage win32 issues...

# ########## Project setup ##########
PROJECT(TSRM)
CMAKE_MINIMUM_REQUIRED(VERSION 2.4.5)

# Includes
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})


# ######### General setup ##########
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR})

MESSAGE("TSRM_SOURCE_DIR: ${TSRM_SOURCE_DIR}")
INCLUDE_DIRECTORIES(${TSRM_SOURCE_DIR})


# ########## TSRM executable ##########
# Sources:
SET(TSRM_library_SRCS

  TSRM.c
  tsrm_strtok_r.c
  tsrm_virtual_cwd.c

)

# Headers:
SET(TSRM_library_HDRS
    acconfig.h
    readdir.h
    TSRM.h
    tsrm_config.h
    tsrm_config_common.h
    tsrm_nw.h
    tsrm_strtok_r.h
    tsrm_virtual_cwd.h
)


# actual target:
ADD_LIBRARY(TSRM ${TSRM_library_SRCS} ${TSRM_library_HDRS})
SET_TARGET_PROPERTIES(TSRM PROPERTIES VERSION 0.0.0)

#ADD_EXECUTABLE(TSRM ${TSRM_executable_SRCS})

# add install target:
#INSTALL(TARGETS TSRM DESTINATION lib)
