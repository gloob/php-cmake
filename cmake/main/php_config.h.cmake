/* AUTOMATICALLY GENERATED !! */
/* main/php_config.h.in.  Generated from configure.in by autoheader.  */
/* Leave this file alone */
/*
   +----------------------------------------------------------------------+
   | Zend Engine                                                          |
   +----------------------------------------------------------------------+
   | Copyright (c) 1998-2008 Zend Technologies Ltd. (http://www.zend.com) |
   +----------------------------------------------------------------------+
   | This source file is subject to version 2.00 of the Zend license,     |
   | that is bundled with this package in the file LICENSE, and is        |
   | available through the world-wide-web at the following url:           |
   | http://www.zend.com/license/2_00.txt.                                |
   | If you did not receive a copy of the Zend license and are unable to  |
   | obtain it through the world-wide-web, please send a note to          |
   | license@zend.com so we can mail you a copy immediately.              |
   +----------------------------------------------------------------------+
   | Authors: Andi Gutmans <andi@zend.com>                                |
   |          Zeev Suraski <zeev@zend.com>                                |
   +----------------------------------------------------------------------+
*/

/* $Id: acconfig.h,v 1.44 2008/01/30 09:56:21 dmitry Exp $ */

#if defined(__GNUC__) && __GNUC__ >= 4
# define ZEND_API __attribute__ ((visibility("default")))
# define ZEND_DLEXPORT __attribute__ ((visibility("default")))
#else
# define ZEND_API
# define ZEND_DLEXPORT
#endif

#define ZEND_DLIMPORT


#cmakedefine uint @uint@
#cmakedefine ulong @ulong@

/* 
#undef ulong 
#undef uint
*/

/* Define if you want to enable memory limit support */
#define MEMORY_LIMIT 0


/* */
#cmakedefine AIX 1

/* Whether to use native BeOS threads */
#cmakedefine BETHREADS 1

/* Enabling BIND8 compatibility for Panther */
#cmakedefine BIND_8_COMPAT 1

/* */
#cmakedefine CDB_INCLUDE_FILE 1

/* Define if system uses EBCDIC */
#cmakedefine CHARSET_EBCDIC 1

/* Whether to build bcmath as dynamic module */
#cmakedefine COMPILE_DL_BCMATH 1

/* Whether to build bz2 as dynamic module */
#cmakedefine COMPILE_DL_BZ2 1

/* Whether to build calendar as dynamic module */
#cmakedefine COMPILE_DL_CALENDAR 1

/* Whether to build ctype as dynamic module */
#cmakedefine COMPILE_DL_CTYPE 1

/* Whether to build curl as dynamic module */
#cmakedefine COMPILE_DL_CURL 1

/* Whether to build date as dynamic module */
#cmakedefine COMPILE_DL_DATE 1

/* Whether to build dba as dynamic module */
#cmakedefine COMPILE_DL_DBA 1

/* Whether to build dbase as dynamic module */
#cmakedefine COMPILE_DL_DBASE 1

/* Whether to build dom as dynamic module */
#cmakedefine COMPILE_DL_DOM 1

/* Whether to build ereg as dynamic module */
#cmakedefine COMPILE_DL_EREG 1

/* Whether to build exif as dynamic module */
#cmakedefine COMPILE_DL_EXIF 1

/* Whether to build fbsql as dynamic module */
#cmakedefine COMPILE_DL_FBSQL 1

/* Whether to build fdf as dynamic module */
#cmakedefine COMPILE_DL_FDF 1

/* Whether to build filter as dynamic module */
#cmakedefine COMPILE_DL_FILTER 1

/* Whether to build ftp as dynamic module */
#cmakedefine COMPILE_DL_FTP 1

/* Whether to build gd as dynamic module */
#cmakedefine COMPILE_DL_GD 1

/* Whether to build gettext as dynamic module */
#cmakedefine COMPILE_DL_GETTEXT 1

/* Whether to build gmp as dynamic module */
#cmakedefine COMPILE_DL_GMP 1

/* Whether to build hash as dynamic module */
#cmakedefine COMPILE_DL_HASH 1

/* Whether to build iconv as dynamic module */
#cmakedefine COMPILE_DL_ICONV 1

/* Whether to build imap as dynamic module */
#cmakedefine COMPILE_DL_IMAP 1

/* Whether to build interbase as dynamic module */
#cmakedefine COMPILE_DL_INTERBASE 1

/* Whether to build json as dynamic module */
#cmakedefine COMPILE_DL_JSON 1

/* Whether to build ldap as dynamic module */
#cmakedefine COMPILE_DL_LDAP 1

/* Whether to build libxml as dynamic module */
#cmakedefine COMPILE_DL_LIBXML 1

/* Whether to build mbstring as dynamic module */
#cmakedefine COMPILE_DL_MBSTRING 1

/* Whether to build mcrypt as dynamic module */
#cmakedefine COMPILE_DL_MCRYPT 1

/* Whether to build mhash as dynamic module */
#cmakedefine COMPILE_DL_MHASH 1

/* Whether to build mime_magic as dynamic module */
#cmakedefine COMPILE_DL_MIME_MAGIC 1

/* Whether to build ming as dynamic module */
#cmakedefine COMPILE_DL_MING 1

/* Whether to build msql as dynamic module */
#cmakedefine COMPILE_DL_MSQL 1

/* Whether to build mssql as dynamic module */
#cmakedefine COMPILE_DL_MSSQL 1

/* Whether to build mysql as dynamic module */
#cmakedefine COMPILE_DL_MYSQL 1

/* Whether to build mysqli as dynamic module */
#cmakedefine COMPILE_DL_MYSQLI 1

/* Whether to build mysqlnd as dynamic module */
#cmakedefine COMPILE_DL_MYSQLND 1

/* Whether to build oci8 as dynamic module */
#cmakedefine COMPILE_DL_OCI8 1

/* Whether to build odbc as dynamic module */
#cmakedefine COMPILE_DL_ODBC 1

/* Whether to build openssl as dynamic module */
#cmakedefine COMPILE_DL_OPENSSL 1

/* Whether to build pcntl as dynamic module */
#cmakedefine COMPILE_DL_PCNTL 1

/* Whether to build pcre as dynamic module */
#cmakedefine COMPILE_DL_PCRE 1

/* Whether to build pdo as dynamic module */
#cmakedefine COMPILE_DL_PDO 1

/* Whether to build pdo_dblib as dynamic module */
#cmakedefine COMPILE_DL_PDO_DBLIB 1

/* Whether to build pdo_firebird as dynamic module */
#cmakedefine COMPILE_DL_PDO_FIREBIRD 1

/* Whether to build pdo_mysql as dynamic module */
#cmakedefine COMPILE_DL_PDO_MYSQL 1

/* Whether to build pdo_oci as dynamic module */
#cmakedefine COMPILE_DL_PDO_OCI 1

/* Whether to build pdo_odbc as dynamic module */
#cmakedefine COMPILE_DL_PDO_ODBC 1

/* Whether to build pdo_pgsql as dynamic module */
#cmakedefine COMPILE_DL_PDO_PGSQL 1

/* Whether to build pdo_sqlite as dynamic module */
#cmakedefine COMPILE_DL_PDO_SQLITE 1

/* Whether to build pgsql as dynamic module */
#cmakedefine COMPILE_DL_PGSQL 1

/* Whether to build posix as dynamic module */
#cmakedefine COMPILE_DL_POSIX 1

/* Whether to build pspell as dynamic module */
#cmakedefine COMPILE_DL_PSPELL 1

/* Whether to build readline as dynamic module */
#cmakedefine COMPILE_DL_READLINE 1

/* Whether to build recode as dynamic module */
#cmakedefine COMPILE_DL_RECODE 1

/* Whether to build reflection as dynamic module */
#cmakedefine COMPILE_DL_REFLECTION 1

/* Whether to build session as dynamic module */
#cmakedefine COMPILE_DL_SESSION 1

/* Whether to build shmop as dynamic module */
#cmakedefine COMPILE_DL_SHMOP 1

/* Whether to build simplexml as dynamic module */
#cmakedefine COMPILE_DL_SIMPLEXML 1

/* Whether to build snmp as dynamic module */
#cmakedefine COMPILE_DL_SNMP 1

/* Whether to build soap as dynamic module */
#cmakedefine COMPILE_DL_SOAP 1

/* Whether to build sockets as dynamic module */
#cmakedefine COMPILE_DL_SOCKETS 1

/* Whether to build spl as dynamic module */
#cmakedefine COMPILE_DL_SPL 1

/* Whether to build sqlite as dynamic module */
#cmakedefine COMPILE_DL_SQLITE 1

/* Whether to build standard as dynamic module */
#cmakedefine COMPILE_DL_STANDARD 1

/* Whether to build sybase as dynamic module */
#cmakedefine COMPILE_DL_SYBASE 1

/* Whether to build sybase_ct as dynamic module */
#cmakedefine COMPILE_DL_SYBASE_CT 1

