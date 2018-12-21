

#include <stdio.h>

void proc()
{
	char buffer[1024];
	printf("hello world!");
}

int main(int argc, char **argv)
{
	char buffer[1024];
	
	proc();
	
	return 0;
}

