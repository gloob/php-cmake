## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

## CANNOT BE SHARED

set(EXT_XML_SOURCES
  libxml.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_XML ${EXT_XML_SOURCES})
target_link_libraries(EXT_XML ${LIBXML2_LIBRARIES})
