#	@(#)Makefile	5.10 (Berkeley) 5/11/90

PROG=	robots

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc

override CFLAGS= -O -DFANCY -DMAX_PER_UID=5

SRCS=	extern.c init_field.c main.c make_level.c move.c move_robs.c \
	play_level.c query.c rnd_pos.c score.c flush_in.c
OBJS=	extern.o init_field.o main.o make_level.o move.o move_robs.o \
	play_level.o query.o rnd_pos.o score.o flush_in.o

INCS=	-I/usr/include/bsd
LIBS=	-lcurses -ltermcap -lbsd
SCOREDIR=	$(LIBDIR)/robots_roll
_PATH_SCORE=	\"$(SCOREDIR)\"

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):
	$(CC) -c $(CFLAGS) -D_PATH_SCORE=$(_PATH_SCORE) $(INCS) $*.c -o $@

install:	$(PROG)
	touch $(SCOREDIR)
	chmod 666 $(SCOREDIR)
	chown bin $(SCOREDIR)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o
