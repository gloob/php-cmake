## CMake CLI File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

message("PHP_EXTENSION_SOURCE_LIST: ${PHP_EXTENSIONS_SOURCE_LIST}")
message("SAPI EXTENSION LIST: ${EXTENSION_LIST}")

add_executable(php php_cli.c php_cli_readline.c ${PHP_ZEND_SOURCES})
target_link_libraries(php Zend main TSRM ${EXTENSION_LIST} ${PHP_ZEND_LIBRARIES} ${PHP_ZEND_OBJECTS})
