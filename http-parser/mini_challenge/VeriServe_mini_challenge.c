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
void parser_possible_state(); 

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

// int main(int argc, char *argv[]) { 

//   int err = parse_phone_number(argv[1], strlen(argv[1])); 
//   if (err) { 
//     printf("Your phone number is invalid. \n"); 
//   }
//   else { 
//     printf("Your phone number is valid. \n");
//   }
  
//   return 0; 
// }


int valid() { 
  // if ((parser->s_prev == s_start) && !(parser->s_cur == s_digit_one || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_one) && !(parser->s_cur == s_digit_two || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_two) && !(parser->s_cur == s_digit_three || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_three) && !(parser->s_cur == s_digit_four || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_four) && !(parser->s_cur == s_digit_five || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_five) && !(parser->s_cur == s_digit_six || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_six) && !(parser->s_cur == s_digit_seven || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_seven) && !(parser->s_cur == s_digit_eight || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_eight) && !(parser->s_cur == s_digit_nine || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // if ((parser->s_prev == s_digit_nine) && !(parser->s_cur == s_digit_done || parser->s_cur == s_fail)) { 
  //   return 0; 
  // }
  // return 1; 
  return 0; 
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

//void parser_possible_state() { 
//
//klee_assume(parser->s_prev == s_start);
//klee_assume(parser->s_prev == s_digit_one);
//klee_assume(parser->s_prev == s_digit_two);
//klee_assume(parser->s_prev == s_digit_three); 
//klee_assume(parser->s_prev == s_digit_four); 
//klee_assume(parser->s_prev == s_digit_five); 
//klee_assume(parser->s_prev == s_digit_six);
//klee_assume(parser->s_prev == s_digit_seven);
//klee_assume(parser->s_prev == s_digit_eight);
//klee_assume(parser->s_prev == s_digit_nine);
//klee_assume(parser->s_prev == s_digit_done);
//klee_assume(parser->s_prev == s_fail);
//
//klee_assume(parser->s_cur == s_start);
//klee_assume(parser->s_cur == s_digit_one);
//klee_assume(parser->s_cur == s_digit_two);
//klee_assume(parser->s_cur == s_digit_three); 
//klee_assume(parser->s_cur == s_digit_four); 
//klee_assume(parser->s_cur == s_digit_five); 
//klee_assume(parser->s_cur == s_digit_six);
//klee_assume(parser->s_cur == s_digit_seven);
//klee_assume(parser->s_cur == s_digit_eight);
//klee_assume(parser->s_cur == s_digit_nine);
//klee_assume(parser->s_cur == s_digit_done);
//klee_assume(parser->s_cur == s_fail);
//}

/* Solution */
int main(int argc, char **argv) { 

  phone_parser_init(); 
//  parser_possible_state();

  if(valid()){
  if(!transition(argv[1], 1)){
        printf("%s", argv[1]);
    klee_assert(0); 
  } 
  }
}


 
