/* Copyright Joyent, Inc. and other Node contributors. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */
#include "http_parser.h"
#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h> /* rand */
#include <string.h>
#include <stdarg.h>
#include <limits.h>
#include <klee/klee.h>

#if defined(__APPLE__)
# undef strlcat
# undef strlncpy
# undef strlcpy
#endif  /* defined(__APPLE__) */

#undef TRUE
#define TRUE 1
#undef FALSE
#define FALSE 0

#define MAX_HEADERS 13
#define MAX_ELEMENT_SIZE 2048

#ifndef SYM_BUF_SZ
#define SYM_BUF_SZ 2
#endif

#define MIN(a,b) ((a) < (b) ? (a) : (b))

static http_parser *parser;

#if KLEE

typedef struct http_mini_parser { 
  int state; 
  int nread; 
} http_mini_parser; 

static http_mini_parser *mini_parser; 
#endif

struct message {
  const char *name; // for debugging purposes
  const char *raw;
  enum http_parser_type type;
  enum http_method method;
  int status_code;
  char response_status[MAX_ELEMENT_SIZE];
  char request_path[MAX_ELEMENT_SIZE];
  char request_url[MAX_ELEMENT_SIZE];
  char fragment[MAX_ELEMENT_SIZE];
  char query_string[MAX_ELEMENT_SIZE];
  char body[MAX_ELEMENT_SIZE];
  size_t body_size;
  const char *host;
  const char *userinfo;
  uint16_t port;
  int num_headers;
  enum { NONE=0, FIELD, VALUE } last_header_element;
  char headers [MAX_HEADERS][2][MAX_ELEMENT_SIZE];
  int should_keep_alive;

  const char *upgrade; // upgraded body

  unsigned short http_major;
  unsigned short http_minor;

  int message_begin_cb_called;
  int headers_complete_cb_called;
  int message_complete_cb_called;
  int message_complete_on_eof;
  int body_is_final;
};

static int currently_parsing_eof;

static struct message messages[5];
static int num_messages;
static http_parser_settings *current_pause_parser;

// VeriServe
//int
//verify_message_begin (http_parser *p)
//{
//  klee_assert(p->state == s_res_or_resp_H
//  || p->state == s_res_H
//  || p->state == s_res_method);  
//}

int
verify_message_begin_cb (http_parser *p)
{
  assert(p == parser);
  return 0;
}

int
verify_header_field_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == parser);
  return 0;
}

int
verify_header_value_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == parser);
  return 0;
}

int
verify_request_url_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == parser);
  return 0;
}

int
verify_response_status_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == parser);
  return 0;
}

int
verify_body_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == parser);
  return 0;
}

int
verify_headers_complete_cb (http_parser *p)
{
  assert(p == parser);
  return 0;
}

int
verify_message_complete_cb (http_parser *p)
{
  assert(p == parser);
  return 0;
}

// VeriServe
static http_parser_settings settings_verify =
  {.on_message_begin = verify_message_begin_cb
  ,.on_header_field = verify_header_field_cb
  ,.on_header_value = verify_header_value_cb
  ,.on_url = verify_request_url_cb
  ,.on_status = verify_response_status_cb
  ,.on_body = verify_body_cb
  ,.on_headers_complete = verify_headers_complete_cb
  ,.on_message_complete = verify_message_complete_cb
  };

/* Modified to be compatible with klee code */
void
parser_init_base (enum http_parser_type type)
{
  assert(parser == NULL);
  parser = malloc(sizeof(http_parser));
  http_parser_init(parser, type);
}


#if KLEE
void
parser_init_inductive (enum http_parser_type type)
{
  
  assert(parser == NULL);
  parser = malloc(sizeof(http_parser));
  http_parser_init_symbolic(parser, type);
}
#endif

#if KLEE 
void 
mini_parser_init(http_mini_parser* mini_parser) { 
  mini_parser = malloc(sizeof(http_mini_parser)); 
  klee_make_symbolic(&mini_parser->state, sizeof(mini_parser->state),"mini_parser state"); 
  klee_make_symbolic(&mini_parser->nread, sizeof(mini_parser->nread), "mini_parser nread"); 
}
#endif 

void
parser_free ()
{
  assert(parser);
  free(parser);
  parser = NULL;
}

size_t parse (const char *buf, size_t len)
{
  size_t nparsed;
  currently_parsing_eof = (len == 0);
  nparsed = http_parser_execute(parser, &settings_verify, buf, len);
  return nparsed;
}

// VeriServe
size_t http_parser_execute_incrementally(http_parser *parser, 
                                         const http_parser_settings *settings, 
                                         const char *data, 
                                         size_t len) { 
  int err; 
  int i;
  for (i = 0; i < len; i++) { 
    err = http_parser_execute(parser, settings, &data[i], 1);
    if (!err){
#if KLEE
            klee_assert(0);
#else
      printf("Error Code: %d", err);
#endif // KLEE 
      return err;
    }
  }
  return 0;
}

