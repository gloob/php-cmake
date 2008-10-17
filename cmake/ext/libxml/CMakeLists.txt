## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

## CANNOT BE SHARED
option(libxml "Enable libxml support" ON)
#option(libxml-shared "Shared libxml" OFF)

set(HAVE_LIBXML 1)

set(EXT_XML_SOURCES
  libxml.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_LIBXML STATIC ${EXT_XML_SOURCES})
target_link_libraries(EXT_LIBXML ${LIBXML2_LIBRARIES})
