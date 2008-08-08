## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: @@EXTENSION_NAME@@

@@EXTENSION_DEFINITIONS@@

set(@@EXTENSION_SOURCES_GROUP@@
  @@EXTENSION_SOURCES@@
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(@@EXTENSION_TARGET@@ ${@@EXTENSION_SOURCES_GROUP@@})
##target_link_libraries(@@EXTENSION_TARGET@@ ${@@EXTENSION_LIBRARIES@@})
