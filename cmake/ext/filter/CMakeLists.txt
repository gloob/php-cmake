## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: filter
project(filter C)

option(filter "Enable filter support" ON)
option(filter-shared "Shared filter" OFF)

set(EXT_FILTER_SOURCES
  filter.c sanitizing_filters.c logical_filters.c callback_filter.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_FILTER ${EXT_FILTER_SOURCES})
##target_link_libraries(EXT_FILTER ${@@EXTENSION_LIBRARIES@@})
target_link_libraries(EXT_FILTER EXT_PCRE)
