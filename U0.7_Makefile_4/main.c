#include <stdio.h>
#include <stdint.h>
// #include "func.h"

struct TEST_1_t
{
    uint64_t b;
    uint16_t a;
    uint8_t c;
};

struct TEST_2_t
{
    uint64_t b;
    uint16_t a;
    uint8_t c;
}__attribute__((packed));

// #define SQRT(x) ((x)*(x))   
#define SQRT(x)    printf("%d\n%d\n", x, x);

int main()
{
    int a = 3;
    // SQRT(a++)
    printf("%d\n%d\n%d\n%d\n%d\n", a++, a++,a++, a++, a++);
    // a=a+1;
    // SQRT(++a)
    // a=a+1;
    // printf("%d\n%d\n", ++a,++a);
    
    printf("%d\n", a);
    // int a2 = SQRT(++a);

    // printf("%d\n%d\n", a, a2);

}