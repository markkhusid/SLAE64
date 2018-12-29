#include<stdio.h>
#include<string.h>

unsigned char code[] = \
"\x48\x31\xc0\xb0\x3c\x48\x31\xff\x0f\x05";
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

	
