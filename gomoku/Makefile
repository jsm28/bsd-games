# Makefile - makefile for gomoku

include ../Makeconfig

SRCS = bdinit.c bdisp.c main.c makemove.c pickmove.c stoc.c
OBJS = bdinit.o bdisp.o main.o makemove.o pickmove.o stoc.o

LIBS = $(NCURSES_LIB)
INCS = -I../include $(NCURSES_INCS)
DEFS = 

all:	gomoku

gomoku:	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o gomoku

.c.o:
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	gomoku.h

clean:	
	rm -f *.o gomoku core

install:	gomoku
	$(INSTALL_BINARY) gomoku $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) gomoku
	$(INSTALL_MANUAL) gomoku.6
