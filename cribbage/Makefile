#	@(#)Makefile	5.5 (Berkeley) 5/11/90

PROG=	cribbage
DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SCORE=	criblog
INSTR=	cribbage.instr
_PATH_LOG=	\"$(LIBDIR)/$(SCORE)\"
_PATH_INSTR=	\"$(LIBDIR)/$(INSTR)\"
_PATH_MORE=	\"/usr/bin/less\"

SRCS=	extern.c crib.c cards.c instr.c io.c score.c support.c
OBJS=	extern.o crib.o cards.o instr.o io.o score.o support.o
LIBS=	-lncurses -ltermcap -lbsd

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	cribbage.h cribcur.h deck.h pathnames.h
	$(CC) $(CFLAGS) -c -D_PATH_LOG=$(_PATH_LOG) \
		-D_PATH_INSTR=$(_PATH_INSTR) -D_PATH_MORE=$(_PATH_MORE) \
		$*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 755 $(PROG).n $(LIBDIR)/$(INSTR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)
	touch $(LIBDIR)/$(SCORE)
	chown bin $(LIBDIR)/$(SCORE)
	chmod 666 $(LIBDIR)/$(SCORE)

clean:
	rm -f $(PROG) core *.o
