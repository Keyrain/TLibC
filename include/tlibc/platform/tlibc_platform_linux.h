#ifndef _H_TLIBC_PLATFORM_LINUX
#define _H_TLIBC_PLATFORM_LINUX

#define TLIBC_FILE_SEPARATOR '/'

#include <stddef.h>
#include <inttypes.h>
#include <sys/stat.h>
//���������stdlib.h strtoll�����
#include <stdlib.h>

#define tlibc_mkdir(path, mode) mkdir(path, mode)

#endif
