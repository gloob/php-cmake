#  PHP_ARG_ENABLE
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

# TODO: PHP_ENABLE_ALL ? 
#

macro(PHP_ARG_ENABLE arg-name check-msg help-msg)

  if (${ARGC} GREATER 3)
    set(default-val ${ARGV3})
  else (${ARGC} GREATER 3)
    set(default-val "no")
  endif (${ARGC} GREATER 3)

  if (${ARGC} GREATER 4)
    set(is-extension ${ARGV4})
  else (${ARGC} GREATER 4)
    set(is-extension "yes")
  endif (${ARGC} GREATER 4)

#  if (${default-val} STREQUAL "yes")
#    set(default-val ON BOOL)
#  else (${default-val} STREQUAL "yes")
#    set(default-val OFF BOOL)
#  endif(${default-val} STREQUAL "yes")

#  if (${is-extension} STREQUAL "yes")
#    set(is-extension ON BOOL)
#  else (${is-extension} STREQUAL "yes")
#    set(is-extension OFF BOOL)
#  endif(${is-extension} STREQUAL "yes")


  string(TOUPPER ${arg-name} arg-name-upper)

  set(PHP_${arg-name-upper} ${is-extension}) 
  message("PHP_${arg-name-upper}: ${arg-name-upper}")
  message("PHP_CTYPE: ${PHP_CTYPE}")

  message("PHP_ARG_ENABLE ${arg-name} ${check-msg} ${help-msg} ${default-val} ${is-extension}")

endmacro(PHP_ARG_ENABLE)
