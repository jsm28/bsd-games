#	@(#)Makefile	5.7 (Berkeley) 5/11/90

PROG=	hangman

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SRCS=	endgame.c extern.c getguess.c getword.c main.c playgame.c \
	prdata.c prman.c prword.c setup.c
OBJS=	endgame.o extern.o getguess.o getword.o main.o playgame.o \
	prdata.o prman.o prword.o setup.o

WORDSDIR=$(LIBDIR)
WORDS=  words
_PATH_DICT=	\"$(WORDSDIR)/hangman-$(WORDS)\"

LIBS=	-lcurses -ltermcap -lbsd

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	hangman.h pathnames.h
	$(CC) $(CFLAGS) -c -D_PATH_DICT=$(_PATH_DICT) $*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 444 $(WORDS) $(WORDSDIR)/hangman-$(WORDS)
	install -c -o root -g root -m 444 $(PROG).6 $(MANDIR)

clean:
	rm -f $(PROG) core *.o
