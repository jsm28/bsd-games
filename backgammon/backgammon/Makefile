# Makefile - makefile for backgammon/backgammon

include ../../Makeconfig

RULES=  \"$(SHAREDIR)/backrules\"

INCS = -I../common_source $(BSD_INCS) $(NCURSES_INCS)
DEFS = $(BSD_DEFS) -DV7 -DRULES=$(RULES)
LIBS = $(NCURSES_LIB) $(BSD_LIB)

OBJS= extra.o main.o move.o text.o version.o
TOBJS=extra.o move.o text.o version.o ${COMD}/backgammon.o
COMD= ../common_source
COBJS= ${COMD}/allow.o ${COMD}/board.o ${COMD}/check.o \
	${COMD}/fancy.o ${COMD}/init.o ${COMD}/odds.o \
	${COMD}/one.o ${COMD}/save.o ${COMD}/subs.o ${COMD}/table.o

all:	backgammon

backgammon:	${OBJS} ${COBJS} ${COMD}/back.h
	$(CC) -o backgammon ${OBJS} ${COBJS} $(LIBS)

${COBJS}:
	set -e; cd ${COMD}; make

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):        $(COMD)/back.h

install:	backgammon
	$(INSTALL_BINARY) backgammon $(INSTALL_PREFIX)$(GAMESDIR)
	$(INSTALL_MANUAL) backgammon.6

clean:
	rm -f *.o backgammon core
