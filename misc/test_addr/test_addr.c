
int add(int a, int b)
{
    return a + b;
} 

int sub(int a, int b)
{
    return b - a;
}

int main(int argc, char** argv)
{
    int a = 1;
    int b = 2;
    int c = add(a, b);
    int d = sub(b, a);
    return c;
}
