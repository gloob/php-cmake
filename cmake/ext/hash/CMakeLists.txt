## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

# Extension: hash

option(hash "Enable hash support" ON)
option(hash-shared "Shared hash" OFF)


set(EXT_HASH_SOURCES
  hash.c hash_md.c hash_sha.c hash_ripemd.c hash_haval.c 
    hash_tiger.c hash_gost.c hash_snefru.c hash_whirlpool.c hash_adler32.c 
    hash_crc32.c
)

#add_library(EXT_XML [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_HASH ${EXT_HASH_SOURCES})
##target_link_libraries(EXT_HASH ${@@EXTENSION_LIBRARIES@@})