// VeriServe
size_t parse_incrementally (const char *buf, size_t len)
{
  size_t nparsed;
  currently_parsing_eof = (len == 0);
  nparsed = http_parser_execute_incrementally(parser, &settings_verify, buf, len);
  return nparsed;
}

// VeriServe
// void
// test_symbolic_parser (const char *buf, enum http_errno err_expected)
// {

//   parser_init(HTTP_BOTH);

//   enum http_errno err;

//   parse_incrementally(buf, strlen(buf));

//   err = HTTP_PARSER_ERRNO(parser);
//   parse(NULL, 0);

//   parser_free();

//   if(err == HPE_UNKNOWN){
//  klee_assert(0);
//   }

//}

#if KLEE
int valid_parser_states(){
  switch(parser->state){
    case s_dead:
    case s_start_req_or_res:
    case s_res_or_resp_H:
    case s_start_res:
    case s_res_H:
    case s_res_HT:
    case s_res_HTT:
    case s_res_HTTP:
    case s_res_first_http_major:
    case s_res_http_major:
    case s_res_first_http_minor:
    case s_res_http_minor:
    case s_res_first_status_code:
    case s_res_status_code:
    case s_res_status_start:
    case s_res_status:
    case s_res_line_almost_done:
    case s_start_req:
    case s_req_method:
    case s_req_spaces_before_url:
    case s_req_schema:
    case s_req_schema_slash:
    case s_req_schema_slash_slash:
    case s_req_server_start:
    case s_req_server:
    case s_req_server_with_at:
    case s_req_path:
    case s_req_query_string_start:
    case s_req_query_string:
    case s_req_fragment_start:
    case s_req_fragment:
    case s_req_http_start:
    case s_req_http_H:
    case s_req_http_HT:
    case s_req_http_HTT:
    case s_req_http_HTTP:
    case s_req_first_http_major:
    case s_req_http_major:
    case s_req_first_http_minor:
    case s_req_http_minor:
    case s_req_line_almost_done:
    case s_header_field_start:
    case s_header_field:
    case s_header_value_discard_ws:
    case s_header_value_discard_ws_almost_done:
    case s_header_value_discard_lws:
    case s_header_value_start:
    case s_header_value:
    case s_header_value_lws:
    case s_header_almost_done:
    case s_chunk_size_start:
    case s_chunk_size:
    case s_chunk_parameters:
    case s_chunk_size_almost_done:
    case s_headers_almost_done:
    case s_headers_done:
    case s_chunk_data:
    case s_chunk_data_almost_done:
    case s_chunk_data_done:
    case s_body_identity:
    case s_body_identity_eof:
    case s_message_done:
      return 1;
    default:
    return 0;
  }
}
#endif

#if KLEE
int parser_chunked_states(){
  int tmp;
  switch(parser->state) {
    case s_chunk_size_start:
    case s_chunk_size:
    case s_chunk_parameters:
    case s_chunk_size_almost_done:
    case s_chunk_data:
    case s_chunk_data_almost_done:
    case s_chunk_data_done:
      return 1;
    default:
    return 0;
  }
}
#endif

int valid_parser_header_state() {
  switch (parser->header_state) {
            case h_general:
            case h_C:
            case h_CO:
            case h_CON:
            case h_matching_connection:
            case h_matching_proxy_connection:
            case h_matching_content_length:
            case h_matching_transfer_encoding:
            case h_matching_upgrade:
            case h_connection:
            case h_content_length:
            case h_transfer_encoding:
            case h_upgrade:
              return 1;
            default:
              return 0;
  }
}
#if KLEE
int
valid ()
{
  if(!valid_parser_states()){
    return 0;
  }
  if(parser_chunked_states() && !(parser->flags & F_CHUNKED)) { 
    return 0; 
  }
  if((parser->state == s_chunk_size_start) && !(parser->nread == 0)) { 
    return 0; 
  }
  if((parser->state == s_chunk_data_almost_done) && !(parser->content_length == 0)){
    return 0; 
  }
  if((parser->state == s_header_field) && !(valid_parser_header_state())){
   return 0;
  }
  if((parser->state == s_header_value) && (parser->header_state == h_connection || parser->header_state == h_transfer_encoding)) {
    return 0; 
  }
  if((parser->state == s_chunk_data) && ((parser->content_length == 0) || (parser->content_length == ULLONG_MAX))) {
    return 0; 
  }
  if((parser->state == s_body_identity) && ((parser->content_length == 0) || (parser->content_length == ULLONG_MAX))) {
    return 0; 
  }
  if(!(parser->method <= 26  
    && parser->index < (unsigned char) strlen(method_strings[parser->method]))){
    return 0;
  }
  return 1;
}
void
valid_tans ()
{
  if(!valid_parser_states()){
    return klee_assert(0 && "Invalid State.");
  }
  if(parser_chunked_states() && !(parser->flags & F_CHUNKED)) { 
    return klee_assert(0 && "Invalid Chunked Flags"); 
  }
  if((parser->state == s_chunk_size_start) && !(parser->nread == 0)) { 
    return klee_assert(0 && "Invalid Chunk Size."); 
  }
  if((parser->state == s_chunk_data_almost_done) && !(parser->content_length == 0)){
    return klee_assert(0 && "Invalid Chunk Length Finishing."); 
  }
  if((parser->state == s_header_field) && !(valid_parser_header_state())){
   return klee_assert(0 && "Invalid Header Field.");
  }
  if((parser->state == s_header_value) && (parser->header_state == h_connection || parser->header_state == h_transfer_encoding)) {
    return klee_assert(0 && "Invalid Connection or Encoding."); 
  }
  if((parser->state == s_chunk_data) && ((parser->content_length == 0) || (parser->content_length == ULLONG_MAX))) {
    return klee_assert(0 && "Invalid Chunk Lenght Starting."); 
  }
  if((parser->state == s_body_identity) && ((parser->content_length == 0) || (parser->content_length == ULLONG_MAX))) {
    return klee_assert(0 && "Invalid Body Length."); 
  }
  if(!(parser->method <=26 
    && parser->index < (unsigned char) strlen(method_strings[parser->method]))){
    return klee_assert(0 && "Invalid Method or Invalid Method Index.");
  }
}

