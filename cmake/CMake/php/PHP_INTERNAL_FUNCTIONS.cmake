#  PHP internal_functions
#
#  Copyright (c) 2008 Alejandro Leiva <gloob@php.net>
#
# $Id$

# @EXT_INCLUDE_CODE@
# @EXT_MODULE_PTRS@

## TODO:
## * Port build/genif.sh + build/order_by_dep.awk + build/print_include.awk
##   to CMake script.

macro(PHP_INTERNAL_FUNCTIONS exts_list exts_cli_list target)

	string(REPLACE ${PHP_SOURCE_DIR} "" relative_target ${target})
	message("[php-CMake]: Creating ${relative_target}")
	
	# 1. mv target target.old
	#file(READ ${target} target_contents)
	#file(WRITE "${target}.old" ${target_contents})
	
	# 2. call to genif.sh
	#file(WRITE "{PHP_BINARY_DIR}/ext.list" ${exts_list})
	execute_process(COMMAND "sh" "${PHP_SOURCE_DIR}/build/genif.sh" 
					"${PHP_SOURCE_DIR}/main/internal_functions.c.in"
					"${PHP_SOURCE_DIR}"
					""
					"awk"
					${exts_list}
					OUTPUT_VARIABLE process_out
					)
	# check if all went fine.
	file(WRITE "${target}" ${process_out})
	#message("execute: ${process_out}")

endmacro(PHP_INTERNAL_FUNCTIONS)