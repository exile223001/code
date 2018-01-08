#include "stdio.h"

typedef struct A
{
    int _a;
}A;

int func(int v, A a)
{
    printf("%x\n", &v); 
    printf("%x\n", &a); 
    return v + a._a;
}

int func_raw(int v, int w)
{
    printf("%x\n", &v); 
    printf("%x\n", &w); 
    return v + w;
}

int func_a(int** a)
{
    printf("&a:0x%x\n", a);
    return 0;
}

int func_a1(int *a[20])
{
    printf("&a:0x%x\n", a);
    return 0;
}

int func_a2(int (*a)[20])
{
    printf("&a:0x%x\n", a);
    return 0;
}

int func_a3(int (*a)(int))
{
    printf("&a:0x%x\n", a);
    return 0;
}

int main(int argc, char** argv)
{
    //struct A temp;
    //temp._a = 2;
    //int c = 3;
    //int a = 1;

    //func(a, temp);

    //int b = 3;
    //func_raw(a, b);

    int a[10][20];
    func_a(a);
    func_a1(a);
    func_a2(a);
    func_a3(a);

    printf("&a:%x, &a[0][0]:%x, a:%x", &a, &a[0][0], a);

    return 0;
}
