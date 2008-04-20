#
# $Id$


## TODO:
# Manage win32 issues...

# ########## Project setup ##########
PROJECT(TSRM)
CMAKE_MINIMUM_REQUIRED(VERSION 2.4.5)

# ######### General setup ##########
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR})

MESSAGE("TSRM_SOURCE_DIR: ${TSRM_SOURCE_DIR}")
INCLUDE_DIRECTORIES(${TSRM_SOURCE_DIR})


# ########## TSRM executable ##########
# Sources:
SET(TSRM_library_SRCS
    TSRM.c
    tsrm_nw.c
    tsrm_strtok_r.c
    tsrm_virtual_cwd.c
#    tsrm_win32.c
)

# Headers:
SET(TSRM_library_HDRS
    acconfig.h
    readdir.h
    TSRM.h
    tsrm_config.h
#    tsrm_config.w32.h
    tsrm_config_common.h
    tsrm_nw.h
    tsrm_strtok_r.h
    tsrm_virtual_cwd.h
#    tsrm_win32.h
)


# actual target:
ADD_LIBRARY(TSRM ${TSRM_library_SRCS} ${TSRM_library_HDRS})
SET_TARGET_PROPERTIES(TSRM PROPERTIES VERSION 0.0.0)

#ADD_EXECUTABLE(TSRM ${TSRM_executable_SRCS})

# add install target:
INSTALL(TARGETS TSRM DESTINATION lib)
