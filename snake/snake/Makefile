# Makefile - makefile for snake/snake

include ../../Makeconfig

PROG = snake

SRCS=	move.c snake.c
OBJS=	move.o snake.o

INCS = -I../../include $(NCURSES_INCS)
DEFS = 

LIBS = -lm $(NCURSES_LIB)

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	snake.h pathnames.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_SCORE_FILE) $(SNAKE_SCOREFILE)
	$(INSTALL_SCORE_FILE) $(SNAKE_RAWSCOREFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
