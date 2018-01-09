#include <stdio.h>
#include <math.h>

void func()
{
    int a = 0x12345678;
    printf("a:%d\n", a);
    printf("a:%x, %x, %x, %x\n", *(char*)&a, *((char*)&a + 1), *((char*)&a + 2), *((char*)&a + 3));

}

int main(int argc, char** argv)
{
//    double a = 200000000000;
//    float b = (float)a;
//    float c = 200000000000;
//    printf("a:%lf\n", a);
//    printf("b:%f\n", b);
//    printf("c:%f\n", c);
//    float a = 2*pow(10, 10);
//    double b = 2*pow(10, 10);
//    float c = (float)b;
//    printf("a:%f\n", a);
//    printf("b:%lf\n", b);
//    printf("c:%f\n", c);
//
    func();

    return 0;
}
