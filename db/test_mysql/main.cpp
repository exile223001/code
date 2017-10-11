#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "mysql.h"

int main(int argc, char** argv)
{
	MYSQL* mysql = mysql_init(NULL);
	bool ret = mysql_real_connect(mysql, "127.0.0.1", "root", "", NULL, 3306, NULL, 0);
	if (ret)
	{
		printf("connect succeed\n");
	}
	else
	{
		int error = mysql_errno(mysql);
		printf("connect failed, %d\n", error);
		
	}

	char sql[128];
	memset(sql, 0, 128);
	sprintf(sql, "insert into test_mysql.test(id, value) values(2, 10);");
	
	ret = mysql_real_query(mysql, sql, 128);	
	if (0 == ret)	
	{
		printf("insert succeed\n");
	}
	else
	{
		int error = mysql_errno(mysql);
		printf("insert failed,[%s] %d\n", sql, error);
	}

	mysql_close(mysql);
	return 0;
}
