## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$


## This extension is not well parsed by ext_to_cmake.php!!

# Extension: pcre
project(pcre)

## Check if user provided --with-pcre-regex
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/pcrelib")

set(PCRELIB_SOURCES pcrelib/pcre_chartables.c pcrelib/pcre_ucp_searchfuncs.c 
pcrelib/pcre_compile.c pcrelib/pcre_config.c pcrelib/pcre_exec.c 
pcrelib/pcre_fullinfo.c pcrelib/pcre_get.c pcrelib/pcre_globals.c 
pcrelib/pcre_info.c pcrelib/pcre_maketables.c pcrelib/pcre_newline.c 
pcrelib/pcre_ord2utf8.c pcrelib/pcre_refcount.c pcrelib/pcre_study.c 
pcrelib/pcre_tables.c pcrelib/pcre_try_flipped.c pcrelib/pcre_valid_utf8.c 
pcrelib/pcre_version.c pcrelib/pcre_xclass.c)

set(EXT_PCRE_SOURCES
  php_pcre.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_PCRE STATIC ${PCRELIB_SOURCES} ${EXT_PCRE_SOURCES})
##target_link_libraries(EXT_PCRE ${@@EXTENSION_LIBRARIES@@})
