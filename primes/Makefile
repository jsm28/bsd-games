#	@(#)Makefile	5.1 (Berkeley) 5/11/90

PROG=	primes

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

RMAN=	factor.6
SRCS=	pattern.c pr_tbl.c primes.c
OBJS=	pattern.o pr_tbl.o primes.o
LIBS=	-lm

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	primes.h
	$(CC) $(CFLAGS) -c $*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	ln -s $(MANDIR)/$(RMAN) $(MANDIR)/$(PROG).6

test:	all
	./$(PROG) 100 200

clean:
	rm -f $(PROG) core *.o
