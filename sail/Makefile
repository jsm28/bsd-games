#	@(#)Makefile	5.10 (Berkeley) 5/11/90

PROG=	sail
DESTDIR=/usr/games
SRCS=	main.c pl_main.c pl_1.c pl_2.c pl_3.c pl_4.c pl_5.c pl_6.c pl_7.c \
	dr_main.c dr_1.c dr_2.c dr_3.c dr_4.c dr_5.c lo_main.c \
	assorted.c game.c globals.c misc.c parties.c sync.c version.c
OBJS=	main.o pl_main.o pl_1.o pl_2.o pl_3.o pl_4.o pl_5.o pl_6.o pl_7.o \
	dr_main.o dr_1.o dr_2.o dr_3.o dr_4.o dr_5.o lo_main.o \
	assorted.o game.o globals.o misc.o parties.o sync.o version.o
CFLAGS=	-O
INCL=	-I/usr/include
MAN6=	sail.6
MANDIR= /usr/man/man6
SAILLOG=/usr/games/lib/saillog
LIBS=	-lncurses -ltermcap -lbsd 

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	driver.h externs.h machdep.h pathnames.h player.h
	$(CC) $(CFLAGS) -c $(INCL) $*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)
	touch $(SAILLOG)
	chown bin $(SAILLOG)
	chmod 666 $(SAILLOG)

clean:
	rm -f $(PROG) core *.o
