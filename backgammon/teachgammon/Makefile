DESTDIR=	/usr/games
CC=	gcc

RULES=  \"$(LIBDIR)/backrules\"
override CFLAGS=-g -O -I/usr/include -I../common_source -DV7 -DRULES=$(RULES)
LDFLAGS= -ltermcap -lbsd
OBJS= data.o teach.o ttext1.o ttext2.o tutor.o
COMD= ../common_source
COBJS= ${COMD}/allow.o ${COMD}/board.o ${COMD}/check.o \
	${COMD}/fancy.o ${COMD}/init.o ${COMD}/odds.o \
	${COMD}/one.o ${COMD}/save.o ${COMD}/subs.o ${COMD}/table.o

all: teachgammon

teachgammon: ${OBJS} ${COBJS} ${COMD}/back.h
	$(CC) -o teachgammon ${OBJS} ${COBJS} ${LDFLAGS}

${COBJS}:
	cd ${COMD}; make

$(OBJS):        $(COMD)/back.h
	$(CC) $(CFLAGS) -c $*.c -o $@

install: teachgammon
	install -g bin -o root -m 555 teachgammon ${DESTDIR}

clean:
	rm -f *.o core teachgammon
