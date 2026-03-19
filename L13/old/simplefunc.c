#include <stdio.h>

__attribute__ ((noinline))

int func1(int i, int j, int k) {
  int a = i + k + j;
  
  return a + k;
}

int main(void) {
  int x = 3;
  int y = 4;

  int j = func1(x,y, 20);

  printf("%d %d %d\n", x,y,j);
}
