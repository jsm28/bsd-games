# Makefile - makefile for snake/snscore

include ../../Makeconfig

PROG = snscore

SCOREFILE    = $(VARLIBDIR)/snake.log
RAWSCOREFILE = $(VARLIBDIR)/snakerawscores

INCS = -I../snake $(BSD_INCS)
DEFS = $(BSD_DEFS) -D_PATH_LOGFILE=\"$(SCOREFILE)\" \
	-D_PATH_RAWSCORES=\"$(RAWSCOREFILE)\"
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
