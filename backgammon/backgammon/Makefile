# Makefile - makefile for backgammon/backgammon

include ../../Makeconfig

INCS = -I../../include -I../common_source $(NCURSES_INCS)
DEFS = $(BSD_SIGNAL_DEFS) -DV7
LIBS = $(NCURSES_LIB)

OBJS = extra.o main.o move.o text.o version.o
TOBJS = extra.o move.o text.o version.o $(COMD)/backgammon.o
COMD = ../common_source
COBJS = ${COMD}/allow.o ${COMD}/board.o ${COMD}/check.o \
	${COMD}/fancy.o ${COMD}/init.o ${COMD}/odds.o \
	${COMD}/one.o ${COMD}/save.o ${COMD}/subs.o ${COMD}/table.o

all:	backgammon

backgammon:	$(OBJS) $(COBJS)
	$(CC) $(LDFLAGS) -o backgammon $(OBJS) $(COBJS) $(LIBS)

$(COBJS):
	set -e; cd $(COMD); make

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):        $(COMD)/back.h backlocal.h

install:	backgammon
	$(INSTALL_BINARY) backgammon $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) backgammon
	$(INSTALL_MANUAL) backgammon.6

clean:
	rm -f *.o backgammon core
