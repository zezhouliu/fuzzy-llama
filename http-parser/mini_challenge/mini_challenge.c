#include <stdio.h> 
#include <stdlib.h> 
#include <assert.h>
#include <string.h>
#include <klee/klee.h>

#define IS_DIGIT(d) ((d >= 48) && (d <= 57))

/* State definitions */
enum state { 
s_start = 1, 
s_digit_one, 
s_digit_two, 
s_digit_three, 
s_digit_four, 
s_digit_five, 
s_digit_six, 
s_digit_seven, 
s_digit_eight, 
s_digit_nine, 
s_digit_done, 
s_fail
}; 

/* Parser struct */
typedef struct phone_parser { 
int s_prev; 
int s_cur; 
} phone_parser; 


/* Function prototypes */
int parse_phone_number(const char *buf, size_t buflen); 
static enum state parse_phone_char(enum state s, const char ch); 
int valid();
void phone_parser_init();

// Globals 
phone_parser *parser; 


int
parse_phone_number(const char *buf, size_t buflen)
{
  enum state s = s_start; 
  const char *p;

  for (p = buf; p < buf + buflen; p++) {
    s = parse_phone_char(s, *p);

    if (s == s_fail) { 
      return 1; 
    }
  }

  if(!(s == s_digit_done)) { 
    return 1; 
  }

  return 0; 
}
    
static enum state
parse_phone_char(enum state s, const char ch)
{
  switch (s) { 
    case s_start: 
      if(IS_DIGIT((int) ch)) { 
        return s_digit_one;
      }
      break;
    case s_digit_one: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_two;
      }
      break;
    case s_digit_two: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_three;
      }
      break;
    case s_digit_three: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_four;
      }
      break;
    case s_digit_four: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_five;
      }
      break;
    case s_digit_five: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_six;
      }
      break;
    case s_digit_six: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_seven;
      }
      break;
    case s_digit_seven: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_eight;
      }
      break;
    case s_digit_eight: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_nine;
      }
      break;
    case s_digit_nine: 
      if(IS_DIGIT((int) ch))  { 
        return s_digit_done;
      }
      break;
    default:
      break;
  }

  return s_fail;
}


int valid() { 
   if ((parser->s_prev < 1 || parser->s_prev > 12) || (parser->s_cur < 1 || parser->s_cur > 12)) {
    return 0;
   }
   return 1;  
}

int
transition(char *buf, int len){
  int s;
  s = parse_phone_char(parser->s_cur, *buf); 
  parser->s_prev = parser->s_cur; 
  parser->s_cur = s;
  return valid();
}

void phone_parser_init() { 
  parser = (phone_parser *) malloc(sizeof(phone_parser));
  klee_make_symbolic(parser, sizeof(phone_parser), "parser");
}

/* Solution */
int main(int argc, char **argv) { 

  phone_parser_init(); 

  if(valid()){
  if(!transition(argv[1], 1)){
        printf("%s", argv[1]);
    klee_assert(0); 
  } 
  }
}
