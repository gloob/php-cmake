## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: pdo_sqlite

option(pdo_sqlite "Enable pdo_sqlite support" ON)
option(pdo_sqlite-shared "Shared pdo_sqlite" OFF)

include_directories(${EXTENSION_DIR})
include_directories("${EXTENSION_DIR}/sqlite3/libsqlite")

set(EXT_PDO_SQLITE_SOURCES
  pdo_sqlite.c sqlite_driver.c sqlite_statement.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_PDO_SQLITE ${EXT_PDO_SQLITE_SOURCES})
target_link_libraries(EXT_PDO_SQLITE EXT_SQLITE3)
