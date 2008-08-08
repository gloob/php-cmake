## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: sqlite3

#include_directories("")
set(sqlite3_extra_sources libsqlite/sqlite3.c)


set(EXT_SQLITE3_SOURCES
  sqlite3.c ${sqlite3_extra_sources}
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_SQLITE3 ${EXT_SQLITE3_SOURCES})
##target_link_libraries(EXT_SQLITE3 ${@@EXTENSION_LIBRARIES@@})
