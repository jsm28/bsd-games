DESTDIR=	/usr/games
MANDIR=	/usr/man/man6
CC=	gcc
CFLAGS=	-O

RULES=  \"$(LIBDIR)/backrules\"

override CFLAGS= -O 


override CFLAGS= -g -O -I/usr/include -I../common_source  -DV7 -DRULES=$(RULES)
LDFLAGS= -ltermcap -lbsd
OBJS= extra.o main.o move.o text.o version.o
TOBJS=extra.o move.o text.o version.o ${COMD}/backgammon.o
COMD= ../common_source
COBJS= ${COMD}/allow.o ${COMD}/board.o ${COMD}/check.o \
	${COMD}/fancy.o ${COMD}/init.o ${COMD}/odds.o \
	${COMD}/one.o ${COMD}/save.o ${COMD}/subs.o ${COMD}/table.o

all: backgammon

backgammon: ${OBJS} ${COBJS} ${COMD}/back.h
	$(CC) -o backgammon ${OBJS} ${COBJS} ${LDFLAGS}

${COBJS}:
	cd ${COMD}; make

$(OBJS):        $(COMD)/back.h
	$(CC) $(CFLAGS) -c $*.c -o $@

install: backgammon
	install -o root -g bin -m 555 backgammon ${DESTDIR}
	install -o root -g bin -m 444 backgammon.6 ${MANDIR}

clean:
	rm -f *.o backgammon core
