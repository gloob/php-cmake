## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$


option(date "Enable date support" ON)
option(date-shared "Shared date" OFF)

set(HAVE_DATE 1)

configure_file_in(timelib_config.h.cmake timelib_config.h DIRECTORY lib/)

set(EXT_DATE_SOURCES
  lib/astro.c
  lib/timelib.c
  lib/dow.c
  lib/parse_date.c
  lib/parse_tz.c
  lib/tm2unixtime.c
  lib/unixtime2tm.c
  lib/parse_iso_intervals.c
  lib/interval.c
  php_date.c
)

set(EXT_DATE_HEADERS
  lib/timelib.h
)

#add_library(EXT_DATE [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_DATE ${EXT_DATE_SOURCES} ${EXT_DATE_HEADERS})

#PHP_NEW_EXTENSION(date ${DATE_EXTENSION_SOURCES} {PHP_EXTENSION_SHARED})
