#	@(#)Makefile	5.2 (Berkeley) 5/11/90

DESTDIR=/usr/games
MANDIR=	/usr/man/man6
PROG=	arithmetic
CC=	gcc
CFLAGS= -O

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o
