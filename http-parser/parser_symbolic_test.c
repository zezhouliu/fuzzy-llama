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
parser_init (enum http_parser_type type)
{
  num_messages = 0;

  assert(parser == NULL);

  parser = malloc(sizeof(http_parser));

#if KLEE
  http_parser_init_symbolic(parser, type);
#else
  http_parser_init(parser, type);
#endif

  memset(&messages, 0, sizeof messages);
}

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
void
test_symbolic_parser (const char *buf, enum http_errno err_expected)
{

  parser_init(HTTP_BOTH);

  enum http_errno err;

  parse_incrementally(buf, strlen(buf));

  err = HTTP_PARSER_ERRNO(parser);
  parse(NULL, 0);

  parser_free();

  if(err == HPE_UNKNOWN){
	klee_assert(0);
  }

}

#if KLEE
void parser_possible_state(){
	klee_assume(parser->state == s_dead);
	klee_assume(parser->state == s_start_req_or_res);
	klee_assume(parser->state == s_res_or_resp_H);
	klee_assume(parser->state == s_start_res);
	klee_assume(parser->state == s_res_H);
	klee_assume(parser->state == s_res_HT);
	klee_assume(parser->state == s_res_HTT);
	klee_assume(parser->state == s_res_HTTP);
	klee_assume(parser->state == s_res_first_http_major);
	klee_assume(parser->state == s_res_http_major);
	klee_assume(parser->state == s_res_first_http_minor);
	klee_assume(parser->state == s_res_http_minor);
	klee_assume(parser->state == s_res_first_status_code);
	klee_assume(parser->state == s_res_status_code);
	klee_assume(parser->state == s_res_status_start);
	klee_assume(parser->state == s_res_status);
	klee_assume(parser->state == s_res_line_almost_done);
	klee_assume(parser->state == s_start_req);
	klee_assume(parser->state == s_req_method);
	klee_assume(parser->state == s_req_spaces_before_url);
	klee_assume(parser->state == s_req_schema);
	klee_assume(parser->state == s_req_schema_slash);
	klee_assume(parser->state == s_req_schema_slash_slash);
	klee_assume(parser->state == s_req_server_start);
	klee_assume(parser->state == s_req_server);
	klee_assume(parser->state == s_req_server_with_at);
	klee_assume(parser->state == s_req_path);
	klee_assume(parser->state == s_req_query_string_start);
	klee_assume(parser->state == s_req_query_string);
	klee_assume(parser->state == s_req_fragment_start);
	klee_assume(parser->state == s_req_fragment);
	klee_assume(parser->state == s_req_http_start);
	klee_assume(parser->state == s_req_http_H);
	klee_assume(parser->state == s_req_http_HT);
	klee_assume(parser->state == s_req_http_HTT);
	klee_assume(parser->state == s_req_http_HTTP);
	klee_assume(parser->state == s_req_first_http_major);
	klee_assume(parser->state == s_req_http_major);
	klee_assume(parser->state == s_req_first_http_minor);
	klee_assume(parser->state == s_req_http_minor);
	klee_assume(parser->state == s_req_line_almost_done);
	klee_assume(parser->state == s_header_field_start);
	klee_assume(parser->state == s_header_field);
	klee_assume(parser->state == s_header_value_discard_ws);
	klee_assume(parser->state == s_header_value_discard_ws_almost_done);
	klee_assume(parser->state == s_header_value_discard_lws);
	klee_assume(parser->state == s_header_value_start);
	klee_assume(parser->state == s_header_value);
	klee_assume(parser->state == s_header_value_lws);
	klee_assume(parser->state == s_header_almost_done);
	klee_assume(parser->state == s_chunk_size_start);
	klee_assume(parser->state == s_chunk_size);
	klee_assume(parser->state == s_chunk_parameters);
	klee_assume(parser->state == s_chunk_size_almost_done);
	klee_assume(parser->state == s_headers_almost_done);
	klee_assume(parser->state == s_headers_done);
	klee_assume(parser->state == s_chunk_data);
	klee_assume(parser->state == s_chunk_data_almost_done);
	klee_assume(parser->state == s_chunk_data_done);
	klee_assume(parser->state == s_body_identity);
	klee_assume(parser->state == s_body_identity_eof);
	klee_assume(parser->state == s_message_done);
}
#endif


int parser_chunked_states(){
	int tmp;
	enum state p_state = (enum state) parser->state;
	if(p_state == s_chunk_size_start){
		tmp = 0;
	} else if (p_state == s_chunk_size){
		tmp = 1;
	} else if(p_state == s_chunk_parameters){
		tmp = 2;
	} else if(p_state == s_chunk_size_almost_done){
		tmp = 3;
	}else if(p_state == s_chunk_data){
		tmp = 4;
	}else if(p_state == s_chunk_data_almost_done){
		tmp = 5;
	}else if(p_state == s_chunk_data_done){
		tmp = 6;
	}
	klee_assume(tmp);
}

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
              break;
            default:
              return 0;
              break;
  }
}

int
valid ()
{
  if(parser_chunked_states() && !(parser->flags & F_CHUNKED)) { 
    return 0; 
  }
  if((parser->state == s_chunk_size_start) && !(parser->nread == 1)) { 
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
  if((parser->state == s_chunk_data_almost_done) && !(parser->content_length == 0)) {
    return 0; 
  }
  if((parser->state == s_body_identity) && ((parser->content_length == 0) || (parser->content_length == ULLONG_MAX))) {
    return 0; 
  }
  return 1;
}


int
transition(char *buf, int len){
	int n;
#if KLEE == 0
  printf("%s", buf);
#endif
	n = http_parser_execute(parser, &settings_verify, buf, len);
	return valid();
}

int
main (int argc, char **argv)
{
#if KLEE
  parser = NULL;
  if(argc < 3)
    return 0;
  
  // parser_init(HTTP_BOTH);
  if(strlen(argv[2]) != sizeof(*parser))
    return 0;
  
  
  parser = malloc(sizeof(http_parser));
  memcpy(parser, argv[2], sizeof(*parser));

  parser_possible_state();
  
  if(valid()){
	if(!transition(argv[1], 1)){
        printf("%s", argv[1]);
		klee_assert(0);	
	} 
  }
  return 0;
#else 
  int i;
  for(i = 0; i < argc; i++){
    printf("%s",argv[i]);
  }
#endif
}
