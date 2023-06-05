#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

int main()
{
    uint8_t *ptr = (uint8_t *)malloc(sizeof(uint8_t));
    *ptr = 10;
    printf("%d\n", *ptr);
    free(ptr);
}


