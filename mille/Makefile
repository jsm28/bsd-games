# Makefile - makefile for mille

include ../Makeconfig

SRCS=	comp.c end.c extern.c init.c mille.c misc.c move.c print.c \
	roll.c save.c types.c varpush.c
OBJS=	mille.o comp.o end.o extern.o init.o misc.o move.o print.o \
	roll.o save.o types.o varpush.o

LIBS = $(NCURSES_LIB)
INCS = -I../include $(NCURSES_INCS)
DEFS = 

all:	mille

mille:	$(OBJS)
	${CC} $(LDFLAGS) $(OBJS) -o $@ $(LIBS)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	mille.h

clean:
	rm -f *.o core mille a.out

install:	mille mille.6
	$(INSTALL_BINARY) mille $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) mille
	$(INSTALL_MANUAL) mille.6