int
mini_valid() { 
  if (!(mini_parser->state == 0 || mini_parser->state == 1)) { 
    return 0; 
  }
  if(mini_parser->state == 1 && mini_parser->nread == 0) { 
    return 0; 
  }
  return 1; 
}

void
mini_valid_trans() { 
  if (!(mini_parser->state == 0 || mini_parser->state == 1)) { 
    klee_assert(0 && "Invalid state!"); 
  }
  if(mini_parser->state == 1 && mini_parser->nread == 0) { 
    klee_assert(0 && "The mini-test worked!"); 
  }
}
#endif



#if KLEE
void
transition(char *buf, int len){
  int n;
  n = http_parser_execute(parser, &settings_verify, buf, len);
  valid_tans();
}

void 
mini_transition() { 
  mini_parser->state = 1; 
  mini_parser->nread = 0;
  mini_valid_trans();  
}
#endif

void
print_http_parser(http_parser *p){
  printf("\tp->type : %u\n", p->type);
  printf("\tp->flags : %u\n", p->flags);       
  printf("\tp->state : %u\n", p->state);       
  printf("\tp->header_state : %u\n", p->header_state);
  printf("\tp->index : %u\n", p->index);       
  printf("\tp->nread : %u\n", p->nread);       
  printf("\tp->content_length : %llu\n", p->content_length);       
  printf("\tp->http_major : %hu\n", p->http_major);
  printf("\tp->http_minor : %hu\n", p->http_minor);
  printf("\tp->status_code : %u\n", p->status_code); /* responses only */
  printf("\tp->method : %u\n", p->method);       /* requests only */
  printf("\tp->http_errno : %u\n", p->http_errno);
  printf("\tp->upgrade : %u\n", p->upgrade);
  printf("\tp->data : %u\n", p->data); 
  printf("\n=======================\n");
}

int
main (int argc, char **argv)
{
#if KLEE
  parser = NULL;
  if(argc < 3)
    return 0;
  
  if(strlen(argv[1]) != 2)
    return 0; 

  if(strlen(argv[2]) != sizeof(*parser))
    return 0;

  parser_init_base(HTTP_BOTH); 
  klee_assert(valid());
  parser_free();
  
  //parser = malloc(sizeof(http_parser));
  //memcpy(parser, argv[2], sizeof(*parser));
  parser_init_inductive(HTTP_BOTH);
  //parser = (http_parser *)argv[2];

  // Mini parser code
  mini_parser_init(mini_parser); 

  if(mini_valid()) { 
    mini_transition(); 
  }

  if(valid()) {
    transition(argv[1], 1);
  }
  parser_free();
#else 
  //printf("Buffer : %s\n", argv[1]);
  //printf("Parser\n");
  //print_http_parser((http_parser *) argv[2]);
  //parser_init(HTTP_BOTH);

  char *hexstring = argv[2];
  const char*pos = hexstring;
  unsigned char *val = malloc(sizeof(hexstring));
  size_t count = 0;


  for(count = 0; count < sizeof(val)/sizeof(val[0]); count++) {
      sscanf(pos, "%2hhx", &val[count]);
      pos += 2 * sizeof(char);
  }
 
  print_http_parser((http_parser *) val);


  int n = http_parser_execute((http_parser *)val, &settings_verify, argv[1],1);
  printf("Characters Parsed: %d\n", n);
  printf("\n\n");
  // Should be unnessisary but why not flush
  fflush(stdout);
  free(val);
#endif
fprintf(stderr, "\n");

  return 0;
}

