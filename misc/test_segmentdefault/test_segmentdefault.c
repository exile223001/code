#include "stdio.h"
#include "malloc.h"
#include "string.h"

void func()
{
    int* a = (int*)malloc(sizeof(int));
    *a = 1;
    printf("a:[0x%x:%d], a+1:[0x%x:%d]\n", a, *a, a + 1, *(a+1));

    memcpy(a+1, a, sizeof(int));
    printf("a:[0x%x:%d], a+1:[0x%x:%d]\n", a, *a, a + 1, *(a+1));

    //unsigned int n = 135164;
    unsigned int n = 100000;
    //
    //unsigned int n = 100;
    //unsigned int n = 10000;
    int i = 0;
    for (i = 0; i < n; ++i)
    { 
        printf("a+%d:[0x%x:%d]\n", i, a + i, *(a+i));
    }
}

int main(int argc, char** argv)
{
    func();

    return 0;
}
