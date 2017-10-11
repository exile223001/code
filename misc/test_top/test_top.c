#include "stdio.h"
#include "stdlib.h"

int main(int argc, char** argv)
{
    int n = 10000000;
    struct timeval tv;
    long long begin = 0;
    long long end = 0;
    while (1)
    {
        // user time
        //int i = 0;
        //for (; i < n; ++i)
        //{
        //    // do noting
        //}
        gettimeofday(&tv, NULL);
        begin = tv.tv_sec*1000000 + tv.tv_usec;
        while (1)
        {
            gettimeofday(&tv, NULL);
            end = tv.tv_sec*1000000 + tv.tv_usec;
            if (end - begin > 30000)
            {
                break;
            }
        }

        // wait time
        usleep(30000);
    }

    return 0;
}
