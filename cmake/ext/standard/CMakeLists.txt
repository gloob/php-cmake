## CMake date File
##
## PHP License
##
## Author: Alejandro Leiva <gloob@php.net>
##
## $Id$

## dependency with ext/date

option(standard "Enable standard support" ON)
option(standard-shared "Shared standard" OFF)

include_directories(${CMAKE_CURRENT_BINARY_DIR}/../date/lib)

if(WIN32)
  option(config-file-scan-dir "Dir to check for additional php ini files")
  set(HAVE_INET_PTON 1)
  set(HAVE_INET_NTOP 1)
endif(WIN32)

#configure_file_in(timelib_config.h.cmake timelib_config.h DIRECTORY lib/)

## NEVER SHARED

#file(GLOB EXT_STANDARD_SOURCES *.c)
#file(GLOB EXT_STANDARD_HEADERS *.h)


set(EXT_STANDARD_SOURCES
  array.c base64.c basic_functions.c browscap.c crc32.c crypt.c
  cyr_convert.c datetime.c dir.c dl.c dns.c exec.c file.c filestat.c
  flock_compat.c formatted_print.c fsock.c head.c html.c image.c
  info.c iptc.c lcg.c link.c mail.c math.c md5.c metaphone.c
  microtime.c pack.c pageinfo.c quot_print.c rand.c
  soundex.c string.c scanf.c syslog.c type.c uniqid.c url.c
  url_scanner.c var.c versioning.c assert.c strnatcmp.c levenshtein.c
  incomplete_class.c url_scanner_ex.c ftp_fopen_wrapper.c
  http_fopen_wrapper.c php_fopen_wrapper.c credits.c css.c
  var_unserializer.c ftok.c sha1.c user_filters.c uuencode.c
  filters.c proc_open.c streamsfuncs.c http.c
)

# Libraries

#add_library(EXT_DATE [STATIC | SHARED | MODULE] [EXCLUDE_FROM_ALL]
add_library(EXT_STANDARD ${EXT_STANDARD_SOURCES} ${EXT_STANDARD_HEADERS})
target_link_libraries(EXT_STANDARD "resolv")
