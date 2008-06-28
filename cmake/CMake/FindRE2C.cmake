# - Try to find re2c
# Once done this will define
#
#  RE2C_FOUND - system has re2c
#  RE2C_EXECUTABLE - the re2c executable path
#  RE2C_VERNUM - version of re2c
#
#  Copyright (c) 2008 Alejandro Leiva <gloob@php.net>
#
#  Redistribution and use is allowed according to the terms of the New
#  BSD license.
#  For details see the accompanying COPYING-CMAKE-SCRIPTS file.
#
# $Id$

set(RE2C_FOUND FALSE)

find_program(RE2C_EXECUTABLE NAMES re2c DOC "path to re2c executable")
mark_as_advanced(RE2C_EXECUTABLE)

if(RE2C_EXECUTABLE)
  set(RE2C_FOUND TRUE)
  # check version
  execute_process(COMMAND ${RE2C_EXECUTABLE} --vernum
    RESULT_VARIABLE RE2C_version_result
    OUTPUT_VARIABLE RE2C_version_output
    ERROR_VARIABLE RE2C_version_error
    OUTPUT_STRIP_TRAILING_WHITESPACE)
#  message("RE2C_version_result:${RE2C_version_result} RE2C_version_output:${RE2C_version_output} RE2C_version_error:${RE2C_version_error}")
  if(RE2C_version_result EQUAL 0)
    message(SEND_ERROR "Command \"${RE2C_EXECUTABLE} --vernum\" failed with output:\n${RE2C_version_error}")
  else(RE2C_version_result EQUAL )
    set(RE2C_VERNUM ${RE2C_version_output})
  endif(RE2C_version_result EQUAL 0)

  #set call macro
  macro(RE2C_TARGET Input Output Args)
    set(RE2C_EXECUTABLE_opts ${Args})
    add_custom_command(OUTPUT ${Output}
      COMMMAND ${RE2C_EXECUTABLE} ${RE2C_EXECUTABLE_opts} -o${Output} ${Input}
#      DEPENDS ${Input}
      COMMENT "[RE2C] Building re2c scanner with ${RE2C_EXECUTABLE} ${RE2C_VERSION}"
      WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})
    message("${RE2C_EXECUTABLE} ${RE2C_EXECUTABLE_opts} -o${Output} ${Input}")
  endmacro(RE2C_TARGET)
endif(RE2C_EXECUTABLE)

if(NOT RE2C_FOUND)
  message(SEND_ERROR "re2c was not found.")
endif(NOT RE2C_FOUND)