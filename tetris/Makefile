# Makefile - makefile for tetris

include ../Makeconfig

SRCS = input.c screen.c shapes.c scores.c tetris.c
OBJS = input.o screen.o shapes.o scores.o tetris.o

LIBS = $(NCURSES_LIB) $(BSD_LIB)
INCS = $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS) -D_PATH_SCOREFILE=\"$(TETRIS_SCOREFILE)\"

all:	tetris

tetris:	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o tetris

.c.o:
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	input.h pathnames.h scores.h screen.h tetris.h

clean:	
	rm -f *.o tetris core

install:	tetris
	$(INSTALL_SCORE_GAME) tetris $(INSTALL_PREFIX)$(GAMESDIR)/tetris-bsd
	$(HIDE_GAME) tetris-bsd
	$(INSTALL_SCORE_FILE) $(TETRIS_SCOREFILE)
	ln tetris.6 tetris-bsd.6
	$(INSTALL_MANUAL) tetris-bsd.6
	rm -f tetris-bsd.6
