## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: tokenizer

option(tokenizer "Enable tokenizer support" ON)
option(tokenizer-shared "Shared tokenizer" OFF)


set(EXT_TOKENIZER_SOURCES
  tokenizer.c tokenizer_data.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_TOKENIZER ${EXT_TOKENIZER_SOURCES})
##target_link_libraries(EXT_TOKENIZER ${@@EXTENSION_LIBRARIES@@})
