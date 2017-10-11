
typedef struct
{
    int a;
    char b;
    float c;
}A;

A func(int a, char b, float c)
{
    A r;
    r.a = a;
    r.b = b;
    r.c = c;
    return r;
}

int main(int argc, char** argv)
{
    A r;
    r.a = 0;
    r.b = 0;
    r.c = 0;

    r = func(1, 'a', 1);

    return r.a;
}
