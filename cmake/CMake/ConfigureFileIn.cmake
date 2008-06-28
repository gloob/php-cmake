# - Process file as configure file () and add definition 
# CONFIGURE_FILE_IN(SOURCE TARGET)
# - macro which checks if the source code compiles
#  SOURCE   - source code to try to configure
#  TARGET   - configuration target filename
#
# The following variables may be set before calling this macro to
# modify the way the check is run:
#
#  CONFIGURE_IN_REQUIRED_LIBRARIES = list of libraries to link

MACRO(configure_file_in SOURCE TARGET)

  if(${ARGC} GREATER 2)
    if(${ARGC} EQUAL 4)
      if("${ARGV2}" STREQUAL "DIRECTORY")
        set(DIR "${ARGV3}")
      else("${ARGV2}" STREQUAL "DIRECTORY")
        message(SEND_ERROR "syntax error: CONFIGURE_FILE_IN(<source> <target> [DIR <source_directory>])")
      endif("${ARGV2}" STREQUAL "DIRECTORY")
    else(${ARGC} EQUAL 4)
      message(SEND_ERROR "syntax error: CONFIGURE_FILE_IN(<source> <target> [DIR <source_directory>])")
    endif(${ARGC} EQUAL 4)
  else(${ARGC} GREATER 2)
    set(DIR ".")
  endif(${ARGC} GREATER 2)

  message("CONFIGURE_FILE_IN ${SOURCE} ${TARGET} ${DIR}")
  # Process SOURCE to TARGET.
  message("CONFIGURE_FILE ${CMAKE_CURRENT_SOURCE_DIR}/${DIR}/${SOURCE} ${CMAKE_CURRENT_BINARY_DIR}/${DIR}/${TARGET}") 
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${DIR}/${SOURCE} ${CMAKE_CURRENT_BINARY_DIR}/${DIR}/${TARGET})
  # Add -DHAVE_{TARGET}.
#  add_definitions(-DHAVE_${TARGET})
  # Make sure TARGET can be found.
  message("INCLUDE_DIRECTORIES ${CMAKE_CURRENT_BINARY_DIR}/${DIR}")
  INCLUDE_DIRECTORIES(${CMAKE_CURRENT_BINARY_DIR}/${DIR})

ENDMACRO(configure_file_in)
