
#include <stdio.h>

int main()
 {
int nota;
    printf("Inserte una nota:"); scanf("%d",&nota);
    
switch(nota) {
    case 0: case 1: case 2: case 3: case 4:   case 5: case 6: printf("\nReprobado :("); break;
    case 7: printf("\nAprobado"); break;
    case 8: printf("\nBien"); break;
    case 9: printf("\nNotable"); break;
    case 10: printf("\nSobresaliente"); break;
    default: printf("esa nota es incorrecta");
} 

return 0;
}

