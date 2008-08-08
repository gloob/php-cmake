## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: spl


set(EXT_SPL_SOURCES
  php_spl.c spl_functions.c spl_engine.c spl_iterators.c spl_array.c spl_directory.c spl_sxe.c spl_exceptions.c spl_observer.c spl_dllist.c spl_heap.c spl_fixedarray.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_SPL ${EXT_SPL_SOURCES})
target_link_libraries(EXT_SPL EXT_PCRE)