/* Whether to build sysvmsg as dynamic module */
#cmakedefine COMPILE_DL_SYSVMSG 1

/* Whether to build sysvsem as dynamic module */
#cmakedefine COMPILE_DL_SYSVSEM 1

/* Whether to build sysvshm as dynamic module */
#cmakedefine COMPILE_DL_SYSVSHM 1

/* Whether to build tidy as dynamic module */
#cmakedefine COMPILE_DL_TIDY 1

/* Whether to build tokenizer as dynamic module */
#cmakedefine COMPILE_DL_TOKENIZER 1

/* Whether to build unicode as dynamic module */
#cmakedefine COMPILE_DL_UNICODE 1

/* Whether to build wddx as dynamic module */
#cmakedefine COMPILE_DL_WDDX 1

/* Whether to build xml as dynamic module */
#cmakedefine COMPILE_DL_XML 1

/* Whether to build xmlreader as dynamic module */
#cmakedefine COMPILE_DL_XMLREADER 1

/* Whether to build xmlrpc as dynamic module */
#cmakedefine COMPILE_DL_XMLRPC 1

/* Whether to build xmlwriter as dynamic module */
#cmakedefine COMPILE_DL_XMLWRITER 1

/* Whether to build xsl as dynamic module */
#cmakedefine COMPILE_DL_XSL 1

/* Whether to build zip as dynamic module */
#cmakedefine COMPILE_DL_ZIP 1

/* Whether to build zlib as dynamic module */
#cmakedefine COMPILE_DL_ZLIB 1

/* */
#cmakedefine COOKIE_IO_FUNCTIONS_T 1

/* */
#cmakedefine COOKIE_SEEKER_USES_OFF64_T 1

/* Define to one of `_getb67', `GETB67', `getb67' for Cray-2 and Cray-YMP
   systems. This function is required for `alloca.c' support on those systems.
   */
#cmakedefine CRAY_STACKSEG_END 1

/* Define if crypt_r has uses CRYPTD */
#cmakedefine CRYPT_R_CRYPTD 1

/* Define if struct crypt_data requires _GNU_SOURCE */
#cmakedefine CRYPT_R_GNU_SOURCE 1

/* Define if crypt_r uses struct crypt_data */
#cmakedefine CRYPT_R_STRUCT_CRYPT_DATA 1

/* Define to 1 if using `alloca.c'. */
#cmakedefine C_ALLOCA 1

/* Define if the target system is darwin */
#cmakedefine DARWIN 1

/* */
#cmakedefine DB1_INCLUDE_FILE 1

/* */
#cmakedefine DB1_VERSION 1

/* */
#cmakedefine DB2_INCLUDE_FILE 1

/* */
#cmakedefine DB3_INCLUDE_FILE 1

/* */
#cmakedefine DB4_INCLUDE_FILE 1

/* */
#cmakedefine DBASE 1

/* */
#cmakedefine DBA_CDB 1

/* */
#cmakedefine DBA_CDB_BUILTIN 1

/* */
#cmakedefine DBA_CDB_MAKE 1

/* */
#cmakedefine DBA_DB1 1

/* */
#cmakedefine DBA_DB2 1

/* */
#cmakedefine DBA_DB3 1

/* */
#cmakedefine DBA_DB4 1

/* */
#cmakedefine DBA_DBM 1

/* */
#cmakedefine DBA_FLATFILE 1

/* */
#cmakedefine DBA_GDBM 1

/* */
#cmakedefine DBA_INIFILE 1

/* */
#cmakedefine DBA_NDBM 1

/* */
#cmakedefine DBA_QDBM 1

/* */
#cmakedefine DBMFIX 1

/* */
#cmakedefine DBM_INCLUDE_FILE 1

/* */
#cmakedefine DBM_VERSION 1

/* */
#cmakedefine DEFAULT_SHORT_OPEN_TAG 1

/* Define if dlsym() requires a leading underscore in symbol names. */
#cmakedefine DLSYM_NEEDS_UNDERSCORE 1

/* Whether to enable chroot() function */
#cmakedefine ENABLE_CHROOT_FUNC 1

/* */
#cmakedefine GDBM_INCLUDE_FILE 1

/* Whether you use GNU Pth */
#cmakedefine GNUPTH 1

/* Whether 3 arg set_rebind_proc() */
#cmakedefine HAVE_3ARG_SETREBINDPROC 1

/* Define to 1 if you have the `acosh' function. */
#cmakedefine HAVE_ACOSH 1

/* */
#cmakedefine HAVE_ADABAS 1

/* Define to 1 if you have `alloca', as a function or macro. */
#cmakedefine HAVE_ALLOCA 1

/* Define to 1 if you have <alloca.h> and it should be used (not on Ultrix).
   */
#cmakedefine HAVE_ALLOCA_H 1

/* Define to 1 if you have the `alphasort' function. */
#cmakedefine HAVE_ALPHASORT 1

/* Whether you have AOLserver */
#cmakedefine HAVE_AOLSERVER 1

/* */
#cmakedefine HAVE_APACHE 1

/* */
#cmakedefine HAVE_APACHE_HOOKS 1

/* Define to 1 if you have the <ApplicationServices/ApplicationServices.h>
   header file. */
#cmakedefine HAVE_APPLICATIONSERVICES_APPLICATIONSERVICES_H 1

/* */
#cmakedefine HAVE_AP_COMPAT_H 1

/* */
#cmakedefine HAVE_AP_CONFIG_H 1

/* Define to 1 if you have the <arpa/inet.h> header file. */
#cmakedefine HAVE_ARPA_INET_H 1

/* Define to 1 if you have the <arpa/nameser.h> header file. */
#cmakedefine HAVE_ARPA_NAMESER_H 1

/* Define to 1 if you have the `asctime_r' function. */
#cmakedefine HAVE_ASCTIME_R 1

/* Define to 1 if you have the `asinh' function. */
#cmakedefine HAVE_ASINH 1

/* Define to 1 if you have the <assert.h> header file. */
#cmakedefine HAVE_ASSERT_H 1

/* Define to 1 if you have the `atanh' function. */
#cmakedefine HAVE_ATANH 1

/* whether atof() accepts INF */
#cmakedefine HAVE_ATOF_ACCEPTS_INF 1

/* whether atof() accepts NAN */
#cmakedefine HAVE_ATOF_ACCEPTS_NAN 1

/* Define to 1 if you have the `atoll' function. */
#cmakedefine HAVE_ATOLL 1

/* Whether you have bcmath */
#cmakedefine HAVE_BCMATH 1

/* */
#cmakedefine HAVE_BIND_TEXTDOMAIN_CODESET 1

/* */
#cmakedefine HAVE_BIRDSTEP 1

/* Define if system has broken getcwd */
#cmakedefine HAVE_BROKEN_GETCWD 1

/* Define if your glibc borks on fopen with mode a+ */
#cmakedefine HAVE_BROKEN_GLIBC_FOPEN_APPEND 1

/* Whether we have librecode 3.5 */
#cmakedefine HAVE_BROKEN_RECODE 1

/* Konstantin Chuguev's iconv implementation */
#cmakedefine HAVE_BSD_ICONV 1

/* */
#cmakedefine HAVE_BUILD_DEFS_H 1

/* */
#cmakedefine HAVE_BUNDLED_PCRE 1

/* */
#cmakedefine HAVE_BZ2 1

/* */
#cmakedefine HAVE_CALENDAR 1

/* Whether to compile with Caudium support */
#cmakedefine HAVE_CAUDIUM 1

/* Define to 1 if you have the `chroot' function. */
#cmakedefine HAVE_CHROOT 1

/* */
#cmakedefine HAVE_CLI0CLI_H 1

/* */
#cmakedefine HAVE_CLI0CORE_H 1

/* */
#cmakedefine HAVE_CLI0DEFS_H 1

/* */
#cmakedefine HAVE_CLI0ENV_H 1

/* */
#cmakedefine HAVE_CLI0EXT_H 1

/* Whether you have struct cmsghdr */
#cmakedefine HAVE_CMSGHDR 1

/* */
#cmakedefine HAVE_CODBC 1

/* */
#cmakedefine HAVE_COLORCLOSESTHWB 1

/* Whether you have a Continuity Server */
#cmakedefine HAVE_CONTINUITY 1

/* Define to 1 if you have the `CreateProcess' function. */
#cmakedefine HAVE_CREATEPROCESS 1

/* */
#cmakedefine HAVE_CRYPT 1

/* Define to 1 if you have the <crypt.h> header file. */
#cmakedefine HAVE_CRYPT_H 1

/* Define to 1 if you have the `crypt_r' function. */
#cmakedefine HAVE_CRYPT_R 1

/* Define to 1 if you have the `ctermid' function. */
#cmakedefine HAVE_CTERMID 1

/* Define to 1 if you have the `ctime_r' function. */
#cmakedefine HAVE_CTIME_R 1

