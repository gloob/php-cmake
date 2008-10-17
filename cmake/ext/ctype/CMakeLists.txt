## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: ctype

option(ctype "Enable ctype support" ON)
option(ctype-shared "Shared ctype" OFF)


set(EXT_CTYPE_SOURCES
  ctype.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_CTYPE ${EXT_CTYPE_SOURCES})
##target_link_libraries(EXT_CTYPE ${@@EXTENSION_LIBRARIES@@})
