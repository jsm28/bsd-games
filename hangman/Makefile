#	@(#)Makefile	5.7 (Berkeley) 5/11/90

PROG=	hangman
SRCS=	endgame.c extern.c getguess.c getword.c main.c playgame.c \
	prdata.c prman.c prword.c setup.c
OBJS=	endgame.o extern.o getguess.o getword.o main.o playgame.o \
	prdata.o prman.o prword.o setup.o
CFLAGS=	-O
DESTDIR=/usr/games
MANDIR= /usr/man/man6
WORDSDIR=/usr/games/lib
WORDS=  words
MAN6=	hangman.6
LIBS=	-lcurses -ltermcap -lbsd

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(PROG)

$(OBJS):	hangman.h pathnames.h
	$(CC) $(CFLAGS) -c $*.c -o $@

install:	all
	install -c -o bin -g root -m 755 $(PROG) $(DESTDIR)
	install -c -o bin -g root -m 444 $(WORDS) $(WORDSDIR)/hangman-$(WORDS)
	install -c -o root -g root -m 444 $(MAN6) $(MANDIR)

clean:
	rm -f $(PROG) core *.o
