#	Linux makefile for mille 

DESTDIR=/usr/games
MANDIR=/usr/man/man6

CC=	gcc
PROG=	mille
SRCS=	comp.c end.c extern.c init.c mille.c misc.c move.c print.c \
	roll.c save.c types.c varpush.c
OBJS=	mille.o comp.o end.o extern.o init.o misc.o move.o print.o \
	roll.o save.o types.o varpush.o
LIBS=	-lcurses -ltermcap -lbsd
CFLAGS= -I/usr/include/bsd -I/usr/include

all: mille

mille: ${OBJS}
	${CC} ${OBJS} -o $@ ${LIBS}

clean:
	rm -f *.o core mille a.out

install: mille mille.6
	install -g bin -m 555 -o root mille ${DESTDIR}
	install -g bin -m 444 -o root mille.6 ${MANDIR}
