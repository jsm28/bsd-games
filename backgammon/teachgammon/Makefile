# Makefile - makefile for backgammon/teachgammon

include ../../Makeconfig

INCS = -I../common_source $(NCURSES_INCS)
DEFS = $(BSD_SIGNAL_DEFS) -DV7
LIBS = $(NCURSES_LIB)

OBJS= data.o teach.o ttext1.o ttext2.o tutor.o
COMD= ../common_source
COBJS= ${COMD}/allow.o ${COMD}/board.o ${COMD}/check.o \
	${COMD}/fancy.o ${COMD}/init.o ${COMD}/odds.o \
	${COMD}/one.o ${COMD}/save.o ${COMD}/subs.o ${COMD}/table.o

all:	teachgammon

teachgammon:	${OBJS} ${COBJS}
	$(CC) $(LDFLAGS) -o teachgammon ${OBJS} ${COBJS} $(LIBS)

${COBJS}:
	cd ${COMD}; make

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):        $(COMD)/back.h

install:	teachgammon
	$(INSTALL_BINARY) teachgammon $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) teachgammon
	$(INSTALL_MANUAL) backgammon.6 teachgammon.6

clean:
	rm -f *.o core teachgammon
