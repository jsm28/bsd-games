
#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	worm
CFLAGS=	-O
MAN6=	worm.6
DESTDIR=/usr/games
MANDIR= /usr/man/man6
LIBS=	-lcurses -ltermcap -lbsd

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

clean:
	rm -f $(PROG) core *.o
