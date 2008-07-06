## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

set(HAVE_DATE 1)

list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/astro.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/timelib.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/dow.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/parse_date.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/parse_tz.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/tm2unixtime.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/unixtime2tm.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/parse_iso_intervals.c)
list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/lib/interval.c)

list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${CMAKE_CURRENT_SOURCE_DIR}/date/php_date.c)

#set(DATELIB_SOURCES "astro.c timelib.c dow.c parse_date.c parse_tz.c tm2unixtime.c unixtime2tm.c parse_iso_intervals.c interval.c")
#set(DATE_EXTENSION_SOURCES "php_date.c ${DATELIB_SOURCES}")

#PHP_NEW_EXTENSION(date ${DATE_EXTENSION_SOURCES} {PHP_EXTENSION_SHARED})
