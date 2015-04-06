/**
* utils.h
*
* @Brief: Utilites file including helper functions, i.e., debugging tools
*/

#pragma once


#define DEBUG_MODE 0
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


void logg(FILE* out, const char *format, ...);
void log_out(const char *format, ...);
void log_error(const char *format, ...);

