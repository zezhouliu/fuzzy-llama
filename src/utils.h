/**
* utils.h
*
* @Brief: Utilites file including helper functions, i.e., debugging tools
*/

#pragma once


#define DEBUG_MODE 1
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

#define SERVER_PORT 8080

void logg(FILE* out, const char *format, ...);
void log_out(const char *format, ...);
void log_error(const char *format, ...);



/***
    predicate IsEqualVoid{A, B}(void ** data, integer n, void ** ndata) =
        \forall integer i; 0 <= i < n ==> \at(data[i], A) == \at(ndata[i], B);

    lemma EqualityReflexive{T} :
        \forall void ** d; \forall integer n; IsEqualVoid{T,T}(d, n, d);

    lemma EqualityCommutative{S, T} :
        \forall void ** d, ** n; \forall integer num;
            IsEqualVoid{S, T}(d, num, n) ==> IsEqualVoid{T, S}(n, num, d);
 ****/
