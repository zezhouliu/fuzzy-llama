#include "http_parser.h"
#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h> /* rand */
#include <string.h>
#include <stdarg.h>
#include <errno.h>
#include <klee/klee.h>


void
print_http_parser(http_parser *p){
  printf("%u\n", p->type);
  printf("%u\n", p->flags);       
  printf("%u\n", p->state);       
  printf("%u\n", p->header_state);
  printf("%u\n", p->index);       
  printf("%u\n", p->nread);       
  printf("%llu\n", p->content_length);       
  printf("%hu\n", p->http_major);
  printf("%hu\n", p->http_minor);
  printf("%u\n", p->status_code); /* responses only */
  printf("%u\n", p->method);       /* requests only */
  printf("%u\n", p->http_errno);
  printf("%u\n", p->upgrade);
  printf("%u\n", p->data); 

}

int 
main(int argc, char *argv[]){

    char *hexstring = argv[1];
    const char*pos = hexstring;
    unsigned char *val = malloc(sizeof(hexstring));
    size_t count = 0;

     /* WARNING: no sanitization or error-checking whatsoever */
    for(count = 0; count < sizeof(val)/sizeof(val[0]); count++) {
        sscanf(pos, "%2hhx", &val[count]);
        pos += 2 * sizeof(char);
    }
    
    print_http_parser((http_parser *)val);

}
