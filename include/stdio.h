/* stdio.h - bsd-games wrapper for <stdio.h> */

#ifndef LINUX_BSD_GAMES_STDIO_H
#define LINUX_BSD_GAMES_STDIO_H	1

#include_next <stdio.h>

char *fgetln(FILE *stream, size_t *len);

#endif /* !defined(LINUX_BSD_GAMES_STDIO_H) */
