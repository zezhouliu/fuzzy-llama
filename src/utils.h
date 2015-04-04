/**
* utils.h
*
* @Brief: Utilites file including helper functions, i.e., debugging tools
*/

#ifndef __UTILS_H__
#define __UTILS_H__

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>
#include <stdbool.h>
void log_error(FILE* out, const char *format, ...);

#endif /* __UTILS_H__ */
