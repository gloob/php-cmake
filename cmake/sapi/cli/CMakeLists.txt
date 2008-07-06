## CMake CLI File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

#foreach(f ${PHP_EXTENSIONS_SOURCE_LIST})
#  set(EXT_SOURCE ${EXT_SOURCE} ${f})
#endforeach(f)

include_directories(${PHP_SOURCE_DIR})
include_directories(${PHP_SOURCE_DIR}/main)
include_directories(${PHP_SOURCE_DIR}/Zend)
include_directories(${PHP_SOURCE_DIR}/TSRM)
include_directories(${PHP_SOURCE_DIR}/ext)

message("EXT_SOURCE: ${EXT_SOURCE}")

add_executable(php php_cli.c php_cli_readline.c ${EXT_SOURCE})
target_link_libraries(php Zend main TSRM)
