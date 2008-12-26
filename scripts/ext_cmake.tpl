## CMake extension file for @@EXTENSION_NAME@@.
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: @@EXTENSION_NAME@@

option(@@EXTENSION_NAME@@ "Enable @@EXTENSION_NAME@@ support" ON)
option(@@EXTENSION_NAME@@-shared "Shared @@EXTENSION_NAME@@" OFF)
option(@@EXTENSION_NAME@@-sapi "@@EXTENSION_NAME@@ SAPI class" "@@EXTENSION_SAPI@@")


@@EXTENSION_DEFINITIONS@@

set(@@EXTENSION_SOURCES_GROUP@@
  @@EXTENSION_SOURCES@@
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(@@EXTENSION_TARGET@@ ${@@EXTENSION_SOURCES_GROUP@@})
##target_link_libraries(@@EXTENSION_TARGET@@ ${@@EXTENSION_LIBRARIES@@})
