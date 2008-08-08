# ########## Project setup ##########
PROJECT(main C)
CMAKE_MINIMUM_REQUIRED(VERSION 2.4.5)

# Includes
message("$$ including: ${CMAKE_CURRENT_SOURCE_DIR}")
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR})


# ######### General setup ##########
INCLUDE_DIRECTORIES(${main_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR})

## Automatic way ? <- REFACTOR THIS
INCLUDE_DIRECTORIES(${PHP_SOURCE_DIR}/Zend)
INCLUDE_DIRECTORIES(${PHP_SOURCE_DIR}/TSRM)
INCLUDE_DIRECTORIES(${PHP_SOURCE_DIR}/ext/date/lib)

SET(PHP_main_LIBRARIES)


# ########## main library ##########
# Sources:
SET(main_library_SRCS
    internal_functions.c
    internal_functions_cli.c
#    internal_functions_nw.c
#    internal_functions_win32.c
    main.c
    snprintf.c
    spprintf.c
    php_sprintf.c
    safe_mode.c
    fopen_wrappers.c
    alloca.c
    php_scandir.c
    php_ini.c
    SAPI.c
    rfc1867.c
    php_content_types.c
    strlcpy.c
    strlcat.c
    mergesort.c
    reentrancy.c
    php_variables.c
    php_ticks.c
    network.c
    php_open_temporary_file.c
    php_logos.c
    output.c
    getopt.c

    streams/streams.c
    streams/cast.c
    streams/memory.c
    streams/filter.c
    streams/plain_wrapper.c
    streams/userspace.c
    streams/transports.c
    streams/xp_socket.c
    streams/mmap.c
    streams/glob_wrapper.c

    internal_functions.c
)


# Headers:
SET(main_library_HDRS
    build-defs.h
    fopen_wrappers.h
    logos.h
    php.h
    php_compat.h
#    php_config.h
    php_content_types.h
    php_getopt.h
    php_globals.h
    php_ini.h
    php_logos.h
    php_main.h
    php_memory_streams.h
    php_network.h
    php_open_temporary_file.h
    php_output.h
    php_reentrancy.h
    php_scandir.h
    php_streams.h
    php_syslog.h
    php_ticks.h
    php_variables.h
    php_version.h
    rfc1867.h
    SAPI.h
    safe_mode.h
    snprintf.h
    spprintf.h
    win95nt.h
)

CONFIGURE_FILE(internal_functions.c.in ${CMAKE_SOURCE_DIR}/internal_functions.c)

add_definitions("-DPHP_ATOM_INC")
#add_definitions("-fvisibility=hidden")
#add_definitions("-no-cpp-precomp")
#add_definitions("-O2")

# actual target:
ADD_LIBRARY(main ${main_library_SRCS} ${main_library_HDRS})
SET_TARGET_PROPERTIES(main PROPERTIES VERSION 0.0.0)

# add install target:
INSTALL(TARGETS main DESTINATION lib)
