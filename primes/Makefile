# Makefile - makefile for primes

include ../Makeconfig

PROG = primes

SRCS=	pattern.c pr_tbl.c primes.c
OBJS=	pattern.o pr_tbl.o primes.o

LIBS = -lm

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) -I../include -c $< -o $@

$(OBJS):	primes.h

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) factor.6 $(PROG).6

test:	all
	./$(PROG) 100 200

clean:
	rm -f $(PROG) core *.o
