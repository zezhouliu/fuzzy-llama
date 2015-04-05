#include "utils.h"


/**
* log(out, format)
*
* @Brief: Logs out a string to the outfile pointer, extendable for additional params
* @Usage: log(stderr, "%s: line %d", __func__, __LINE__);
**/
void logg(FILE* out, const char *format, ...)
{
    va_list v;
    va_start(v, format);
    vfprintf(out, format, v);
    va_end(v);
}

/**
* log_out(out, format)
*
* @Brief: Logs out a string to stdout, extendable for additional params
* @Usage: log_error("%s: line %d", __func__, __LINE__);
**/
void log_out(const char *format, ...)
{
#if DEBUG_MODE
    va_list v;
    va_start(v, format);
    vfprintf(stdout, format, v);
    va_end(v);
#else
    // Clean up compiler warning
    (void) format;
#endif
}

/**
* log_error(format)
*
* @Brief: Logs out a string to stderr, extendable for additional params
* @Usage: log_error("%s: line %d", __func__, __LINE__);
**/
void log_error(const char *format, ...)
{
    va_list v;
    va_start(v, format);
    vfprintf(stderr, format, v);
    va_end(v);
}
