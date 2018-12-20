#include<stdio.h>
#include<string.h>

unsigned char code[] = \
"\xeb\x1e\x5e\x48\x31\xc0\xb0\x01\x48\x89\xc7\x48\x89\xfa\x48\x83\xc2"
"\x22\x0f\x05\x48\x31\xc0\x48\x83\xc0\x3c\x48\x31\xff\x0f\x05\xe8\xdd"
"\xff\xff\xff\x48\x65\x6c\x6c\x6f\x20\x57\x6f\x72\x6c\x64\x20\x74\x6f"
"\x20\x74\x68\x65\x20\x53\x4c\x41\x45\x2d\x36\x34\x20\x43\x6f\x75\x72"
"\x73\x65\x0a";

//
//  int (*ret)() = (int(*)())code;
//  ~~~~~~~~~~~~   ~~~~~~~~~~~~~~
//        1              2
//
//  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//               3
//
// 1) It defines ret as a pointer to a function which has no parameter () and returns int. So, Those () indicates the definition of parameters of a function.
// 2) It's for casting code to a pointer to a function which has no parameter () and returns int.
// 3) Casts code as a function and assigns it to ret. After that you can call ret();.


main()
{

	printf("Shellcode Length:  %d\n", (int)strlen(code));

	int (*ret)() = (int(*)())code;

	ret();

}

	
