#	@(#)Makefile	5.1 (Berkeley) 5/11/90

PROG=	pom
DESTDIR=/usr/games
INCL=	-I/usr/include/bsd
MAN6=	pom.6
MANDIR=	/usr/man/man6
LIBS=	-lm -lbsd

CFLAGS= -O

$(PROG):
	$(CC) $(CFLAGS) $(INCL) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

test:	$(PROG)
	./pom

clean:
	rm -f $(PROG) core *.o
