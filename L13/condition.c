#include <stdio.h>

int main(void) {

  int i = 10;

  if (i < 20) i++;
  if (i > 0)
    printf("i is positive\n");
  else
    printf("i is negative\n");

  if (i > 10) {
    printf("wow! i is bigger than 10!\n");
  } else {
    printf("tiny.\n");
  }

  int k = 3;

  if( k % 3 == 0) {
    printf("k is a mult of 3\n");
  } else if (k > 0) {
    printf("k is positive!\n");
  } else {
    printf("something is up with k...\n");
  }
}
