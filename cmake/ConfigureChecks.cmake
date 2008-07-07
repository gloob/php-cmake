include(CheckIncludeFiles)
include(CheckTypeSize) 
include(CMakeDetermineSystem)
include(CheckFunctionExists)


## Check include files


check_include_files(ap/compat.h HAVE_AP_COMPAT_H)
check_include_files(ap/config.h HAVE_AP_CONFIG_H)
check_include_files(applicationservices/applicationservices.h HAVE_APPLICATIONSERVICES_APPLICATIONSERVICES_H)
check_include_files(arpa/inet.h HAVE_ARPA_INET_H)
check_include_files(arpa/nameser.h HAVE_ARPA_NAMESER_H)
check_include_files(assert.h HAVE_ASSERT_H)

check_include_files(build-defs.h HAVE_BUILD_DEFS_H)

check_include_files(cli0cli.h HAVE_CLI0CLI_H)
check_include_files(cli0core.h HAVE_CLI0CORE_H)
check_include_files(cli0defs.h HAVE_CLI0DEFS_H)
check_include_files(cli0env.h HAVE_CLI0ENV_H)
check_include_files(cli0ext.h HAVE_CLI0EXT_H)
check_include_files(crypt.h HAVE_CRYPT_H)
check_include_files(default/store.h HAVE_DEFAULT_STORE_H)
check_include_files(dirent.h HAVE_DIRENT_H)

check_include_files(errno.h HAVE_ERRNO_H)
check_include_files(fcntl.h HAVE_FCNTL_H)
check_include_files(giconv.h HAVE_GICONV_H)
check_include_files(grp.h HAVE_GRP_H)
check_include_files(ieeefp.h HAVE_IEEEFP_H)

check_include_files(iodbc.h HAVE_IODBC_H)
check_include_files(isql.h HAVE_ISQL_H)
check_include_files(isqlext.h HAVE_ISQLEXT_H)
check_include_files(langinfo.h HAVE_LANGINFO_H)
check_include_files(ldap/sasl.h HAVE_LDAP_SASL_H)
check_include_files(ldap/sasl/sasl.h HAVE_LDAP_SASL_SASL_H)
check_include_files(librarymanager.h HAVE_LIBRARYMANAGER_H)

check_include_files(locale.h HAVE_LOCALE_H)


check_include_files(memory.h HAVE_MEMORY_H)
check_include_files(monetary.h HAVE_MONETARY_H)
check_include_files(ncurses.h HAVE_NCURSES_H)
check_include_files(ndir.h HAVE_NDIR_H)
check_include_files(netdb.h HAVE_NETDB_H)
check_include_files(netinet/in.h HAVE_NETINET_IN_H)
check_include_files(netinet/tcp.h HAVE_NETINET_TCP_H)
check_include_files(odbc.h HAVE_ODBC_H)
check_include_files(odbcsdk.h HAVE_ODBCSDK_H)
check_include_files(old/compat.h HAVE_OLD_COMPAT_H)
check_include_files(pg/config.h HAVE_PG_CONFIG_H)
check_include_files(pwd.h HAVE_PWD_H)
check_include_files(resolv.h HAVE_RESOLV_H)

check_include_files(sql.h HAVE_SQL_H)
check_include_files(sqlcli1.h HAVE_SQLCLI1_H)
check_include_files(sqlext.h HAVE_SQLEXT_H)
check_include_files(sqltypes.h HAVE_SQLTYPES_H)
check_include_files(sqlucode.h HAVE_SQLUCODE_H)
check_include_files(sqlunix.h HAVE_SQLUNIX_H)
check_include_files(st.h HAVE_ST_H)

check_include_files(stdbool.h HAVE_STDBOOL_H)