/* */
#cmakedefine HAVE_CTYPE 1

/* */
#cmakedefine HAVE_CURL 1

/* */
#cmakedefine HAVE_CURL_EASY_STRERROR 1

/* Have cURL with GnuTLS support */
#cmakedefine HAVE_CURL_GNUTLS 1

/* */
#cmakedefine HAVE_CURL_MULTI_STRERROR 1

/* Have cURL with OpenSSL support */
#cmakedefine HAVE_CURL_OPENSSL 1

/* Have cURL with SSL support */
#cmakedefine HAVE_CURL_SSL 1

/* */
#cmakedefine HAVE_CURL_VERSION_INFO 1

/* Define to 1 if you have the `cuserid' function. */
#cmakedefine HAVE_CUSERID 1

/* */
#cmakedefine HAVE_DBA 1

/* Whether you want DBMaker */
#cmakedefine HAVE_DBMAKER 1

/* */
#cmakedefine HAVE_DCNGETTEXT 1

/* Whether system headers declare timezone */
#cmakedefine HAVE_DECLARED_TIMEZONE 1

/* Define to 1 if you have the declaration of `tzname', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_TZNAME 1

/* Define to 1 if you have the <default_store.h> header file. */
#cmakedefine HAVE_DEFAULT_STORE_H 1

/* */
#cmakedefine HAVE_DESTROY_SWF_BLOCK 1

/* Define if the target system has /dev/urandom device */
#cmakedefine HAVE_DEV_URANDOM 1

/* Define to 1 if you have the <dirent.h> header file. */
#cmakedefine HAVE_DIRENT_H 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#cmakedefine HAVE_DLFCN_H 1

/* */
#cmakedefine HAVE_DLOPEN 1

/* Whether you have dmalloc */
#cmakedefine HAVE_DMALLOC 1

/* */
#cmakedefine HAVE_DNGETTEXT 1

/* */
#cmakedefine HAVE_DN_EXPAND 1

/* */
#cmakedefine HAVE_DN_SKIPNAME 1

/* */
#cmakedefine HAVE_DOM 1

/* Define to 1 if you don't have `vprintf' but do have `_doprnt.' */
#cmakedefine HAVE_DOPRNT 1

/* OpenSSL 0.9.7 or later */
#cmakedefine HAVE_DSA_DEFAULT_METHOD 1

/* embedded MySQL support enabled */
#cmakedefine HAVE_EMBEDDED_MYSQLI 1

/* */
#cmakedefine HAVE_EMPRESS 1

/* Define to 1 if you have the <errno.h> header file. */
#cmakedefine HAVE_ERRNO_H 1

/* */
#cmakedefine HAVE_ESOOB 1

/* Whether you want EXIF (metadata from images) support */
#cmakedefine HAVE_EXIF 1

/* Define to 1 if you have the `fabsf' function. */
#cmakedefine HAVE_FABSF 1

/* Whether you have FrontBase */
#cmakedefine HAVE_FBSQL 1

/* Define to 1 if you have the <fcntl.h> header file. */
#cmakedefine HAVE_FCNTL_H 1

/* */
#cmakedefine HAVE_FDFLIB 1

/* */
#cmakedefine HAVE_FDFTK_5 1

/* */
#cmakedefine HAVE_FDFTK_H_LOWER 1

/* Define to 1 if you have the `finite' function. */
#cmakedefine HAVE_FINITE 1

/* Define to 1 if you have the `flock' function. */
#cmakedefine HAVE_FLOCK 1

/* Define to 1 if you have the `floorf' function. */
#cmakedefine HAVE_FLOORF 1

/* Define if flush should be called explicitly after a buffered io. */
#cmakedefine HAVE_FLUSHIO 1

/* Define to 1 if your system has a working POSIX `fnmatch' function. */
#cmakedefine HAVE_FNMATCH 1

/* */
#cmakedefine HAVE_FOPENCOOKIE 1

/* Define to 1 if you have the `fork' function. */
#cmakedefine HAVE_FORK 1

/* Define to 1 if you have the `fpclass' function. */
#cmakedefine HAVE_FPCLASS 1

/* whether floatingpoint.h defines fp_except */
#cmakedefine HAVE_FP_EXCEPT 1

/* */
#cmakedefine HAVE_FREETDS 1

/* Define to 1 if you have the `ftok' function. */
#cmakedefine HAVE_FTOK 1

/* Whether you want FTP support */
#cmakedefine HAVE_FTP 1

/* Define to 1 if you have the `funopen' function. */
#cmakedefine HAVE_FUNOPEN 1

/* Define to 1 if you have the `gai_strerror' function. */
#cmakedefine HAVE_GAI_STRERROR 1

/* Whether you have gcov */
#cmakedefine HAVE_GCOV 1

/* Define to 1 if you have the `gcvt' function. */
#cmakedefine HAVE_GCVT 1

/* */
#cmakedefine HAVE_GD_BUNDLED 1

/* */
#cmakedefine HAVE_GD_CACHE_CREATE 1

/* */
#cmakedefine HAVE_GD_FONTCACHESHUTDOWN 1

/* */
#cmakedefine HAVE_GD_FONTMUTEX 1

/* */
#cmakedefine HAVE_GD_FREEFONTCACHE 1

/* */
#cmakedefine HAVE_GD_GIF_CREATE 1

/* */
#cmakedefine HAVE_GD_GIF_CTX 1

/* */
#cmakedefine HAVE_GD_GIF_READ 1

/* */
#cmakedefine HAVE_GD_IMAGEELLIPSE 1

/* */
#cmakedefine HAVE_GD_IMAGESETBRUSH 1

/* */
#cmakedefine HAVE_GD_IMAGESETTILE 1

/* */
#cmakedefine HAVE_GD_JPG 1

/* */
#cmakedefine HAVE_GD_PNG 1

/* */
#cmakedefine HAVE_GD_STRINGFT 1

/* */
#cmakedefine HAVE_GD_STRINGFTEX 1

/* */
#cmakedefine HAVE_GD_STRINGTTF 1

/* */
#cmakedefine HAVE_GD_XBM 1

/* */
#cmakedefine HAVE_GD_XPM 1

/* Define if you have the getaddrinfo function */
#cmakedefine HAVE_GETADDRINFO 1

/* Define to 1 if you have the `getcwd' function. */
#cmakedefine HAVE_GETCWD 1

/* Define to 1 if you have the `getgrgid_r' function. */
#cmakedefine HAVE_GETGRGID_R 1

/* Define to 1 if you have the `getgrnam_r' function. */
#cmakedefine HAVE_GETGRNAM_R 1

/* Define to 1 if you have the `getgroups' function. */
#cmakedefine HAVE_GETGROUPS 1

/* */
#cmakedefine HAVE_GETHOSTBYADDR 1

/* */
#cmakedefine HAVE_GETHOSTNAME 1

/* Define to 1 if you have the `getloadavg' function. */
#cmakedefine HAVE_GETLOADAVG 1

/* Define to 1 if you have the `getlogin' function. */
#cmakedefine HAVE_GETLOGIN 1

/* Define to 1 if you have the `getopt' function. */
#cmakedefine HAVE_GETOPT 1

/* Define to 1 if you have the `getpgid' function. */
#cmakedefine HAVE_GETPGID 1

/* Define to 1 if you have the `getpid' function. */
#cmakedefine HAVE_GETPID 1

/* Define to 1 if you have the `getpriority' function. */
#cmakedefine HAVE_GETPRIORITY 1

/* Define to 1 if you have the `getprotobyname' function. */
#cmakedefine HAVE_GETPROTOBYNAME 1

/* Define to 1 if you have the `getprotobynumber' function. */
#cmakedefine HAVE_GETPROTOBYNUMBER 1

/* Define to 1 if you have the `getpwnam_r' function. */
#cmakedefine HAVE_GETPWNAM_R 1

/* Define to 1 if you have the `getpwuid_r' function. */
#cmakedefine HAVE_GETPWUID_R 1

/* Define to 1 if you have the `getrlimit' function. */
#cmakedefine HAVE_GETRLIMIT 1

/* Define to 1 if you have the `getrusage' function. */
#cmakedefine HAVE_GETRUSAGE 1

/* Define to 1 if you have the `getservbyname' function. */
#cmakedefine HAVE_GETSERVBYNAME 1

/* Define to 1 if you have the `getservbyport' function. */
#cmakedefine HAVE_GETSERVBYPORT 1

/* Define to 1 if you have the `getsid' function. */
#cmakedefine HAVE_GETSID 1

/* Define to 1 if you have the `gettimeofday' function. */
#cmakedefine HAVE_GETTIMEOFDAY 1

/* Define to 1 if you have the `getwd' function. */
#cmakedefine HAVE_GETWD 1

/* */
#cmakedefine HAVE_GICONV_H 1

/* glibc's iconv implementation */
#cmakedefine HAVE_GLIBC_ICONV 1

