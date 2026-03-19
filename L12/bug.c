#include <stdio.h>

int main(void) {
  short int number = 2;

  for(int i = 0; i < 16; i++) {
    number = 2 * number;
  }

  if(number > 1000) {
    printf("2^16 > 1000\n");
  } else {
    printf("2^16 <= 1000\n");
  }
}
