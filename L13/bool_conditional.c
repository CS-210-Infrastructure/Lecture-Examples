#include <stdio.h>


int main(void) {

  int x = 3;
  printf("x == 3? : %d\n", x == 3);

  int y = 10;
  printf("y < 30? : %d\n", y < 30);
  printf("y >= 30? : %d\n", y >= 30);

  if(1) {
    // this will always run
    printf("one\n");
  }

  if(0) {
    // this will never run!
    printf("two\n");
  }

  if(12345) {
    // any non-zero value is "true"
    printf("three\n");
  }
}
