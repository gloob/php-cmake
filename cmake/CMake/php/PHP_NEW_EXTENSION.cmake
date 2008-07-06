#  PHP_NEW_EXTENSION
#
#  Copyright (c) 2008 The PHP Group
#
#  Author: Alejandro Leiva <gloob@php.net>
#
#  Redistribution and use is allowed according to the terms of the New
#  BSD license.
#  For details see the accompanying COPYING-CMAKE-SCRIPTS file.
#
#  $Id$

macro(PHP_NEW_EXTENSION extname sources)

  if (${ARGC} GREATER 2)
    set(shared ${ARGV2})
  else (${ARGC} GREATER 2)
    set(shared ON)
  endif (${ARGC} GREATER 2)

  message("PHP_NEW_EXTENSION ${extname} ${sources} ${shared} ${sapi_class} ${extra_cflags}")
  list(APPEND PHP_EXTENSIONS_SOURCE_LIST ${sources})

endmacro(PHP_NEW_EXTENSION)