check_include_files(strings.h HAVE_STRINGS_H)
check_include_files(sys/dir.h HAVE_SYS_DIR_H)
check_include_files(sys/file.h HAVE_SYS_FILE_H)
check_include_files(sys/ioctl.h HAVE_SYS_IOCTL_H)
check_include_files(sys/ipc.h HAVE_SYS_IPC_H)
check_include_files(sys/loadavg.h HAVE_SYS_LOADAVG_H)
check_include_files(sys/mkdev.h HAVE_SYS_MKDEV_H)
check_include_files(sys/mman.h HAVE_SYS_MMAN_H)
check_include_files(sys/mount.h HAVE_SYS_MOUNT_H)
check_include_files(sys/ndir.h HAVE_SYS_NDIR_H)
check_include_files(sys/param.h HAVE_SYS_PARAM_H)
check_include_files(sys/poll.h HAVE_SYS_POLL_H)
check_include_files(sys/resource.h HAVE_SYS_RESOURCE_H)
check_include_files(sys/select.h HAVE_SYS_SELECT_H)
check_include_files(sys/socket.h HAVE_SYS_SOCKET_H)
check_include_files(sys/stat.h HAVE_SYS_STAT_H)
check_include_files(sys/statfs.h HAVE_SYS_STATFS_H)
check_include_files(sys/statvfs.h HAVE_SYS_STATVFS_H)
check_include_files(sys/sysexits.h HAVE_SYS_SYSEXITS_H)

check_include_files(sys/times.h HAVE_SYS_TIMES_H)

check_include_files(sys/un.h HAVE_SYS_UN_H)
check_include_files(sys/utsname.h HAVE_SYS_UTSNAME_H)
check_include_files(sys/varargs.h HAVE_SYS_VARARGS_H)
check_include_files(sys/vfs.h HAVE_SYS_VFS_H)
check_include_files(sys/wait.h HAVE_SYS_WAIT_H)
check_include_files(sysexits.h HAVE_SYSEXITS_H)
check_include_files(syslog.h HAVE_SYSLOG_H)
check_include_files(termios.h HAVE_TERMIOS_H)
check_include_files(time.h HAVE_TIME_H)
check_include_files(tuxmodule.h HAVE_TUXMODULE_H)
check_include_files(udbcext.h HAVE_UDBCEXT_H)


check_include_files(utime.h HAVE_UTIME_H)
check_include_files(wchar.h HAVE_WCHAR_H)
check_include_files(xmlparse.h HAVE_XMLPARSE_H)
check_include_files(xmltok.h HAVE_XMLTOK_H)

## Check standard types and type sizes

check_type_size("char" SIZEOF_CHAR)
check_type_size("char *" SIZEOF_CHAR_P)
check_type_size("int" SIZEOF_INT)
check_type_size("intmax_t" SIZEOF_INTMAX_T)
check_type_size("long" SIZEOF_LONG)
check_type_size("long int" SIZEOF_LONG_INT)
check_type_size("long long int" SIZEOF_LONG_INT)
check_type_size("ptrdiff_t" SIZEOF_PTRDIFF_T)
check_type_size("short" SIZEOF_SHORT)

check_type_size("ssize_t" SIZEOF_SSIZE_T)

check_type_size("unsigned long" SIZEOF_ULONG)

if(NOT SIZEOF_ULONG)
  set(ulong "unsigned long")
endif(NOT SIZEOF_ULONG)


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

## Check libs

## Configigure for main/streams
check_include_files(glob.h HAVE_GLOB)

## Configure for Zend
message("** Configuration part for ZEND")
check_include_files(inttypes.h HAVE_INTTYPES_H)
check_include_files(stdint.h HAVE_STDINT_H)
check_include_files(limits.h HAVE_LIMITS_H)
check_include_files(malloc.h HAVE_MALLOC_H)
check_include_files(string.h HAVE_STRING_H)
check_include_files(unistd.h HAVE_UNISTD_H)
check_include_files(stdarg.h HAVE_STDARG_H)
check_include_files(sys/types.h HAVE_SYS_TYPES_H)
check_include_files(sys/time.h HAVE_SYS_TIME_H)
check_include_files(signal.h HAVE_SIGNAL_H)
check_include_files(unix.h HAVE_UNIX_H)
check_include_files(stdlib.h HAVE_STDLIB_H)
check_include_files(dlfcn.h HAVE_DLFCN_H)
## check if system is Darwin > 8
check_include_files(mach-o/dyld.h HAVE_MACH_O_DYLD_H)
check_type_size("size_t" SIZEOF_SIZE_T)
include(TestSignalType)
check_type_size("uint" SIZEOF_UINT)
check_type_size("ulong" SIZEOF_ULONG)
check_type_size("int32_t" SIZEOF_INT32_T)
check_type_size("uint32_t" SIZEOF_UINT32_T)

