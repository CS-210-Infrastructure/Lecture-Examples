#include <stdio.h>
//#include <stdbool.h>

int main() {
    printf("Size of _Bool: %zu bytes\n", sizeof(_Bool));
    printf("Size of bool: %zu bytes\n", sizeof(bool));
    return 0;
}
