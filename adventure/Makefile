# Makefile - makefile for adventure

include ../Makeconfig

PROG = adventure

OBJS = main.o init.o done.o save.o subr.o vocab.o wizard.o io.o data.o crc.o

LIBS = $(BSD_LIB)
INCS = $(BSD_INCS)
DEFS = $(BSD_DEFS)

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

data.c:	glorkz setup
	./setup glorkz >data.c

setup:	setup.c hdr.h
	$(CC) $(CFLAGS) $(LDFLAGS) setup.c -o setup

.c.o:	
	$(CC) $(CFLAGS) -traditional-cpp $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	hdr.h

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f $(PROG) core data.c setup *.o
