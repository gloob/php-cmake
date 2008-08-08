## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: reflection



set(EXT_REFLECTION_SOURCES
  php_reflection.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_REFLECTION ${EXT_REFLECTION_SOURCES})
##target_link_libraries(EXT_REFLECTION ${@@EXTENSION_LIBRARIES@@})
