
#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	worm

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

LIBS=	-lcurses -ltermcap -lbsd

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o
