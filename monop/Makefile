#	@(#)Makefile	5.8 (Berkeley) 9/2/92

PROG=	monop

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

CARDDIR=$(LIBDIR)
_PATH_CARDS=	\"$(CARDDIR)/cards.pck\"

SRCS=	monop.c cards.c execute.c getinp.c houses.c jail.c misc.c morg.c \
	print.c prop.c rent.c roll.c spec.c trade.c
OBJS=	monop.o cards.o execute.o getinp.o houses.o jail.o misc.o morg.o \
	print.o prop.o rent.o roll.o spec.o trade.o

LIBS=	-lbsd
CLEANFILES=	initdeck cards.pck

all:	$(PROG) cards.pck

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	deck.h monop.h pathnames.h
	$(CC) $(CFLAGS) -c -D_PATH_CARDS=$(_PATH_CARDS) $*.c -o $@

cards.pck:	initdeck
	./initdeck ./cards.inp

initdeck:	initdeck.c
	$(CC) $(CFLAGS) -o initdeck initdeck.c

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)
	install -c -o bin -g root -m 444 cards.pck $(CARDDIR)

clean:
	rm -f $(PROG) $(CLEANFILES) core *.o
