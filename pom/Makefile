# Makefile - makefile for pom

include ../Makeconfig

PROG = pom

INCS = -I../include
DEFS = 
LIBS = -lm

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) $(DEFS) $(INCS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

test:	$(PROG)
	./pom

clean:
	rm -f $(PROG) core *.o