/* Define to 1 if you have the `glob' function. */
#cmakedefine HAVE_GLOB 1

/* */
#cmakedefine HAVE_GMP 1

/* Define to 1 if you have the `gmtime_r' function. */
#cmakedefine HAVE_GMTIME_R 1

/* Define to 1 if you have the `grantpt' function. */
#cmakedefine HAVE_GRANTPT 1

/* Define to 1 if you have the <grp.h> header file. */
#cmakedefine HAVE_GRP_H 1

/* Have HASH Extension */
#cmakedefine HAVE_HASH_EXT 1

/* Define to 1 if you have the `hstrerror' function. */
#cmakedefine HAVE_HSTRERROR 1

/* */
#cmakedefine HAVE_HTONL 1

/* whether HUGE_VAL == INF */
#cmakedefine HAVE_HUGE_VAL_INF 1

/* whether HUGE_VAL + -HUGEVAL == NAN */
#cmakedefine HAVE_HUGE_VAL_NAN 1

/* Define to 1 if you have the `hypot' function. */
#cmakedefine HAVE_HYPOT 1

/* */
#cmakedefine HAVE_IBASE 1

/* */
#cmakedefine HAVE_IBMDB2 1

/* IBM iconv implementation */
#cmakedefine HAVE_IBM_ICONV 1

/* */
#cmakedefine HAVE_ICONV 1

/* Define to 1 if you have the <ieeefp.h> header file. */
#cmakedefine HAVE_IEEEFP_H 1

/* */
#cmakedefine HAVE_IMAP 1

/* */
#cmakedefine HAVE_IMAP2000 1

/* */
#cmakedefine HAVE_IMAP2001 1

/* */
#cmakedefine HAVE_IMAP2004 1

/* */
#cmakedefine HAVE_IMAP_AUTH_GSS 1

/* */
#cmakedefine HAVE_IMAP_KRB 1

/* */
#cmakedefine HAVE_IMAP_SSL 1

/* */
#cmakedefine HAVE_INET_ATON 1

/* Define to 1 if you have the `inet_ntoa' function. */
#cmakedefine HAVE_INET_NTOA 1

/* Define to 1 if you have the `inet_ntop' function. */
#cmakedefine HAVE_INET_NTOP 1

/* Define to 1 if you have the `inet_pton' function. */
#cmakedefine HAVE_INET_PTON 1

/* Define to 1 if you have the `initgroups' function. */
#cmakedefine HAVE_INITGROUPS 1

/* Define if int32_t type is present. */
#cmakedefine HAVE_INT32_T 1

/* Whether intmax_t is available */
#cmakedefine HAVE_INTMAX_T 1

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H 1

/* */
#cmakedefine HAVE_IODBC 1

/* */
#cmakedefine HAVE_IODBC_H 1

/* Whether to enable IPv6 support */
#cmakedefine HAVE_IPV6 1

/* Define to 1 if you have the `isascii' function. */
#cmakedefine HAVE_ISASCII 1

/* Define to 1 if you have the `isfinite' function. */
#cmakedefine HAVE_ISFINITE 1

/* Define to 1 if you have the `isinf' function. */
#cmakedefine HAVE_ISINF 1

/* Define to 1 if you have the `isnan' function. */
#cmakedefine HAVE_ISNAN 1

/* */
#cmakedefine HAVE_ISQLEXT_H 1

/* */
#cmakedefine HAVE_ISQL_H 1

/* whether to enable JavaScript Object Serialization support */
#cmakedefine HAVE_JSON 1

/* Define to 1 if you have the `kill' function. */
#cmakedefine HAVE_KILL 1

/* Define to 1 if you have the <langinfo.h> header file. */
#cmakedefine HAVE_LANGINFO_H 1

/* Define to 1 if you have the `lchown' function. */
#cmakedefine HAVE_LCHOWN 1

/* */
#cmakedefine HAVE_LDAP 1

/* Define to 1 if you have the `ldap_parse_reference' function. */
#cmakedefine HAVE_LDAP_PARSE_REFERENCE 1

/* Define to 1 if you have the `ldap_parse_result' function. */
#cmakedefine HAVE_LDAP_PARSE_RESULT 1

/* LDAP SASL support */
#cmakedefine HAVE_LDAP_SASL 1

/* */
#cmakedefine HAVE_LDAP_SASL_H 1

/* */
#cmakedefine HAVE_LDAP_SASL_SASL_H 1

/* Define to 1 if you have the `ldap_start_tls_s' function. */
#cmakedefine HAVE_LDAP_START_TLS_S 1

/* */
#cmakedefine HAVE_LIBBIND 1

/* */
#cmakedefine HAVE_LIBCRYPT 1

/* */
#cmakedefine HAVE_LIBDL 1

/* */
#cmakedefine HAVE_LIBDNET_STUB 1

/* */
#cmakedefine HAVE_LIBEDIT 1

/* */
#cmakedefine HAVE_LIBEXPAT 1

/* */
#cmakedefine HAVE_LIBFREETYPE 1

/* */
#cmakedefine HAVE_LIBGD 1

/* */
#cmakedefine HAVE_LIBICONV 1

/* */
#cmakedefine HAVE_LIBINTL 1

/* Define to 1 if you have the `m' library (-lm). */
#cmakedefine HAVE_LIBM 1

/* */
#cmakedefine HAVE_LIBMCRYPT 1

/* */
#cmakedefine HAVE_LIBMHASH 1

/* Whether you have libmm */
#cmakedefine HAVE_LIBMM 1

/* */
#cmakedefine HAVE_LIBNSL 1

/* */
#cmakedefine HAVE_LIBPAM 1

/* */
#cmakedefine HAVE_LIBRARYMANAGER_H 1

/* */
#cmakedefine HAVE_LIBREADLINE 1

/* Whether we have librecode 3.5 or higher */
#cmakedefine HAVE_LIBRECODE 1

/* */
#cmakedefine HAVE_LIBRESOLV 1

/* */
#cmakedefine HAVE_LIBSOCKET 1

/* */
#cmakedefine HAVE_LIBT1 1

/* */
#cmakedefine HAVE_LIBXML 1

/* Define to 1 if you have the <limits.h> header file. */
#cmakedefine HAVE_LIMITS_H 1

/* Define to 1 if you have the `link' function. */
#cmakedefine HAVE_LINK 1

/* Define to 1 if you have the `localeconv' function. */
#cmakedefine HAVE_LOCALECONV 1

/* Define to 1 if you have the <locale.h> header file. */
#cmakedefine HAVE_LOCALE_H 1

/* Define to 1 if you have the `localtime_r' function. */
#cmakedefine HAVE_LOCALTIME_R 1

/* Define to 1 if you have the `lockf' function. */
#cmakedefine HAVE_LOCKF 1

/* Define to 1 if you have the `log1p' function. */
#cmakedefine HAVE_LOG1P 1

/* Define to 1 if you have the `lrand48' function. */
#cmakedefine HAVE_LRAND48 1

/* Define to 1 if you have the <mach-o/dyld.h> header file. */
#cmakedefine HAVE_MACH_O_DYLD_H 1

/* Define to 1 if you have the `makedev' function. */
#cmakedefine HAVE_MAKEDEV 1

/* Define to 1 if you have the <malloc.h> header file. */
#cmakedefine HAVE_MALLOC_H 1

/* Define to 1 if you have the `mblen' function. */
#cmakedefine HAVE_MBLEN 1

/* whether to have multibyte regex support */
#cmakedefine HAVE_MBREGEX 1

/* Define to 1 if you have the `mbrlen' function. */
#cmakedefine HAVE_MBRLEN 1

/* Define to 1 if you have the `mbsinit' function. */
#cmakedefine HAVE_MBSINIT 1

/* Define if your system has mbstate_t in wchar.h */
#cmakedefine HAVE_MBSTATE_T 1

/* whether to have multibyte string support */
#cmakedefine HAVE_MBSTRING 1

/* Define to 1 if you have the `memcpy' function. */
#cmakedefine HAVE_MEMCPY 1

/* Define to 1 if you have the `memmove' function. */
#cmakedefine HAVE_MEMMOVE 1

/* Define to 1 if you have the <memory.h> header file. */
#cmakedefine HAVE_MEMORY_H 1

/* Define if the target system has support for memory allocation using
   mmap(MAP_ANON) */
#cmakedefine HAVE_MEM_MMAP_ANON 1

/* Define if the target system has support for memory allocation using
   mmap("/dev/zero") */
#cmakedefine HAVE_MEM_MMAP_ZERO 1

/* */
#cmakedefine HAVE_MHASH_GET_HASH_NAME_STATIC_PROTO 1

/* */
#cmakedefine HAVE_MHASH_GET_KEYGEN_NAME_STATIC_PROTO 1

/* */
#cmakedefine HAVE_MING 1

/* */
#cmakedefine HAVE_MING_MOVIE_LEVEL 1

/* */
#cmakedefine HAVE_MING_SETSWFCOMPRESSION 1