check_function_exists(vprintf HAVE_VPRINTF)
check_function_exists(_doprnt HAVE_DOPRNT)
check_function_exists(memcmp HAVE_MEMCMP)
check_include_files(alloca.h HAVE_ALLOCA_H)
check_function_exists(alloca HAVE_ALLOCA)
check_function_exists(memcpy HAVE_MEMCPY)
check_function_exists(strdup HAVE_STRDUP)
check_function_exists(getpid HAVE_GETPID)
check_function_exists(kill HAVE_KILL)
check_function_exists(strtod HAVE_STRTOD)
check_function_exists(strtol HAVE_STRTOL)
check_function_exists(finite HAVE_FINITE)
check_function_exists(fpclass HAVE_FPCLASS)
check_function_exists(sigsetjmp HAVE_SIGSETJMP)

# AC_ZEND_BROKEN_SPRINTF
# checking whether sprintf is broken... no

check_function_exists(finite HAVE_FINITE)
check_function_exists(isfinite HAVE_ISFINITE)
check_function_exists(isinf HAVE_ISINF)
check_function_exists(isnan HAVE_ISNAN)

# ZEND_FP_EXCEPT



#Configuring Zend
#checking for bison version... (cached) 2.3 (ok)
#checking for inttypes.h... (cached) yes
#checking for stdint.h... (cached) yes
#checking for limits.h... (cached) yes
#checking for malloc.h... yes
#checking for string.h... (cached) yes
#checking for unistd.h... (cached) yes
#checking for stdarg.h... (cached) yes
#checking for sys/types.h... (cached) yes
#checking for sys/time.h... (cached) yes
#checking for signal.h... (cached) yes
#checking for unix.h... (cached) no
#checking for stdlib.h... (cached) yes
#checking for dlfcn.h... (cached) yes
#checking for mach-o/dyld.h... (cached) no
#checking for size_t... (cached) yes
#checking return type of signal handlers... void
#checking for uint... yes
#checking for ulong... yes
#checking for int32_t... yes
#checking for uint32_t... yes
#checking for vprintf... (cached) yes
#checking for _doprnt... (cached) no
#checking for working memcmp... yes
#checking for working alloca.h... (cached) yes
#checking for alloca... (cached) yes
#checking for memcpy... (cached) yes
#checking for strdup... (cached) yes
#checking for getpid... yes
#checking for kill... yes
#checking for strtod... yes
#checking for strtol... yes
#checking for finite... yes
#checking for fpclass... (cached) no
#checking for sigsetjmp... no
#checking whether sprintf is broken... no
#checking for finite... (cached) yes
#checking for isfinite... no
#checking for isinf... (cached) yes
#checking for isnan... (cached) yes

#checking whether fp_except is defined... no

#checking for dlfcn.h... (cached) yes
#checking whether dlsym() requires a leading underscore in symbol names... no

#checking virtual machine dispatch method... CALL
#checking whether to enable thread-safety... no
#checking whether to enable inline optimization for GCC... yes
#checking whether to enable Zend debugging... no

#checking for inline... inline
#checking target system is Darwin... no
#checking for MM alignment and log values... done
#checking for memory allocation using mmap(MAP_ANON)... yes
#checking for memory allocation using mmap("/dev/zero")... yes
#checking for mremap... yes

#TODETERMINE:
#checking malloc.h usability... yes
#checking malloc.h presence... yes
