#include "test_static.h"
#include "test_static.h"
#include "test_static.h"
#include "test_static.h"
#include "stdio.h"

extern void print_a();

//int b[10][20];

void func(int (*b)[20])
{
    printf("b[10][20]:%d\n", b[10][20]);
}

typedef struct A
{

}A;
int main(int argc, char** argv)
{
    printf("hello world\n");

   // a = 1;
    printf("b:%d\n", b);

//    print_a();

 //   func(b);

    
    printf("sizeof A:%d\n", sizeof(A));
    A a;
    printf("sizeof A:%d\n", sizeof(a));

    return 0;
}
