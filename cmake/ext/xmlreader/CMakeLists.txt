## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: xmlreader

option(xmlreader "Enable xmlreader support" ON)
option(xmlreader-shared "Shared xmlreader" OFF)


set(EXT_XMLREADER_SOURCES
  php_xmlreader.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_XMLREADER ${EXT_XMLREADER_SOURCES})
target_link_libraries(EXT_XMLREADER EXT_LIBXML)
target_link_libraries(EXT_XMLREADER ${LIBXML2_LIBRARIES})
#target_link_libraries(EXT_XMLREADER "/opt/local/lib/libxml2.dylib")
