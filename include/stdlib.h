/* stdlib.h - bsd-games wrapper for <stdlib.h> */

#ifndef LINUX_BSD_GAMES_STDLIB_H
#define LINUX_BSD_GAMES_STDLIB_H	1

#include_next <stdlib.h>

int getloadavg(double loadavg[], int nelem);

#endif /* !defined(LINUX_BSD_GAMES_STDLIB_H) */
