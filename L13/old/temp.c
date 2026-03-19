#include <stdio.h>
#include <stdlib.h>
#define LENGTH 1000000

double convert(double f) {
  return (f - 32)* 5/9;
}


int main(void) {
  double temps[LENGTH];
  
  for(int i = 0; i < LENGTH; i++) {
    temps[i] = ((double) rand()) / RAND_MAX  * 150 - 50;
  }

  for(int i = 0; i < LENGTH; i++) {
    temps[i] = convert(temps[i]);
  }

  printf("[");
  for(int i = 0; i < LENGTH; i++) {
    printf("%f,",temps[i]);
  }
  printf("]\n");

  return 0;
}
