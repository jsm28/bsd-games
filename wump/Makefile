#	@(#)Makefile	5.7 (Berkeley) 5/11/90

PROG=	wump
CFLAGS=	-O
DESTDIR=/usr/games
MANDIR= /usr/man/man6
INFO=	wump.info
INFODIR=/usr/games/lib
MAN6=	wump.6
LIBS=	-lcurses -ltermcap -lbsd

all:	$(PROG)

$(PROG):	pathnames.h
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c $(LIBS)

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 444 $(INFO) $(INFODIR)/$(INFO)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

clean:
	rm -f $(PROG) core *.o
