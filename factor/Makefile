# Makefile - makefile for factor

include ../Makeconfig

PROG = factor

INCS = -I../include -I../primes

all:	$(PROG)

$(PROG):	pr_tbl.o $(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) $(INCS) -o $(PROG) $(PROG).c pr_tbl.o

pr_tbl.o:	../primes/primes.h ../primes/pr_tbl.c
	$(CC) $(CFLAGS) $(INCS) -c ../primes/pr_tbl.c -o pr_tbl.o

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

test:	$(PROG)
	./factor 69300

clean:
	rm -f $(PROG) core *.o
