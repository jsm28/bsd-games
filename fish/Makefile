#	@(#)Makefile	5.5 (Berkeley) 1/18/91

PROG=	fish
MAN6=	fish.6
DESTDIR=/usr/games
LIBDIR= /usr/games/lib
MANDIR=	/usr/man/man6
CFLAGS=	-O

$(PROG):
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	install -c -o bin -g root -m 444 fish.instr $(LIBDIR)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

clean:
	rm -f $(PROG) core *.o
