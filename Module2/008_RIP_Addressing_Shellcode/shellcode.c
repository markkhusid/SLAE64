#include<stdio.h>
#include<string.h>

unsigned char code[] = \
"\xeb\x0d\x48\x65\x6c\x6c\x6f\x20\x53\x4c\x41\x45\x36\x34\x0a\x48\x31\xc0\x48\x83\xc0\x01\x48\x89\xc7\x48\x8d\x35\xe2\xff\xff\xff\x48\x31\xd2\x48\x83\xc2\x0e\x0f\x05\x48\x31\xc0\x48\x83\xc0\x3c\x48\x31\xff\x0f\x05";

main()
{

	printf("Shellcode Length:  %d\n", (int)strlen(code));

	int (*ret)() = (int(*)())code;

	ret();

}

	
