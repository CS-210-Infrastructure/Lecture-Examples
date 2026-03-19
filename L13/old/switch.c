#include <stdio.h>

int main(void) {

  int c = -78;

  switch(c) {
        case 0:
            c += 15;
	    printf("That's the freezing point for water!\n");
            break;
        case -78:
            c = -39;
	    printf("That's the freezing point for Carbon Dioxide.\n");
            break;
        case -39:
	    printf("That's the freezing point for Mercury.\n");
            break;
        default:
            printf("Idk anything about that temp...\n");
    }

  return 0;
}
