#	@(#)Makefile	5.5 (Berkeley) 5/11/90

PROG=	battlestar
DESTDIR=/usr/games
SCOREDIR=	/usr/games/lib/battlestar.log
MANDIR= /usr/man/man6
SRCS=	battlestar.c com1.c com2.c com3.c com4.c com5.c com6.c com7.c \
	init.c cypher.c getcom.c parse.c room.c save.c fly.c misc.c \
	globals.c dayfile.c nightfile.c dayobjs.c nightobjs.c words.c
OBJS=	battlestar.o com1.o com2.o com3.o com4.o com5.o com6.o com7.o \
	init.o cypher.o getcom.o parse.o room.o save.o fly.o misc.o \
	globals.o dayfile.o nightfile.o dayobjs.o nightobjs.o words.o
CFLAGS=	-O
INCS=	-I/usr/include
MAN6=	battlestar.6
LIBS=	-lcurses -ltermcap -lbsd

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	externs.h
	$(CC) $(CFLAGS) -c $(INCS) $*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)
	touch $(SCOREDIR)
	chown bin $(SCOREDIR)
	chmod 666 $(SCOREDIR)

clean:
	rm -f $(PROG) core *.o
