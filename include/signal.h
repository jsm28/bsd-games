/* signal.h - bsd-games wrapper for <signal.h> */

#ifndef LINUX_BSD_GAMES_SIGNAL_H
#define LINUX_BSD_GAMES_SIGNAL_H	1

#include_next <signal.h>

#ifndef __GLIBC__ /* glibc 2 has this; with libc 5 we want to avoid
		   * <bsd/signal.h>.  */
typedef __sighandler_t sig_t;
#endif

#endif /* !defined(LINUX_BSD_GAMES_SIGNAL_H) */
