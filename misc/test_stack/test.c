#include "stdio.h"
#include "string.h"

void hacker(void)
{
    printf("beging hacked\n");
}

void outputs(char* str)
{
    char buffer[16];
    strcpy(buffer, str);
    printf("%s\n", buffer);
}

int main(int argc, char** argv)
{
    outputs(argv[1]);
    return 0;
}

