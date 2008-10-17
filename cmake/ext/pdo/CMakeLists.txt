## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: pdo

option(pdo "Enable pdo support" ON)
option(pdo-shared "Shared pdo" OFF)


set(EXT_PDO_SOURCES
  pdo.c pdo_dbh.c pdo_stmt.c pdo_sql_parser.c pdo_sqlstate.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_PDO ${EXT_PDO_SOURCES})
##target_link_libraries(EXT_PDO ${@@EXTENSION_LIBRARIES@@})
