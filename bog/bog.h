/* vi: set tabstop=4 : */

/*
 * Configuration
 */

/* #define BSD42			1	/* BSD 4.[23] */
/* #define ATARI			1	/* Atari ST */
#define SYSV				1	/* System V */

/*
 * If you don't have random() and srandom() #define what you have
 */
/* #define random			lrand48	/* Sys V */
/* #define srandom			srand48	/* Sys V */

/* #define random			rand	/* Not good but generally available */
/* #define srandom(x)		srand((int) x)	/* */

#define TIMER			1	/* Use tty polling (see timer.c) */
#define LOADDICT		1	/* Load the dictionary for speed */

#define DICT			"/usr/games/lib/bog/dict"
#define DICTINDEX		"/usr/games/lib/bog/dict.ind"
#define HELPFILE		"/usr/games/lib/bog/helpfile"

/*
 * The theoretical maximum for MAXWORDLEN is ('a' - 1) == 96
 */
#define MAXWORDLEN		40
#define MAXPWORDS		200
#define MAXMWORDS		200
#define MAXPSPACE		2000
#define MAXMSPACE		4000

#define MAXCOLS			20

#define PROMPT_COL		20
#define PROMPT_LINE		2

#define BOARD_COL		0
#define BOARD_LINE		0

#define SCORE_COL		20
#define SCORE_LINE		0

#define LIST_COL		0
#define LIST_LINE		10

#define TIMER_COL		20
#define TIMER_LINE		2

struct dictindex {
    long start;
	long length;
};

