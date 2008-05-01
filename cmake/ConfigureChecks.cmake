include(CheckIncludeFiles)
include(CheckTypeSize) 

include(CMakeDetermineSystem)



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

# Check standard types and type sizes

check_type_size("char" SIZEOF_CHAR)
check_type_size("char *" SIZEOF_CHAR_P)
check_type_size("int" SIZEOF_INT)
check_type_size("intmax_t" SIZEOF_INTMAX_T)
check_type_size("long" SIZEOF_LONG)
check_type_size("long int" SIZEOF_LONG_INT)
check_type_size("long long int" SIZEOF_LONG_INT)
check_type_size("ptrdiff_t" SIZEOF_PTRDIFF_T)
check_type_size("short" SIZEOF_SHORT)
check_type_size("size_t" SIZEOF_SIZE_T)
check_type_size("ssize_t" SIZEOF_SSIZE_T)

if(SIZEOF_LONG)
  set(ulong "unsigned long")
endif(SIZEOF_LONG)




#check_type_size("unsigned long" SIZEOF_LONG)
#check_type_size("unsigned long int" SIZEOF_LONG_INT)
#check_type_size("unsigned long long" SIZEOF_LONG_LONG)
#check_type_size("unsigned long long int" SIZEOF_LONG_LONG_INT)

#message("sizeof_long ${SIZEOF_LONG}")

# add, unsigned char, unsigned short, unsigned int, unsigned long, unsigned long long, throw error if not = 4
#if(HAVE_UINT32)
#  set(ulong uint32)
#elseif(SIZEOF_LONG EQUAL 4)
#  set(ulong "unsigned long")
#endif(HAVE_UINT32)
