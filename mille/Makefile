#	Linux makefile for mille 

PROG=	mille

DESTDIR=/usr/games
LIBDIR= $(DESTDIR)/lib
MANDIR= /usr/man/man6
CC=     gcc
CFLAGS= -O

SRCS=	comp.c end.c extern.c init.c mille.c misc.c move.c print.c \
	roll.c save.c types.c varpush.c
OBJS=	mille.o comp.o end.o extern.o init.o misc.o move.o print.o \
	roll.o save.o types.o varpush.o
LIBS=	-lcurses -ltermcap -lbsd
INCS=	-I/usr/include/bsd -I/usr/include

all: mille

mille: ${OBJS}
	${CC} ${OBJS} -o $@ ${LIBS}

$(OBJS):        mille.h
	$(CC) $(CFLAGS) -c $(INCS) $*.c -o $@

clean:
	rm -f *.o core mille a.out

install: mille mille.6
	install -g bin -m 555 -o root mille ${DESTDIR}
	install -g bin -m 444 -o root mille.6 ${MANDIR}
