DESTDIR=        /usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=	gcc
CFLAGS=	-O

RULES=	\"$(LIBDIR)/backrules\"
EXEC_PATH=	\"$(DESTDIR)/backgammon\"
TEACH_PATH=	\"$(DESTDIR)/teachgammon\"

override CFLAGS= -O -DRULES=$(RULES) -DEXEC_PATH=$(EXEC_PATH) \
		-DTEACH_PATH=$(TEACH_PATH)

all: common_source

common_source: allow.o board.o check.o fancy.o init.o \
	odds.o one.o save.o subs.o table.o back.h

simple: backgammon.c
	$(CC) -g -DRULES=$(RULES) -o sbackgammon backgammon.c

clean:
	rm -f *.o core a.out

