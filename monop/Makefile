# Makefile - makefile for monop

include ../Makeconfig

PROG = monop

SRCS=	monop.c cards.c execute.c getinp.c houses.c jail.c misc.c morg.c \
	print.c prop.c rent.c roll.c spec.c trade.c
OBJS=	monop.o cards.o execute.o getinp.o houses.o jail.o misc.o morg.o \
	print.o prop.o rent.o roll.o spec.o trade.o

LIBS = 
INCS = -I../include
DEFS = $(BSD_SIGNAL_DEFS)

all:	$(PROG) cards.pck

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	deck.h monop.h monop.ext
cards.o:	pathnames.h
monop.o:	monop.def mon.dat prop.dat brd.dat

cards.pck:	initdeck cards.inp
	./initdeck ./cards.inp

initdeck:	initdeck.c
	$(CC) $(CFLAGS) -I../include $(LDFLAGS) -o initdeck initdeck.c

install:	all
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6
	$(INSTALL_DATA) cards.pck $(INSTALL_PREFIX)$(MONOP_CARDSFILE)

clean:
	rm -f $(PROG) initdeck cards.pck core *.o
