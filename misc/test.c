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


int main(int argc, char** argv)
{
    struct A temp;
    temp._a = 2;
    int c = 3;
    int a = 1;

//    func(a, temp);

    int b = 3;
    func_raw(a, b);

    return 0;
}
