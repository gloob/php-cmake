## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: pdo_sqlite

include_directories(${EXTENSION_DIR})

set(EXT_PDO_SQLITE_SOURCES
  pdo_sqlite.c sqlite_driver.c sqlite_statement.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_PDO_SQLITE ${EXT_PDO_SQLITE_SOURCES})
target_link_libraries(EXT_PDO_SQLITE EXT_SQLITE3)