/* */
#cmakedefine HAVE_MING_ZLIB 1

/* Define to 1 if you have the `mkfifo' function. */
#cmakedefine HAVE_MKFIFO 1

/* Define to 1 if you have the `mknod' function. */
#cmakedefine HAVE_MKNOD 1

/* Define to 1 if you have the `mkstemp' function. */
#cmakedefine HAVE_MKSTEMP 1

/* Define to 1 if you have the `mmap' function. */
#cmakedefine HAVE_MMAP 1

/* Define to 1 if you have the <monetary.h> header file. */
#cmakedefine HAVE_MONETARY_H 1

/* Define to 1 if you have the `mremap' function. */
#cmakedefine HAVE_MREMAP 1

/* */
#cmakedefine HAVE_MSQL 1

/* */
#cmakedefine HAVE_MSSQL 1

/* Whether you have MySQL */
#cmakedefine HAVE_MYSQL 1

/* */
#cmakedefine HAVE_MYSQLILIB 1

/* Define to 1 if you have the `mysql_commit' function. */
#cmakedefine HAVE_MYSQL_COMMIT 1

/* Define to 1 if you have the `mysql_next_result' function. */
#cmakedefine HAVE_MYSQL_NEXT_RESULT 1

/* Define to 1 if you have the `mysql_sqlstate' function. */
#cmakedefine HAVE_MYSQL_SQLSTATE 1

/* Define to 1 if you have the `mysql_stmt_prepare' function. */
#cmakedefine HAVE_MYSQL_STMT_PREPARE 1

/* Define to 1 if you have the `nanosleep' function. */
#cmakedefine HAVE_NANOSLEEP 1

/* Define to 1 if you have the <ndir.h> header file, and it defines `DIR'. */
#cmakedefine HAVE_NDIR_H 1

/* Define to 1 if you have the <netdb.h> header file. */
#cmakedefine HAVE_NETDB_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#cmakedefine HAVE_NETINET_IN_H 1

/* Define to 1 if you have the <netinet/tcp.h> header file. */
#cmakedefine HAVE_NETINET_TCP_H 1

/* */
#cmakedefine HAVE_NET_SNMP 1

/* Whether utf8_mime2text() has new signature */
#cmakedefine HAVE_NEW_MIME2TEXT 1

/* */
#cmakedefine HAVE_NEW_MING 1

/* */
#cmakedefine HAVE_NGETTEXT 1

/* Define to 1 if you have the `nice' function. */
#cmakedefine HAVE_NICE 1

/* Define to 1 if you have the `nl_langinfo' function. */
#cmakedefine HAVE_NL_LANGINFO 1

/* Whether you have a Netscape/iPlanet/Sun Webserver */
#cmakedefine HAVE_NSAPI 1

/* */
#cmakedefine HAVE_NSLDAP 1

/* */
#cmakedefine HAVE_OCI8 1

/* */
#cmakedefine HAVE_OCI8_TEMP_LOB 1

/* */
#cmakedefine HAVE_OCICOLLASSIGN 1

/* */
#cmakedefine HAVE_OCIENVCREATE 1

/* */
#cmakedefine HAVE_OCIENVNLSCREATE 1

/* */
#cmakedefine HAVE_OCILOBISTEMPORARY 1

/* */
#cmakedefine HAVE_OCISTMTFETCH2 1

/* */
#cmakedefine HAVE_OCI_ENV_CREATE 1

/* */
#cmakedefine HAVE_OCI_ENV_NLS_CREATE 1

/* */
#cmakedefine HAVE_OCI_INSTANT_CLIENT 1

/* */
#cmakedefine HAVE_OCI_LOB_READ2 1

/* */
#cmakedefine HAVE_OCI_STMT_PREPARE2 1

/* */
#cmakedefine HAVE_ODBC2 1

/* */
#cmakedefine HAVE_ODBCSDK_H 1

/* */
#cmakedefine HAVE_ODBC_H 1

/* */
#cmakedefine HAVE_ODBC_ROUTER 1

/* */
#cmakedefine HAVE_OLD_COMPAT_H 1

/* whether you have old-style readdir_r */
#cmakedefine HAVE_OLD_READDIR_R 1

/* */
#cmakedefine HAVE_OPENSSL_EXT 1

/* */
#cmakedefine HAVE_ORALDAP 1

/* */
#cmakedefine HAVE_ORALDAP_10 1

/* Whether struct _zend_object_value is packed */
#cmakedefine HAVE_PACKED_OBJECT_VALUE 1

/* */
#cmakedefine HAVE_PCRE 1

/* */
#cmakedefine HAVE_PDO_DBLIB 1

/* */
#cmakedefine HAVE_PDO_FIREBIRD 1

/* Whether to build PostgreSQL for PDO support or not */
#cmakedefine HAVE_PDO_PGSQL 1

/* */
#cmakedefine HAVE_PDO_SQLITELIB 1

/* Define to 1 if you have the `perror' function. */
#cmakedefine HAVE_PERROR 1

/* Whether to build PostgreSQL support or not */
#cmakedefine HAVE_PGSQL 1

/* Whether libpq is compiled with --enable-multibyte */
#cmakedefine HAVE_PGSQL_WITH_MULTIBYTE_SUPPORT 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PGTRANSACTIONSTATUS 1

/* Whether to have pg_config.h */
#cmakedefine HAVE_PG_CONFIG_H 1

/* */
#cmakedefine HAVE_PHP_SESSION 1

/* Whether you have phttpd */
#cmakedefine HAVE_PHTTPD 1

/* Define to 1 if you have the `poll' function. */
#cmakedefine HAVE_POLL 1

/* whether to include POSIX-like functions */
#cmakedefine HAVE_POSIX 1

/* whether you have POSIX readdir_r */
#cmakedefine HAVE_POSIX_READDIR_R 1

/* PostgreSQL 7.0.x or later */
#cmakedefine HAVE_PQCLIENTENCODING 1

/* Broken libpq under windows */
#cmakedefine HAVE_PQCMDTUPLES 1

/* PostgreSQL 7.2.0 or later */
#cmakedefine HAVE_PQESCAPE 1

/* PostgreSQL 8.1.4 or later */
#cmakedefine HAVE_PQESCAPE_BYTEA_CONN 1

/* PostgreSQL 8.1.4 or later */
#cmakedefine HAVE_PQESCAPE_CONN 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQEXECPARAMS 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQEXECPREPARED 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQFREEMEM 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQFTABLE 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQGETCOPYDATA 1

/* Older PostgreSQL */
#cmakedefine HAVE_PQOIDVALUE 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQPARAMETERSTATUS 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQPREPARE 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQPROTOCOLVERSION 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQPUTCOPYDATA 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQPUTCOPYEND 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQRESULTERRORFIELD 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQSENDPREPARE 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQSENDQUERYPARAMS 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQSENDQUERYPREPARED 1

/* PostgreSQL 7.4 or later */
#cmakedefine HAVE_PQSETERRORVERBOSITY 1

/* PostgreSQL 7.0.x or later */
#cmakedefine HAVE_PQSETNONBLOCKING 1

/* PostgreSQL 7.3.0 or later */
#cmakedefine HAVE_PQUNESCAPEBYTEA 1

/* */
#cmakedefine HAVE_PREAD 1

/* */
#cmakedefine HAVE_PSPELL 1

/* Whether ptrdiff_t is available */
#cmakedefine HAVE_PTRDIFF_T 1

/* Define to 1 if you have the `ptsname' function. */
#cmakedefine HAVE_PTSNAME 1

/* Define to 1 if you have the `putenv' function. */
#cmakedefine HAVE_PUTENV 1

/* Define to 1 if you have the <pwd.h> header file. */
#cmakedefine HAVE_PWD_H 1

/* */
#cmakedefine HAVE_PWRITE 1

/* Define to 1 if you have the `random' function. */
#cmakedefine HAVE_RANDOM 1

/* Define to 1 if you have the `rand_r' function. */
#cmakedefine HAVE_RAND_R 1

/* Define to 1 if you have the `realpath' function. */
#cmakedefine HAVE_REALPATH 1

/* Whether Reflection is enabled */
#cmakedefine HAVE_REFLECTION 1

/* 1 */
#cmakedefine HAVE_REGEX_T_RE_MAGIC 1

/* Define to 1 if you have the <resolv.h> header file. */
#cmakedefine HAVE_RESOLV_H 1

/* */
#cmakedefine HAVE_RES_NMKQUERY 1

/* */
#cmakedefine HAVE_RES_NSEND 1

/* Define to 1 if you have the `res_search' function. */
#cmakedefine HAVE_RES_SEARCH 1

/* */
#cmakedefine HAVE_RL_CALLBACK_READ_CHAR 1

/* Define to 1 if you have the `rl_completion_matches' function. */
#cmakedefine HAVE_RL_COMPLETION_MATCHES 1

/* Whether you use Roxen */
#cmakedefine HAVE_ROXEN 1

