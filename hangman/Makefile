# Makefile - makefile for hangman

include ../Makeconfig

PROG = hangman

SRCS=	endgame.c extern.c getguess.c getword.c main.c playgame.c \
	prdata.c prman.c prword.c setup.c
OBJS=	endgame.o extern.o getguess.o getword.o main.o playgame.o \
	prdata.o prman.o prword.o setup.o

WORDS     = words

LIBS = $(NCURSES_LIB)
INCS = -I../include $(NCURSES_INCS)
DEFS = 

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	hangman.h pathnames.h

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_DATA) $(WORDS) $(INSTALL_PREFIX)$(HANGMAN_WORDSFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
