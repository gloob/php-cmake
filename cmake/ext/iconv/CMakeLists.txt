## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: iconv


set(EXT_ICONV_SOURCES
  iconv.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_ICONV ${EXT_ICONV_SOURCES})
##target_link_libraries(EXT_ICONV ${@@EXTENSION_LIBRARIES@@})