/* */
#cmakedefine HAVE_SAPDB 1

/* Define to 1 if you have the `scandir' function. */
#cmakedefine HAVE_SCANDIR 1

/* */
#cmakedefine HAVE_SEMUN 1

/* Define to 1 if you have the `setegid' function. */
#cmakedefine HAVE_SETEGID 1

/* Define to 1 if you have the `setenv' function. */
#cmakedefine HAVE_SETENV 1

/* Define to 1 if you have the `seteuid' function. */
#cmakedefine HAVE_SETEUID 1

/* Define to 1 if you have the `setitimer' function. */
#cmakedefine HAVE_SETITIMER 1

/* Define to 1 if you have the `setlocale' function. */
#cmakedefine HAVE_SETLOCALE 1

/* Define to 1 if you have the `setpgid' function. */
#cmakedefine HAVE_SETPGID 1

/* Define to 1 if you have the `setpriority' function. */
#cmakedefine HAVE_SETPRIORITY 1

/* Define to 1 if you have the `setsid' function. */
#cmakedefine HAVE_SETSID 1

/* Define to 1 if you have the `setsockopt' function. */
#cmakedefine HAVE_SETSOCKOPT 1

/* Define to 1 if you have the `setvbuf' function. */
#cmakedefine HAVE_SETVBUF 1

/* */
#cmakedefine HAVE_SHMOP 1

/* Define to 1 if you have the `shutdown' function. */
#cmakedefine HAVE_SHUTDOWN 1

/* */
#cmakedefine HAVE_SIGACTION 1

/* Define to 1 if you have the <signal.h> header file. */
#cmakedefine HAVE_SIGNAL_H 1

/* Define to 1 if you have the `sigsetjmp' function. */
#cmakedefine HAVE_SIGSETJMP 1

/* */
#cmakedefine HAVE_SIMPLEXML 1

/* Define to 1 if you have the `sin' function. */
#cmakedefine HAVE_SIN 1

/* */
#cmakedefine HAVE_SNMP 1

/* */
#cmakedefine HAVE_SNMP_PARSE_OID 1

/* Define to 1 if you have the `snprintf' function. */
#cmakedefine HAVE_SNPRINTF 1

/* */
#cmakedefine HAVE_SOAP 1

/* Whether struct sockaddr has field sa_len */
#cmakedefine HAVE_SOCKADDR_SA_LEN 1

/* Whether you have struct sockaddr_storage */
#cmakedefine HAVE_SOCKADDR_STORAGE 1

/* Define if sockaddr_un in sys/un.h contains a sun_len component */
#cmakedefine HAVE_SOCKADDR_UN_SUN_LEN 1

/* */
#cmakedefine HAVE_SOCKET 1

/* Define to 1 if you have the `socketpair' function. */
#cmakedefine HAVE_SOCKETPAIR 1

/* */
#cmakedefine HAVE_SOCKETS 1

/* Whether you have socklen_t */
#cmakedefine HAVE_SOCKLEN_T 1

/* */
#cmakedefine HAVE_SOLID 1

/* */
#cmakedefine HAVE_SOLID_30 1

/* */
#cmakedefine HAVE_SOLID_35 1

/* Whether you want SPL (Standard PHP Library) support */
#cmakedefine HAVE_SPL 1

/* */
#cmakedefine HAVE_SQLCLI1_H 1

/* */
#cmakedefine HAVE_SQLDATASOURCES 1

/* */
#cmakedefine HAVE_SQLEXT_H 1

/* have commercial sqlite3 with crypto support */
#cmakedefine HAVE_SQLITE3_KEY 1

/* */
#cmakedefine HAVE_SQLTYPES_H 1

/* */
#cmakedefine HAVE_SQLUCODE_H 1

/* */
#cmakedefine HAVE_SQLUNIX_H 1

/* */
#cmakedefine HAVE_SQL_H 1

/* Define to 1 if you have the `srand48' function. */
#cmakedefine HAVE_SRAND48 1

/* Define to 1 if you have the `srandom' function. */
#cmakedefine HAVE_SRANDOM 1

/* Whether ssize_t is available */
#cmakedefine HAVE_SSIZE_T 1

/* Define to 1 if you have the `statfs' function. */
#cmakedefine HAVE_STATFS 1

/* Define to 1 if you have the `statvfs' function. */
#cmakedefine HAVE_STATVFS 1

/* Define to 1 if you have the <stdarg.h> header file. */
#cmakedefine HAVE_STDARG_H 1

/* Define to 1 if you have the <stdbool.h> header file. */
#cmakedefine HAVE_STDBOOL_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#cmakedefine HAVE_STDLIB_H 1

/* Define to 1 if you have the `std_syslog' function. */
#cmakedefine HAVE_STD_SYSLOG 1

/* Define to 1 if you have the `strcasecmp' function. */
#cmakedefine HAVE_STRCASECMP 1

/* Define to 1 if you have the `strcoll' function. */
#cmakedefine HAVE_STRCOLL 1

/* Define to 1 if you have the `strdup' function. */
#cmakedefine HAVE_STRDUP 1

/* Define to 1 if you have the `strerror' function. */
#cmakedefine HAVE_STRERROR 1

/* Define to 1 if you have the `strfmon' function. */
#cmakedefine HAVE_STRFMON 1

/* Define to 1 if you have the `strftime' function. */
#cmakedefine HAVE_STRFTIME 1

/* Define to 1 if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H 1

/* Define to 1 if you have the `strlcat' function. */
#cmakedefine HAVE_STRLCAT 1

/* Define to 1 if you have the `strlcpy' function. */
#cmakedefine HAVE_STRLCPY 1

/* Define to 1 if you have the `strpbrk' function. */
#cmakedefine HAVE_STRPBRK 1

/* Define to 1 if you have the `strptime' function. */
#cmakedefine HAVE_STRPTIME 1

/* whether strptime() declaration fails */
#cmakedefine HAVE_STRPTIME_DECL_FAILS 1

/* Define to 1 if you have the `strstr' function. */
#cmakedefine HAVE_STRSTR 1

/* Define to 1 if you have the `strtod' function. */
#cmakedefine HAVE_STRTOD 1

/* Define to 1 if you have the `strtok_r' function. */
#cmakedefine HAVE_STRTOK_R 1

/* Define to 1 if you have the `strtol' function. */
#cmakedefine HAVE_STRTOL 1

/* Define to 1 if you have the `strtoll' function. */
#cmakedefine HAVE_STRTOLL 1

/* Define to 1 if you have the `strtoul' function. */
#cmakedefine HAVE_STRTOUL 1

/* Define to 1 if you have the `strtoull' function. */
#cmakedefine HAVE_STRTOULL 1

/* whether you have struct flock */
#cmakedefine HAVE_STRUCT_FLOCK 1

/* Define to 1 if `st_blksize' is member of `struct stat'. */
#cmakedefine HAVE_STRUCT_STAT_ST_BLKSIZE 1

/* Define to 1 if `st_blocks' is member of `struct stat'. */
#cmakedefine HAVE_STRUCT_STAT_ST_BLOCKS 1

/* Define to 1 if `st_rdev' is member of `struct stat'. */
#cmakedefine HAVE_STRUCT_STAT_ST_RDEV 1

/* Define to 1 if `tm_zone' is member of `struct tm'. */
#cmakedefine HAVE_STRUCT_TM_TM_ZONE 1

/* Define to 1 if your `struct stat' has `st_blksize'. Deprecated, use
   `HAVE_STRUCT_STAT_ST_BLKSIZE' instead. */
#cmakedefine HAVE_ST_BLKSIZE 1

/* Define to 1 if your `struct stat' has `st_blocks'. Deprecated, use
   `HAVE_STRUCT_STAT_ST_BLOCKS' instead. */
#cmakedefine HAVE_ST_BLOCKS 1

/* Define to 1 if you have the <st.h> header file. */
#cmakedefine HAVE_ST_H 1

/* Define to 1 if your `struct stat' has `st_rdev'. Deprecated, use
   `HAVE_STRUCT_STAT_ST_RDEV' instead. */
#cmakedefine HAVE_ST_RDEV 1

/* */
#cmakedefine HAVE_SWFMOVIE_NAMEDANCHOR 1

/* */
#cmakedefine HAVE_SWFPREBUILTCLIP 1

/* */
#cmakedefine HAVE_SYBASE 1

/* */
#cmakedefine HAVE_SYBASE_CT 1

/* Define to 1 if you have the `symlink' function. */
#cmakedefine HAVE_SYMLINK 1

/* Define to 1 if you have the <sysexits.h> header file. */
#cmakedefine HAVE_SYSEXITS_H 1

/* Define to 1 if you have the <syslog.h> header file. */
#cmakedefine HAVE_SYSLOG_H 1

/* */
#cmakedefine HAVE_SYSVMSG 1

/* */
#cmakedefine HAVE_SYSVSEM 1

/* */
#cmakedefine HAVE_SYSVSHM 1

