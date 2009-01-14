## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: session

option(session "Enable session support" ON)
option(session-shared "Shared session" OFF)

include_directories(${PHP_BINARY_DIR}/ext/date/lib/)


set(EXT_SESSION_SOURCES
  session.c mod_files.c mod_mm.c mod_user.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_SESSION ${EXT_SESSION_SOURCES})
##target_link_libraries(EXT_SESSION ${@@EXTENSION_LIBRARIES@@})
