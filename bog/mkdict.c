/* vi: set tabstop=4 : */

/*
 * Filter out words that:
 *	1) Are not completely made up of lower case letters
 *	2) Contain a 'q' not immediately followed by a 'u'
 *	3) Are less that 3 characters long
 *	4) Are greater than MAXWORDLEN characters long
 */

#include <ctype.h>
#include <stdio.h>

#include "bog.h"

main(argc, argv)
int argc;
char **argv;
{
	register char *p, *q, *r;
	register int ch, common, i, n;
	int current, len, prev, qcount;
	char buf[2][MAXWORDLEN + 1];

	prev = 0;
	current = 1;
	buf[prev][0] = '\0';
	if (argc == 2)
		n = atoi(argv[1]);
	i = 1;
	while (gets(buf[current]) != (char *) NULL) {
		if (argc == 2 && i++ % n)
			continue;
		len = 0;
		for (p = buf[current]; *p != '\0'; p++) {
			if (!islower(*p))
				break;
			if (*p == 'q') {
				q = p + 1;
				if (*q != 'u')
					break;
				else {
					while (*q = *(q + 1))
						q++;
				}
				len++;
			}
			len++;
		}
		if (*p != '\0' || len < 3 || len > MAXWORDLEN)
			continue;

		p = buf[current];
		q = buf[prev];
		qcount = 0;
		while ((ch = *p++) == *q++ && ch != '\0')
			if (ch == 'q')
				qcount++;
		common = p - buf[current] - 1;
		printf("%c%s", common + qcount, p - 1);
		prev = !prev;
		current = !current;
	}
}

