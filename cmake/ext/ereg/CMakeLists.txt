## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: ereg

#include_directories("")


set(EXT_EREG_SOURCES
  ereg.c regex/regcomp.c regex/regexec.c regex/regerror.c regex/regfree.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_EREG ${EXT_EREG_SOURCES})
##target_link_libraries(EXT_EREG ${@@EXTENSION_LIBRARIES@@})
