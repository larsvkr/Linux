#include <stdio.h>
#include <stdlib.h>
#include <string.h> 
#include <math.h>

int main(){
    char s1[20] = "53875";
    char s2[10] = "Hello";
    char s3[10] = "World";

    int res;
    res = pow(8, 4);
    printf("Using math.h the value is : %d\n", res);

    long int a = atol(s1);
    printf("Using stdlib.h, the string to long int: %d\n", a);

    strcpy(s2, s3);
    printf("Using string.h, the strings s2 and s3: %s\t%s\n", s2, s3);
    
    return 0;
}