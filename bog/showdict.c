/* vi: set tabstop=4 : */

#include <stdio.h>

#include "bog.h"

/*BOGUS*/
struct dictindex dictindex[1];
int wordlen;

main(argc, argv)
int argc;
char **argv;
{
	char *p;
	char *nextword();

	while ((p = nextword(stdin)) != (char *) NULL)
		printf("%s\n", p);
}

