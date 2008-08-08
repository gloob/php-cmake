## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: sqlite

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/libsqlite/src")


set(SQLITE_EXTRA_SOURCES libsqlite/src/opcodes.c 
        libsqlite/src/parse.c libsqlite/src/encode.c 
        libsqlite/src/auth.c libsqlite/src/btree.c libsqlite/src/build.c 
        libsqlite/src/delete.c libsqlite/src/expr.c libsqlite/src/func.c 
        libsqlite/src/hash.c libsqlite/src/insert.c libsqlite/src/main.c 
        libsqlite/src/os.c libsqlite/src/pager.c 
        libsqlite/src/printf.c libsqlite/src/random.c 
        libsqlite/src/select.c libsqlite/src/table.c libsqlite/src/tokenize.c 
        libsqlite/src/update.c libsqlite/src/util.c libsqlite/src/vdbe.c 
        libsqlite/src/attach.c libsqlite/src/btree_rb.c libsqlite/src/pragma.c 
        libsqlite/src/vacuum.c libsqlite/src/copy.c 
        libsqlite/src/vdbeaux.c libsqlite/src/date.c
        libsqlite/src/where.c libsqlite/src/trigger.c)

set(EXT_SQLITE_SOURCES
  sqlite.c sess_sqlite.c pdo_sqlite2.c ${SQLITE_EXTRA_SOURCES}
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_SQLITE ${EXT_SQLITE_SOURCES})
target_link_libraries(EXT_SQLITE EXT_SPL)
