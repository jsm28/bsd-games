#	@(#)Makefile	5.5 (Berkeley) 5/11/90

PROG=	cribbage
DESTDIR=/usr/games
LIBDIR=	/usr/games/lib
SCORE=	criblog
INSTR=	cribbage.instr
MANDIR= /usr/man/man6
SRCS=	extern.c crib.c cards.c instr.c io.c score.c support.c
OBJS=	extern.o crib.o cards.o instr.o io.o score.o support.o
CFLAGS=	-O
MAN6=	cribbage.6
LIBS=	-lncurses -ltermcap -lbsd

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	cribbage.h cribcur.h deck.h pathnames.h
	$(CC) $(CFLAGS) -c $*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 755 $(PROG).n $(LIBDIR)/$(INSTR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)
	touch $(LIBDIR)/$(SCORE)
	chown bin $(LIBDIR)/$(SCORE)
	chmod 666 $(LIBDIR)/$(SCORE)

clean:
	rm -f $(PROG) core *.o
