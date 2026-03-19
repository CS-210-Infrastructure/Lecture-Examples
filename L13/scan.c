#include <stdio.h>

int main(void) {
    double f;

    printf("Enter a temperature in F: ");
    scanf("%lf", &f);

    double c = (f - 32) * 5 / 9;

    printf("Converted: %lf\n", c);

    return 0;
}
