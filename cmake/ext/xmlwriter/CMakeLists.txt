## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: xmlwriter



set(EXT_XMLWRITER_SOURCES
  php_xmlwriter.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_XMLWRITER ${EXT_XMLWRITER_SOURCES})
##target_link_libraries(EXT_XMLWRITER ${@@EXTENSION_LIBRARIES@@})
