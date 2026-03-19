#include <stdio.h>

int main(void) {
  printf("welcome to the temperature program\n");

  int f1 = 16;
  int c1 = (f1 - 32) * 5 / 9;

  printf("f1 %d c1 %d\n", f1,c1);

  int f2 = 16;
  double c2 = (f2 - 32) * 5 / 9;

  printf("f2 %d c2 %lf\n", f2,c2);

  int f3 = 16;
  double c3 = (f3 - 32.0) * 5 / 9;

  printf("f3 %d c3 %lf\n", f3,c3);

  double f4 = 16.0;
  double c4 = (f4- 32) * 5 / 9;
  
  printf("f4 %lf c4 %lf\n", f4,c4);  
}
