/**
* utils.h
*
* @Brief: Utilites file including helper functions, i.e., debugging tools
*/

#ifndef __UTILS_H__
#define __UTILS_H__

//Headers for variable arguments
#include <stdarg.h>
//Standard IO Operations
#include <stdio.h>
//Memory Allocations
#include <stdlib.h>
//Errno numbers (*NIX only)
#include <errno.h>
//integers of variables sizes
#include <stdint.h>
//String and generic array operations
#include <string.h>
//Assertations
#include <assert.h>
//Boolean variables
#include <stdbool.h>

void log_error(FILE* out, const char *format, ...);

#endif /* __UTILS_H__ */
