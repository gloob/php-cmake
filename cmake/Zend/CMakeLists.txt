# ########## Project setup ##########
PROJECT(Zend)
CMAKE_MINIMUM_REQUIRED(VERSION 2.4.5)

# ######### General setup ##########
MESSAGE("Zend_SOURCE_DIR: ${Zend_SOURCE_DIR}")
MESSAGE("CMAKE_SOURCE_DIR: ${CMAKE_SOURCE_DIR}")
INCLUDE_DIRECTORIES(${Zend_SOURCE_DIR})
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR})

## Automatic way ?
INCLUDE_DIRECTORIES(${PHP_SOURCE_DIR}/TSRM)
MESSAGE("PHP_SOURCE_DIR: ${PHP_SOURCE_DIR}")

INCLUDE(FindICU)
## From http://public.kitware.com/Bug/view.php?id=4018
#INCLUDE(FindFLEX)
#INCLUDE(FindBISON)

FIND_PACKAGE(BISON)

# QUESTION: FIND_PACKAGE(NAME) == INCLUDE(FindNAME) ?

BISON_TARGET(zend ${Zend_SOURCE_DIR}/zend_language_parser.y ${Zend_SOURCE_DIR}/zend_language_parser.c)
BISON_TARGET(ini_ ${Zend_SOURCE_DIR}/zend_ini_parser.y ${Zend_SOURCE_DIR}/zend_ini_parser.c)
#FLEX_TARGET(zend ${Zend_SOURCE_DIR}/zend_language_parser.l ${Zend_SOURCE_DIR}/zend_langugae_parser.c)


SET(PHP_ZEND_LIBRARIES)

if (ICU_FOUND AND ICU_I18N_FOUND)
#  add_definitions(-DPHP_HAS_ICU=2)
	MESSAGE("Found ICU: ${ICU_INCLUDE_DIRS}")
	include_directories(${ICU_INCLUDE_DIRS})
	set(PHP_ZEND_LIBRARIES ${ICU_LIBRARIES} ${ICU_I18N_LIBRARIES})
endif (ICU_FOUND AND ICU_I18N_FOUND)


# ########## Zend library ##########
# Sources:
SET(Zend_library_SRCS
    zend.c
    zend_alloc.c
    zend_API.c
    zend_arg_defs.c
    zend_builtin_functions.c
    zend_compile.c
    zend_constants.c
    zend_default_classes.c
    zend_dynamic_array.c
    zend_exceptions.c
    zend_execute.c
    zend_execute_API.c
    zend_extensions.c
    zend_gc.c
    zend_hash.c
    zend_highlight.c
    zend_indent.c
    zend_ini.c
    zend_ini_parser.c
    zend_ini_scanner.c
    zend_interfaces.c
    zend_iterators.c
    zend_language_parser.c
    zend_language_scanner.c
    zend_list.c
    zend_llist.c
    zend_object_handlers.c
    zend_objects.c
    zend_objects_API.c
    zend_opcode.c
    zend_operators.c
    zend_ptr_stack.c
    zend_qsort.c
    zend_sprintf.c
    zend_stack.c
    zend_static_allocator.c
    zend_stream.c
    zend_strtod.c
    zend_strtol.c
    zend_ts_hash.c
    zend_unicode.c
    zend_variables.c
)

# Headers:
SET(Zend_library_HDRS
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
    zend_unicode.h
    zend_variables.h
    zend_vm.h
    zend_vm_def.h
    zend_vm_execute.h
    zend_vm_opcodes.h
)

# actual target:
ADD_LIBRARY(Zend ${Zend_library_SRCS} ${Zend_library_HDRS})
SET_TARGET_PROPERTIES(Zend PROPERTIES VERSION 0.0.0)

# add install target:
INSTALL(TARGETS Zend DESTINATION lib)
