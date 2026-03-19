#include <stdio.h>

double convert_to_c(double f) {
  return (f - 32) * 5 / 9;
}

int main(void) {
  printf("welcome to the temperature program\n");

  double sum;
  int count;
  while(1) {
    double f;
    printf("Enter a Temperature in Fahrenheit: ");
    int err = scanf("%lf", &f);
    if(err) {
      return 1;
    }

    if(f == 0) {
      break;
    }
    
    double c = convert_to_c(f);

    printf("%.2lf Fahrenheit in Celsius is %.2lf\n",f,c);
    sum += c;
    count++;
  }

  printf("SUM OF TEMPS: %lf\n", sum);
  printf("COUNT OF TEMPS: %d\n", count);
  printf("AVERAGE TEMP: %lf\n", sum / count);
}
