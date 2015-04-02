#include "utils.h"


/**
 * log_error(out, format)
 * 
 * @Brief: Logs out a string to the outfile pointer, extendable for additional params
 * @Usage: log_error(stderr, "%s: line %d", __func__, __LINE__);
 **/
void log_error(FILE* out, const char *format, ...)
{
    va_list v;
    va_start(a, fmt);
    vfprintf(out, fmt, ap);
    va_end(ap);
}