# Makefile - makefile for snake/snscore

include ../../Makeconfig

PROG = snscore

INCS = -I../../include -I../snake
DEFS = 
LIBS = 

all:	$(PROG)

$(PROG):	$(PROG).c ../snake/pathnames.h
	$(CC) $(CFLAGS) $(LDFLAGS) $(INCS) $(DEFS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) snake.6 snscore.6

clean:
	rm -f $(PROG) core *.o