/* Define to 1 if you have the <sys/dir.h> header file, and it defines `DIR'.
   */
#cmakedefine HAVE_SYS_DIR_H 1

/* Define to 1 if you have the <sys/file.h> header file. */
#cmakedefine HAVE_SYS_FILE_H 1

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#cmakedefine HAVE_SYS_IOCTL_H 1

/* Define to 1 if you have the <sys/ipc.h> header file. */
#cmakedefine HAVE_SYS_IPC_H 1

/* Define to 1 if you have the <sys/loadavg.h> header file. */
#cmakedefine HAVE_SYS_LOADAVG_H 1

/* Define to 1 if you have the <sys/mkdev.h> header file. */
#cmakedefine HAVE_SYS_MKDEV_H 1

/* Define to 1 if you have the <sys/mman.h> header file. */
#cmakedefine HAVE_SYS_MMAN_H 1

/* Define to 1 if you have the <sys/mount.h> header file. */
#cmakedefine HAVE_SYS_MOUNT_H 1

/* Define to 1 if you have the <sys/ndir.h> header file, and it defines `DIR'.
   */
#cmakedefine HAVE_SYS_NDIR_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
#cmakedefine HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/poll.h> header file. */
#cmakedefine HAVE_SYS_POLL_H 1

/* Define to 1 if you have the <sys/resource.h> header file. */
#cmakedefine HAVE_SYS_RESOURCE_H 1

/* Define to 1 if you have the <sys/select.h> header file. */
#cmakedefine HAVE_SYS_SELECT_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/statfs.h> header file. */
#cmakedefine HAVE_SYS_STATFS_H 1

/* Define to 1 if you have the <sys/statvfs.h> header file. */
#cmakedefine HAVE_SYS_STATVFS_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/sysexits.h> header file. */
#cmakedefine HAVE_SYS_SYSEXITS_H 1

/* Define to 1 if you have the <sys/times.h> header file. */
#cmakedefine HAVE_SYS_TIMES_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/un.h> header file. */
#cmakedefine HAVE_SYS_UN_H 1

/* Define to 1 if you have the <sys/utsname.h> header file. */
#cmakedefine HAVE_SYS_UTSNAME_H 1

/* Define to 1 if you have the <sys/varargs.h> header file. */
#cmakedefine HAVE_SYS_VARARGS_H 1

/* Define to 1 if you have the <sys/vfs.h> header file. */
#cmakedefine HAVE_SYS_VFS_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
#cmakedefine HAVE_SYS_WAIT_H 1

/* Define to 1 if you have the `tempnam' function. */
#cmakedefine HAVE_TEMPNAM 1

/* Define to 1 if you have the <termios.h> header file. */
#cmakedefine HAVE_TERMIOS_H 1

/* */
#cmakedefine HAVE_TIDY 1

/* */
#cmakedefine HAVE_TIDYOPTGETDOC 1

/* Define to 1 if you have the <time.h> header file. */
#cmakedefine HAVE_TIME_H 1

/* whether you have tm_gmtoff in struct tm */
#cmakedefine HAVE_TM_GMTOFF 1

/* Define to 1 if your `struct tm' has `tm_zone'. Deprecated, use
   `HAVE_STRUCT_TM_TM_ZONE' instead. */
#cmakedefine HAVE_TM_ZONE 1

/* Whether you have a working ttyname_r */
#cmakedefine HAVE_TTYNAME_R 1

/* Define to 1 if you have the <tuxmodule.h> header file. */
#cmakedefine HAVE_TUXMODULE_H 1

/* Define to 1 if you don't have `tm_zone' but do have the external array
   `tzname'. */
#cmakedefine HAVE_TZNAME 1

/* Define to 1 if you have the `tzset' function. */
#cmakedefine HAVE_TZSET 1

/* */
#cmakedefine HAVE_UDBCEXT_H 1

/* Define if uint32_t type is present. */
#cmakedefine HAVE_UINT32_T 1

/* Define to 1 if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H 1

/* */
#cmakedefine HAVE_UNIXODBC 1

/* Define to 1 if you have the <unix.h> header file. */
#cmakedefine HAVE_UNIX_H 1

/* Define to 1 if you have the `unlockpt' function. */
#cmakedefine HAVE_UNLOCKPT 1

/* Define to 1 if you have the `unsetenv' function. */
#cmakedefine HAVE_UNSETENV 1

/* */
#cmakedefine HAVE_UODBC 1

/* Define to 1 if you have the `usleep' function. */
#cmakedefine HAVE_USLEEP 1

/* Define to 1 if you have the `utime' function. */
#cmakedefine HAVE_UTIME 1

/* Define to 1 if you have the <utime.h> header file. */
#cmakedefine HAVE_UTIME_H 1

/* Define to 1 if `utime(file, NULL)' sets file's timestamp to the present. */
#cmakedefine HAVE_UTIME_NULL 1

/* Define to 1 if you have the `vprintf' function. */
#cmakedefine HAVE_VPRINTF 1

/* Define to 1 if you have the `vsnprintf' function. */
#cmakedefine HAVE_VSNPRINTF 1

/* Define to 1 if you have the `wait3' function. */
#cmakedefine HAVE_WAIT3 1

/* */
#cmakedefine HAVE_WAITPID 1

/* Define to 1 if you have the <wchar.h> header file. */
#cmakedefine HAVE_WCHAR_H 1

/* */
#cmakedefine HAVE_WDDX 1

/* */
#cmakedefine HAVE_XML 1

/* Define to 1 if you have the <xmlparse.h> header file. */
#cmakedefine HAVE_XMLPARSE_H 1

/* */
#cmakedefine HAVE_XMLREADER 1

/* */
#cmakedefine HAVE_XMLRPC 1

/* Define to 1 if you have the <xmltok.h> header file. */
#cmakedefine HAVE_XMLTOK_H 1

/* */
#cmakedefine HAVE_XMLWRITER 1

/* */
#cmakedefine HAVE_XSL 1

/* */
#cmakedefine HAVE_XSL_EXSLT 1

/* */
#cmakedefine HAVE_YP_GET_DEFAULT_DOMAIN 1

/* */
#cmakedefine HAVE_ZIP 1

/* */
#cmakedefine HAVE_ZLIB 1

/* */
#cmakedefine HPUX 1

/* */
#cmakedefine HSREGEX 1

/* Whether iconv supports error no or not */
#cmakedefine ICONV_SUPPORTS_ERRNO 1

/* */
#cmakedefine ISOLARIS 1

/* */
#cmakedefine LINUX 1

/* Whether asctime_r is declared */
#cmakedefine MISSING_ASCTIME_R_DECL 1

/* Whether ctime_r is declared */
#cmakedefine MISSING_CTIME_R_DECL 1

/* */
#cmakedefine MISSING_FCLOSE_DECL 1

/* Whether gmtime_r is declared */
#cmakedefine MISSING_GMTIME_R_DECL 1

/* Whether localtime_r is declared */
#cmakedefine MISSING_LOCALTIME_R_DECL 1

/* */
#cmakedefine MISSING_MSGHDR_MSGFLAGS 1

/* Whether strtok_r is declared */
#cmakedefine MISSING_STRTOK_R_DECL 1

/* */
#cmakedefine MSQL1 1

/* Whether mysqlnd is enabled */
#cmakedefine MYSQLI_USE_MYSQLND 1

/* Whether mysqlnd threading is enabled */
#cmakedefine MYSQLND_THREADED 1

/* */
#cmakedefine MYSQL_UNIX_ADDR 1

/* Whether mysqlnd is enabled */
#cmakedefine MYSQL_USE_MYSQLND 1

/* */
#cmakedefine NDBM_INCLUDE_FILE 1

/* */
#cmakedefine NEUTRINO 1

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
#cmakedefine NO_MINUS_C_MINUS_O 1

/* Define to the address where bug reports for this package should be sent. */
#cmakedefine PACKAGE_BUGREPORT 1

/* Define to the full name of this package. */
#cmakedefine PACKAGE_NAME 1

/* Define to the full name and version of this package. */
#cmakedefine PACKAGE_STRING 1

/* Define to the one symbol short name of this package. */
#cmakedefine PACKAGE_TARNAME 1

/* Define to the version of this package. */
#cmakedefine PACKAGE_VERSION 1

/* */
#cmakedefine PDO_MYSQL_UNIX_ADDR 1

/* */
#cmakedefine PHP_APACHE_HAVE_CLIENT_FD 1

/* Whether the system supports BlowFish salt */
#cmakedefine PHP_BLOWFISH_CRYPT 1

/* PHP build date */
#cmakedefine PHP_BUILD_DATE 1

/* Define if your system has fork/vfork/CreateProcess */
#cmakedefine PHP_CAN_SUPPORT_PROC_OPEN 1

/* */
#cmakedefine PHP_CURL_URL_WRAPPERS 1

/* Whether the system supports extended DES salt */
#cmakedefine PHP_EXT_DES_CRYPT 1

