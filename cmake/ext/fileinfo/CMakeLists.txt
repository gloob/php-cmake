## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: fileinfo

option(fileinfo "Enable fileinfo support" ON)
option(fileinfo-shared "Shared fileinfo" OFF)

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/libmagic")

set(EXT_FILEINFO_SOURCES
  fileinfo.c  
    libmagic/apprentice.c libmagic/apptype.c libmagic/ascmagic.c 
    libmagic/compress.c libmagic/fsmagic.c libmagic/funcs.c 
    libmagic/getopt_long.c libmagic/is_tar.c libmagic/magic.c libmagic/print.c 
    libmagic/readelf.c libmagic/softmagic.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_FILEINFO ${EXT_FILEINFO_SOURCES})
##target_link_libraries(EXT_FILEINFO ${@@EXTENSION_LIBRARIES@@})
