#	@(#)Makefile	5.3 (Berkeley) 5/11/90

PROG=	factor
MAN6=	factor.6
DESTDIR=/usr/games
MANDIR= /usr/man/man6
CFLAGS= -O
INCS=	-I../primes

$(PROG):	../primes/pr_tbl.o
	$(CC) $(CFLAGS) $(INCS) -o $(PROG) $(PROG).c ../primes/pr_tbl.o

../primes/pr_tbl.o:	../primes/primes.h
	$(CC) $(CFLAGS) -c ../primes/pr_tbl.c -o ../primes/pr_tbl.o

install:	$(PROG)
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

test:	$(PROG)
	./factor 69300

clean:
	rm -f $(PROG) core *.o
