# Makefile - makefile for fortune

include ../../Makeconfig

INCS = -I../../include -I../strfile
DEFS = -DHAVE_REGCOMP

all:	fortune

fortune:	fortune.c pathnames.h ../strfile/strfile.h
	$(CC) $(LDFLAGS) $(CFLAGS) $(DEFS) $(INCS) -o fortune fortune.c

test:	fortune.test

fortune.test:	fortune.c pathnames.h ../strfile/strfile.h
	$(CC) $(LDFLAGS) $(CFLAGS) $(DEFS) -DTEST -DFORTDIR=\"..\" \
	    $(INCS) -o fortune.test fortune.c $(LIBS)

install:	all
	$(INSTALL_BINARY) fortune $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) fortune
	$(INSTALL_MANUAL) fortune.6

clean:
	rm -f *.o core a.out fortune fortune.test
