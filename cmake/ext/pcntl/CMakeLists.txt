## CMake extension file for pcntl.
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id: ext_cmake.tpl 34 2008-10-17 08:57:31Z gloob $

# Extension: pcntl

option(pcntl "Enable pcntl support" ON)
option(pcntl-shared "Shared pcntl" OFF)
option(pcntl-sapi "pcntl SAPI class" "cli")




set(EXT_PCNTL_SOURCES
  pcntl.c php_signal.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_PCNTL ${EXT_PCNTL_SOURCES})
##target_link_libraries(EXT_PCNTL ${@@EXTENSION_LIBRARIES@@})
