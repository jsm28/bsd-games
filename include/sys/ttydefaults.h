/* ttydefaults.h - bsd-games wrapper for <sys/ttydefaults.h> */

#ifndef LINUX_BSD_GAMES_SYS_TTYDEFAULTS_H
#define LINUX_BSD_GAMES_SYS_TTYDEFAULTS_H	1

#include <features.h>

#ifdef __GLIBC__
#include_next <sys/ttydefaults.h>
#endif

#ifndef CTRL
#define CTRL(x)	((x) & 037)
#endif

#endif /* !defined(LINUX_BSD_GAMES_SYS_TTYDEFAULTS_H) */