/* GD library version */
#cmakedefine PHP_GD_VERSION_STRING 1

/* Whether you have HP-UX 10.x */
#cmakedefine PHP_HPUX_TIME_R 1

/* Path to iconv.h */
#cmakedefine PHP_ICONV_H_PATH 1

/* Which iconv implementation to use */
#cmakedefine PHP_ICONV_IMPL 1

/* Whether you have IRIX-style functions */
#cmakedefine PHP_IRIX_TIME_R 1

/* Whether the system supports MD5 salt */
#cmakedefine PHP_MD5_CRYPT 1

/* magic file path */
#cmakedefine PHP_MIME_MAGIC_FILE_PATH 1

/* */
#cmakedefine PHP_OCI8_HAVE_COLLECTIONS 1

/* uname output */
#cmakedefine PHP_OS "@PHP_OS@"

/* */
#cmakedefine PHP_PDO_OCI_CLIENT_VERSION 1

/* whether pread64 is default */
#cmakedefine PHP_PREAD_64 1

/* whether pwrite64 is default */
#cmakedefine PHP_PWRITE_64 1

/* see #24142 */
#cmakedefine PHP_ROUND_FUZZ 1

/* */
#cmakedefine PHP_SIGCHILD 1

/* Have PDO */
#cmakedefine PHP_SQLITE2_HAVE_PDO 1

/* Whether the system supports standard DES salt */
#cmakedefine PHP_STD_DES_CRYPT 1

/* */
#cmakedefine PHP_SYBASE_DBOPEN 1

/* uname -a output */
#cmakedefine PHP_UNAME 1

/* whether write(2) works */
#cmakedefine PHP_WRITE_STDOUT 1

/* Whether to use Pthreads */
#cmakedefine PTHREADS 1

/* */
#cmakedefine QDBM_INCLUDE_FILE 1

/* */
#cmakedefine REGEX 1

/* Define as the return type of signal handlers (`int' or `void'). */
#cmakedefine RETSIGTYPE 1

/* Whether to use Roxen in ZTS mode */
#cmakedefine ROXEN_USE_ZTS 1

/* The size of `char', as computed by sizeof. */
#cmakedefine SIZEOF_CHAR @SIZEOF_CHAR@

/* The size of `char *', as computed by sizeof. */
#cmakedefine SIZEOF_CHAR_P @SIZEOF_CHAR_P@

/* The size of `int', as computed by sizeof. */
#cmakedefine SIZEOF_INT @SIZEOF_INT@

/* Size of intmax_t */
#cmakedefine SIZEOF_INTMAX_T @SIZEOF_INTMAX_T@

/* The size of `long', as computed by sizeof. */
#cmakedefine SIZEOF_LONG @SIZEOF_LONG@

/* The size of `long int', as computed by sizeof. */
#cmakedefine SIZEOF_LONG_INT @SIZEOF_LONG_INT@

/* The size of `long long', as computed by sizeof. */
#cmakedefine SIZEOF_LONG_LONG @SIZEOF_LONG_LONG@

/* The size of `long long int', as computed by sizeof. */
#cmakedefine SIZEOF_LONG_LONG_INT @SIZEOF_LONG_LONG_INT@

/* Size of ptrdiff_t */
#cmakedefine SIZEOF_PTRDIFF_T @SIZEOF_PTRDIFF_T@

/* The size of `short', as computed by sizeof. */
#cmakedefine SIZEOF_SHORT @SIZEOF_SHORT@

/* The size of `size_t', as computed by sizeof. */
#cmakedefine SIZEOF_SIZE_T @SIZEOF_SIZE_T@

/* Size of ssize_t */
#cmakedefine SIZEOF_SSIZE_T @SIZEOF_SSIZE_T@

/* */
#cmakedefine SOLARIS 1

/* Size of a pointer */
#cmakedefine SQLITE_PTR_SZ 1

/* */
#cmakedefine SQLITE_UTF8 1

/* Needed in sqlunix.h for wchar defs */
#cmakedefine SS_FBX 1

/* Needed in sqlunix.h */
#cmakedefine SS_LINUX 1

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown */
#cmakedefine STACK_DIRECTION 1

/* Define to 1 if you have the ANSI C header files. */
#cmakedefine STDC_HEADERS 1

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#cmakedefine TIME_WITH_SYS_TIME 1

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
#cmakedefine TM_IN_SYS_TIME 1

/* */
#cmakedefine TSRM_ST 1

/* */
#cmakedefine UCD_SNMP_HACK 1

/* */
#cmakedefine UNDEF_THREADS_HACK 1

/* */
#cmakedefine UNIXWARE 1

/* */
#cmakedefine USE_GD_IMGSTRTTF 1

/* */
#cmakedefine USE_GD_JISX0208 1

/* Define if cross-process locking is required by accept() */
#cmakedefine USE_LOCKING 1

/* */
#cmakedefine USE_TRANSFER_TABLES 1

/* whether you want Pi3Web support */
#cmakedefine WITH_PI3WEB 1

/* */
#cmakedefine WITH_ZEUS 1

/* Define if processor uses big-endian word */
#cmakedefine WORDS_BIGENDIAN 1

/* Whether sprintf is broken */
#cmakedefine ZEND_BROKEN_SPRINTF 1

/* */
#cmakedefine ZEND_DEBUG 1

/* */
#cmakedefine ZEND_MM_ALIGNMENT 1

/* */
#cmakedefine ZEND_MM_ALIGNMENT_LOG2 1

/* virtual machine dispatch method */
#cmakedefine ZEND_VM_KIND 1

/* */
#cmakedefine ZTS 1

/* Define to 1 if on AIX 3.
   System headers sometimes define this.
   We just want to avoid a redefinition error message.  */
#ifndef _ALL_SOURCE
# undef _ALL_SOURCE
#endif

/* Define to empty if `const' does not conform to ANSI C. */
#cmakedefine const @const@

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine gid_t @gid_t@

/* */
#cmakedefine in_addr_t @in_addr_t@

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#cmakedefine inline @inline@
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
#cmakedefine size_t @size_t@

/* Define to `int' if <sys/types.h> doesn't define. */
#cmakedefine uid_t @uid_t@

/* Define to `unsigned int ' if <sys/types.h> does not define. */
#cmakedefine uint @uint@

/* Define to `unsigned long ' if <sys/types.h> does not define. */
#cmakedefine ulong @ulong@

#ifndef ZEND_ACCONFIG_H_NO_C_PROTOS

#ifdef HAVE_STDLIB_H
# include <stdlib.h>
#endif

#ifdef HAVE_SYS_TYPES_H
# include <sys/types.h>
#endif

#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif

#ifdef HAVE_IEEEFP_H
# include <ieeefp.h>
#endif

#ifdef HAVE_STRING_H
# include <string.h>
#else
# include <strings.h>
#endif

#if ZEND_BROKEN_SPRINTF
int zend_sprintf(char *buffer, const char *format, ...);
#else
# define zend_sprintf sprintf
#endif

#include <math.h>

/* To enable the is_nan, is_infinite and is_finite PHP functions */
#ifdef NETWARE
	#define HAVE_ISNAN 1
	#define HAVE_ISINF 1
	#define HAVE_ISFINITE 1
#endif

#ifndef zend_isnan
#ifdef HAVE_ISNAN
#define zend_isnan(a) isnan(a)
#elif defined(HAVE_FPCLASS)
#define zend_isnan(a) ((fpclass(a) == FP_SNAN) || (fpclass(a) == FP_QNAN))
#else
#define zend_isnan(a) 0
#endif
#endif

#ifdef HAVE_ISINF
#define zend_isinf(a) isinf(a)
#elif defined(INFINITY)
/* Might not work, but is required by ISO C99 */
#define zend_isinf(a) (((a)==INFINITY)?1:0)
#elif defined(HAVE_FPCLASS)
#define zend_isinf(a) ((fpclass(a) == FP_PINF) || (fpclass(a) == FP_NINF))
#else
#define zend_isinf(a) 0
#endif

#ifdef HAVE_FINITE
#define zend_finite(a) finite(a)
#elif defined(HAVE_ISFINITE) || defined(isfinite)
#define zend_finite(a) isfinite(a)
#elif defined(fpclassify)
#define zend_finite(a) ((fpclassify((a))!=FP_INFINITE&&fpclassify((a))!=FP_NAN)?1:0)
#else
#define zend_finite(a) (zend_isnan(a) ? 0 : zend_isinf(a) ? 0 : 1)
#endif

#endif /* ifndef ZEND_ACCONFIG_H_NO_C_PROTOS */

#ifdef NETWARE
#ifdef USE_WINSOCK
#/*This detection against winsock is of no use*/ undef HAVE_SOCKLEN_T
#/*This detection against winsock is of no use*/ undef HAVE_SYS_SOCKET_H
#endif
#endif

/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * indent-tabs-mode: t
 * End:
 */
#cmakedefine PTHREADS 1

