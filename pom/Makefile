#	@(#)Makefile	5.1 (Berkeley) 5/11/90

PROG=	pom

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

INCL=	-I/usr/include/bsd
LIBS=	-lm -lbsd

$(PROG):
	$(CC) $(CFLAGS) $(INCL) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

test:	$(PROG)
	./pom

clean:
	rm -f $(PROG) core *.o
