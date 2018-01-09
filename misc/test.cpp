#include "stdio.h"
#include "string.h"

struct A
{

};
int main(int argc, char** argv)
{
    A a;
    printf("sizeof A:%d\n", sizeof(A));
    printf("sizeof a:%d\n", sizeof(a));
    return 0;
}
