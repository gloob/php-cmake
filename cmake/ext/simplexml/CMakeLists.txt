## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: simplexml

option(simplexml "Enable simplexml support" ON)
option(simplexml-shared "Shared simplexml" OFF)

set(HAVE_SIMPLEXML 1)

set(EXT_SIMPLEXML_SOURCES
  simplexml.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_SIMPLEXML ${EXT_SIMPLEXML_SOURCES})
target_link_libraries(EXT_SIMPLEXML EXT_LIBXML)
