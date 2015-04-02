/**
* utils.h
*
* @Brief: Utilites file including helper functions, i.e., debugging tools
*/

#ifndef __UTILS_H__
#define __UTILS_H__

#include <stdarg.h>
#include <stdio.h>

#include "constants.h"

void log_error(FILE* out, const char *format, ...);

#endif /* __UTILS_H__ */
