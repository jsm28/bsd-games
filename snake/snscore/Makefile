# Makefile - makefile for snake/snscore

include ../../Makeconfig

PROG = snscore

INCS = -I../snake $(BSD_INCS)
DEFS = $(BSD_DEFS) -D_PATH_LOGFILE=\"$(SNAKE_SCOREFILE)\" \
	-D_PATH_RAWSCORES=\"$(SNAKE_RAWSCOREFILE)\"
LIBS = $(BSD_LIB)

all:	$(PROG)

$(PROG):	$(PROG).c ../snake/pathnames.h
	$(CC) $(CFLAGS) $(LDFLAGS) $(INCS) $(DEFS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) snake.6 snscore.6

clean:
	rm -f $(PROG) core *.o
