## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: json



set(EXT_JSON_SOURCES
  json.c utf8_to_utf16.c utf8_decode.c JSON_parser.c
)


#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_JSON ${EXT_JSON_SOURCES})
##target_link_libraries(EXT_JSON ${@@EXTENSION_LIBRARIES@@})
