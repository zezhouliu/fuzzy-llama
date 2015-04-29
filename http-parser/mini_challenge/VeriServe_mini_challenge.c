#include <stdio.h> 
#include <assert.h>
#include <string.h>

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

/* Function prototypes */
int parse_phone_number(const char *buf, size_t buflen); 
static enum state parse_phone_char(enum state s, const char ch); 


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

int main(int argc, char *argv[]) { 

  int err = parse_phone_number(argv[1], strlen(argv[1])); 
  if (err) { 
    printf("Your phone number is invalid. \n"); 
  }
  else { 
    printf("Your phone number is valid. \n");
  }
  
  return 0; 
}
 