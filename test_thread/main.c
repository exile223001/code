#include "stdio.h"
#include "pthread.h"

void* thread_func(void* p)
{
    int i = 0;
    for (i = 0; i < 10; ++i)
    {
        printf("this is thread, count:%d\n", i);
        sleep(1);
    }
    return NULL;
}
int main(int argc, char** argv)
{
    pthread_t thread_id = 0; 
    int ret = pthread_create(&thread_id, NULL, &thread_func, NULL);
    if (-1 == ret)
    {
        printf("new thread failed\n");
    }
    else
    {
        printf("new thread succeed, id:%d\n", thread_id);
    }
    //pthread_join(thread_id, NULL);
    return 0;
}
