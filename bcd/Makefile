#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	bcd

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

test:	$(PROG)
	date | ./bcd

clean:
	rm -f $(PROG) core *.o
