## CMake ctype File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

PHP_ARG_ENABLE(ctype "whether to enable ctype functions" "[  --disable-ctype         Disable ctype functions]" yes)

if(PHP_CTYPE)
  set(HAVE_CTYPE 1)
  PHP_NEW_EXTENSION(ctype "${CMAKE_CURRENT_SOURCE_DIR}/ctype/ctype.c" {PHP_EXTENSION_SHARED})
endif(PHP_CTYPE)
