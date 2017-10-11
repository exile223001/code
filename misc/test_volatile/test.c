#include <stdio.h>

int global = 10;

int main(int argc, char** argv)
{
    int i = 10;
    int a = 20;
    
    printf("i = %d\n", i);
    
    // 下面汇编语句的作用就是改变内存中 i 的值
    // 但是又不让编译器知道

    printf("i:%x\n", &i);
    printf("a:%x\n", &a);
    void* temp = &a;
    *((int*)(temp - 4)) = 30;

    int b = i;
    printf("i = %d\n", b);

    a = global;
    return a;
//    printf("global = %d\n", global);
}
