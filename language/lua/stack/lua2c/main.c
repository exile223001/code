#include "stdio.h"
#include <string>

int main(int argc, char** argv)
{
    int ret;
    std::string ss = "2";
    sscanf(ss.c_str(), "%d", &ret);
    printf("%d\n", ret);
    return 0;
}
