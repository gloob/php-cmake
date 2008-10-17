## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: iconv

option(iconv "Enable iconv support" ON)
option(iconv-shared "Shared iconv" OFF)

set(HAVE_ICONV 1)

find_package(ICONV)
if(ICONV_FOUND)
  message("ICONV Found")
endif(ICONV_FOUND)

set(EXT_ICONV_SOURCES
  iconv.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_ICONV ${EXT_ICONV_SOURCES})
if(ICONV_FOUND)
  target_link_libraries(EXT_ICONV ${ICONV_LIBRARY})
endif(ICONV_FOUND)

