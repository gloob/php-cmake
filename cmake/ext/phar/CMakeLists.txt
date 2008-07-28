## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

if(WIN32)
  set(HAVE_DOM 1)
endif(WIN32)

set(EXT_PHAR_SOURCES
  util.c tar.c zip.c stream.c func_interceptors.c
  dirstream.c phar.c phar_object.c phar_path_check.c
)

#add_library(EXT_PHAR [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_PHAR ${EXT_PHAR_SOURCES})
