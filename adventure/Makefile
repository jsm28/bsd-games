# Makefile - makefile for adventure

include ../Makeconfig

PROG = adventure

OBJS = main.o init.o done.o save.o subr.o vocab.o wizard.o io.o data.o crc.o

DEFS = -D'__RCSID(arg)=static char rcsid[] = arg' -D'__COPYRIGHT(arg)=static char copyright[] = arg'

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(PROG)

data.c:	glorkz setup
	./setup glorkz >data.c

setup:	setup.c hdr.h
	$(CC) $(CFLAGS) $(DEFS) $(LDFLAGS) setup.c -o setup

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) -c $< -o $@

$(OBJS):	hdr.h extern.h

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f $(PROG) core data.c setup *.o
