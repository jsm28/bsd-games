#	@(#)Makefile	5.1 (Berkeley) 5/11/90

PROG=	primes
DESTDIR=/usr/games
MAN6=	primes.6
RMAN=	factor.6
MANDIR= /usr/man/man6
SRCS=	pattern.c pr_tbl.c primes.c
OBJS=	pattern.o pr_tbl.o primes.o
CFLAGS=	-O
LIBS=	-lm

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	primes.h
	$(CC) $(CFLAGS) -c $*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	ln -s $(MANDIR)/$(RMAN) $(MANDIR)/$(MAN6)

test:	all
	./primes 100 200

clean:
	rm -f $(PROG) core *.o
