## CMake extension file for readline.
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id: ext_cmake.tpl 34 2008-10-17 08:57:31Z gloob $

# Extension: readline

option(readline "Enable readline support" ON)
option(readline-shared "Shared readline" OFF)
option(readline-sapi "readline SAPI class" "cli")




set(EXT_READLINE_SOURCES
  readline.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_READLINE ${EXT_READLINE_SOURCES})
##target_link_libraries(EXT_READLINE ${@@EXTENSION_LIBRARIES@@})
