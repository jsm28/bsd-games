# Makefile - makefile for backgammon/common_source

include ../../Makeconfig

EXEC_PATH  = $(GAMESDIR)/backgammon
TEACH_PATH = $(GAMESDIR)/teachgammon

INCS = $(NCURSES_INCS)
DEFS = $(BSD_SIGNAL_DEFS) -DEXEC_PATH=\"$(EXEC_PATH)\" -DTEACH_PATH=\"$(TEACH_PATH)\"

OBJS = allow.o board.o check.o fancy.o init.o odds.o one.o save.o \
	subs.o table.o

all:	$(OBJS)

$(OBJS):	back.h

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

simple:	backgammon.c
	$(CC) $(CFLAGS) $(LDFLAGS) $(DEFS) -DRULES=\"$(BACKGAMMON_RULES)\" \
	    $(INCS) -o sbackgammon backgammon.c

clean:
	rm -f *.o core a.out sbackgammon
