# Makefile - makefile for rogue

include ../Makeconfig

PROG = rogue

OBJS =	hit.o init.o inventory.o level.o machdep.o main.o \
	message.o monster.o move.o object.o pack.o play.o random.o ring.o \
	room.o save.o score.o spec_hit.o throw.o trap.o use.o zap.o

LIBS = $(NCURSES_LIB)

INCS = -I../include $(NCURSES_INCS)
DEFS = -DUNIX -DUNIX_SYSV

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

# object.c (only) needs -fwritable-strings

object.o:	object.c
	$(CC) $(CFLAGS) -fwritable-strings $(DEFS) $(INCS) -c $< -o $@

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	rogue.h

machdep.o score.o:	pathnames.h

install:	$(PROG)
	$(INSTALL_SCORE_GAME) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_SCORE_FILE) $(ROGUE_SCOREFILE)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f $(PROG) core *.o
