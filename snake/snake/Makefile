# Makefile - makefile for snake/snake

include ../../Makeconfig

SCOREFILE    = $(VARLIBDIR)/snake.log
RAWSCOREFILE = $(VARLIBDIR)/snakerawscores

PROG = snake

SRCS=	move.c snake.c
OBJS=	move.o snake.o

INCS = $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS) -D_PATH_LOGFILE=\"$(SCOREFILE)\" \
	-D_PATH_RAWSCORES=\"$(RAWSCOREFILE)\"

LIBS = -lm $(NCURSES_LIB) $(BSD_LIB)

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	snake.h pathnames.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	touch $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE2) $(INSTALL_PREFIX)$(SCOREFILE)
	$(INSTALL_SCORE_FILE3) $(INSTALL_PREFIX)$(SCOREFILE)
	touch $(INSTALL_PREFIX)$(RAWSCOREFILE)
	$(INSTALL_SCORE_FILE2) $(INSTALL_PREFIX)$(RAWSCOREFILE)
	$(INSTALL_SCORE_FILE3) $(INSTALL_PREFIX)$(RAWSCOREFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:
	rm -f $(PROG) core *.o
