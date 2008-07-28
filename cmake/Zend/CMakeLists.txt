## CMake Zend File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

cmake_minimum_required(VERSION 2.4.5)
project(Zend C)

# Includes
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_BINARY_DIR})

# ######### General setup ##########
message("A: ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR}")
message("CMAKE_SOURCE_DIR: ${CMAKE_SOURCE_DIR}")
#include_directories(${CMAKE_SOURCE_DIR})

## Constants
set(BISON_MINIMAL_VERSION "2.3")
set(RE2C_MINIMAL_VERSION 1304)


## Automatic way ? dependency ?
include_directories(${PHP_SOURCE_DIR}/TSRM)
message("PHP_SOURCE_DIR: ${PHP_SOURCE_DIR}")

find_package(BISON)

if(BISON_FOUND)
  if(BISON_VERSION LESS ${BISON_MINIMAL_VERSION})
    message(STATUS "Bison version should be greater than 2.3")
  endif(BISON_VERSION LESS ${BISON_MINIMAL_VERSION})
endif(BISON_FOUND)

find_package(RE2C)

if(RE2C_FOUND)
  if(RE2C_VERNUM LESS ${RE2C_MINIMAL_VERSION})
    message(STATUS "You will need re2c 0.13.4 or later if you want to regenerate PHP parsers.")
  endif(RE2C_VERNUM LESS ${RE2C_MINIMAL_VERSION})
endif(RE2C_FOUND)

# Language parser/scanner rules
find_file(ZEND_LANGUAGE_SCANNER NAMES "zend_language_scanner.c" "zend_language_scanner.h" PATHS ${Zend_SOURCE_DIR})

if(NOT ZEND_LANGUAGE_SCANNER AND NOT RE2C_FOUND)
  message(FATAL_ERROR "You need r2c to regenerate zend_language_scanner.c")
endif(NOT ZEND_LANGUAGE_SCANNER AND NOT RE2C_FOUND)

if(NOT ZEND_LANGUAGE_SCANNER)
  message("Regenerating zend_language_scanner")
  RE2C_TARGET(${Zend_SOURCE_DIR}/zend_language_scanner.l ${Zend_SOURCE_DIR}/zend_language_scanner.c "--case-inverted -cbdFt ${Zend_SOURCE_DIR}/zend_language_scanner_defs.h")
endif(NOT ZEND_LANGUAGE_SCANNER)


## Regenerate always ? some options force ?
if(NOT EXISTS "zend_language_parser.c" OR NOT EXISTS "zend_language_parser.h" AND NOT BISON_FOUND)
  message(FATAL_ERROR "You need bison parser to regenerate zend_language_parser.c")
endif(NOT EXISTS "zend_language_parser.c" OR NOT EXISTS "zend_language_parser.h" AND NOT BISON_FOUND)

if(BISON_FOUND)
	BISON_TARGET(zend ${Zend_SOURCE_DIR}/zend_language_parser.y ${Zend_SOURCE_DIR}/zend_language_parser.c)
endif(BISON_FOUND)

# INI parser/scanner rules
if (BISON_FOUND)
	BISON_TARGET(ini_ ${Zend_SOURCE_DIR}/zend_ini_parser.y ${Zend_SOURCE_DIR}/zend_ini_parser.c)
endif (BISON_FOUND)

find_file(ZEND_INI_SCANNER "zend_ini_scanner.c" PATHS ${Zend_SOURCE_DIR})
if(NOT ZEND_INI_SCANNER)
  message("Regenerating zend_ini_scanner")
  RE2C_TARGET(${Zend_SOURCE_DIR}/zend_ini_scanner.l ${Zend_SOURCE_DIR}/zend_ini_scanner.c "--case-inverted -cbdFt ${Zend_SOURCE_DIR}/zend_ini_scanner_defs.h")
endif(NOT ZEND_INI_SCANNER)

set(PHP_ZEND_LIBRARIES)

# Linux sources...

# ########## Zend library ##########
# Sources:
set(Zend_library_SRCS

  zend_alloc.c
  zend_compile.c
  zend_constants.c
  zend_dynamic_array.c
  zend_execute.c
  zend_execute_API.c
  zend_highlight.c
  zend_ini_scanner.c
  zend_llist.c
  zend_opcode.c
  zend_operators.c
  zend_ptr_stack.c
  zend_stack.c
  zend_variables.c
  zend.c
  zend_API.c
  zend_extensions.c
  zend_hash.c
  zend_list.c
  zend_indent.c
  zend_builtin_functions.c
  zend_sprintf.c
  zend_ini.c
  zend_qsort.c
  zend_objects.c
  zend_object_handlers.c
  zend_objects_API.c
  zend_ts_hash.c
  zend_stream.c
  zend_default_classes.c
  zend_iterators.c
  zend_interfaces.c
  zend_exceptions.c
  zend_strtod.c
  zend_gc.c

  zend_language_scanner.c
  zend_language_parser.c
  zend_ini_scanner.c
  zend_ini_parser.c
)

# Headers:
set(Zend_library_HDRS
    acconfig.h
    zend.h
    zend_alloc.h
    zend_API.h
    zend_builtin_functions.h
    zend_compile.h
    zend_config.nw.h
    zend_config.w32.h
    zend_constants.h
    zend_dynamic_array.h
    zend_errors.h
    zend_exceptions.h
    zend_execute.h
    zend_extensions.h
    zend_fast_cache.h
    zend_gc.h
    zend_globals.h
    zend_globals_macros.h
    zend_hash.h
    zend_highlight.h
    zend_indent.h
    zend_ini.h
    zend_ini_scanner.h
    zend_ini_scanner_defs.h
    zend_interfaces.h
    zend_istdiostream.h
    zend_iterators.h
    zend_language_scanner.h
    zend_language_scanner_defs.h
    zend_list.h
    zend_llist.h
    zend_modules.h
    zend_multiply.h
    zend_object_handlers.h
    zend_objects.h
    zend_objects_API.h
    zend_operators.h
    zend_ptr_stack.h
    zend_qsort.h
    zend_stack.h
    zend_static_allocator.h
    zend_stream.h
    zend_strtod.h
    zend_ts_hash.h
    zend_types.h
    zend_variables.h
    zend_vm.h
    zend_vm_def.h
    zend_vm_execute.h
    zend_vm_opcodes.h
)

# actual target:
add_library(Zend ${Zend_library_SRCS} ${Zend_library_HDRS} ${BISON_zend_OUTPUTS} ${BISON_ini__OUTPUTS})
set_target_properties(Zend PROPERTIES VERSION 0.0.0)

# add install target:
#install(TARGETS Zend DESTINATION lib)
