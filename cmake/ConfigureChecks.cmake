include(CheckIncludeFiles)



check_include_files(utime.h HAVE_UTIME_H)
check_include_files(stdarg.h HAVE_STDARG_H)
check_include_files(dirent.h HAVE_DIRENT_H)
check_include_files(unix.h HAVE_UNIX_H)
check_include_files(dlfcn.h HAVE_DLFCN_H)
check_include_files(alloca.h HAVE_ALLOCA_H)
check_include_files(limits.h HAVE_LIMITS_H)
check_include_files(sys/types.h HAVE_SYS_TYPES_H)
check_include_files(fcntl.h HAVE_FCNTL_H)
check_include_files(termios.h HAVE_TERMIOS_H)
check_include_files(stdlib.h HAVE_STDLIB_H)
