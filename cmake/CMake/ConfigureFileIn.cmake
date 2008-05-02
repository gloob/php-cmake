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

MACRO(CONFIGURE_FILE_IN SOURCE TARGET DIR)

  MESSAGE("CONFIGURE_FILE_IN ${SOURCE} ${TARGET}")
  # Process SOURCE to TARGET.
  MESSAGE("CONFIGURE_FILE ${CMAKE_CURRENT_SOURCE_DIR}/${DIR}/${SOURCE} ${CMAKE_CURRENT_BINARY_DIR}/${DIR}/${TARGET}") 
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/${DIR}/${SOURCE} ${CMAKE_CURRENT_BINARY_DIR}/${DIR}/${TARGET})
  # Add -DHAVE_{TARGET}.
#  add_definitions(-DHAVE_${TARGET})
  # Make sure TARGET can be found.
  MESSAGE("INCLUDE_DIRECTORIES ${CMAKE_CURRENT_BINARY_DIR}/${DIR}")
  include_directories(${CMAKE_CURRENT_BINARY_DIR/${DIR}})

ENDMACRO(CONFIGURE_FILE_IN)
