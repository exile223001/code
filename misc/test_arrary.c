#include "stdio.h"
#include "string.h"
#include "stdlib.h"

int main(int argc, char** argv)
{
    int a[10][20] = { 0 };
    int i = 0;
    for (; i < 10; ++i)
    {
        printf("%d:%x\n", i, &a[i][0]);
    }

    int** b = (int**)malloc(sizeof(int**)*10);
    for (i = 0; i < 10; ++i)
    {
        *(b + i) = (int*)malloc(sizeof(int*)*20);
        printf("%d:%x\n", i, *(b + i));
    }
}

