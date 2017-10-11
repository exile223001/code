#include "stdio.h"
#include "dlfcn.h"

typedef int (*FUNC)(int a, int b);

int main(int argc, char** argv)
{
    void* handle = NULL;

    handle = dlopen("./lib/libcmodule.so", RTLD_LAZY);
    if (NULL == handle)
    {
        printf("load module failed\n");
        return -1;
    }
    FUNC func = NULL;
    func = (FUNC)dlsym(handle, "GetMax");
    if (dlerror() != NULL)
    {
        printf("fun load error\n");
        return -1;
    }

    printf("%d\n", func(1, 2));

    dlclose(handle);

    return 0;
}

