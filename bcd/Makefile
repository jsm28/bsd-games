#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	bcd
MAN6=	bcd.6
DESTDIR=/usr/games
MANDIR= /usr/man/man6
CFLAGS=	-O

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

test:	$(PROG)
	date | ./bcd

clean:
	rm -f $(PROG) core *.o
