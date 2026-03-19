#include <stdio.h>

int main(void) {
  printf("welcome to the temperature program\n");

  double sum = 0;
  int count = 0;
  while(1) {
    double f;
    printf("Enter a Temperature in Fahrenheit: ");
    scanf("%lf", &f);

    if(f == 0) {
      break;
    }
    
    double c = (f - 32) * 5 / 9;

    printf("%.2lf Fahrenheit in Celsius is %.2lf\n",f,c);
    sum += c;
    count++;
  }

  printf("SUM OF TEMPS: %lf\n", sum);
  printf("COUNT OF TEMPS: %d\n", count);
  printf("AVERAGE TEMP: %lf\n", sum / count);
}
