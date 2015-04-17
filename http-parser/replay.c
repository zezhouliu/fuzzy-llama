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
  printf("%u", p->type);
  printf("%u", p->flags);       
  printf("%u", p->state);       
  printf("%u", p->header_state);
  printf("%u", p->index);       
  printf("%u", p->nread);       
  printf("%llu", p->content_length);       
  printf("%hu", p->http_major);
  printf("%hu", p->http_minor);
  printf("%u", p->status_code); /* responses only */
  printf("%u", p->method);       /* requests only */
  printf("%u", p->http_errno);
  printf("%u", p->upgrade);
  printf("%s", p->data); 

}

int 
main(int argc, char *argv[]){
	char* s = argv[1];
	/* allocate the buffer */
	char * buffer = malloc((strlen(s) / 2) + 1);
	
	char *h = s; /* this will walk through the hex string */
	char *b = buffer; /* point inside the buffer */
	
	/* offset into this string is the numeric value */
	char xlate[] = "0123456789abcdef";
	
	for ( ; *h; h += 2, ++b) /* go by twos through the hex string */
	   *b = ((strchr(xlate, *h) - xlate) * 16) /* multiply leading digit by 16 */
	       + ((strchr(xlate, *(h+1)) - xlate));	


	print_http_parser((http_parser *)buffer);

}
