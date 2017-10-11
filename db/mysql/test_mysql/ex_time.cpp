#include <stddef.h>
#include <sys/time.h>

void GetTodaySec(int& sec, int& usec)
{
	timeval time;
	gettimeofday(&time, NULL);
	sec = time.tv_sec;
	usec = time.tv_usec;
	return;
}
