# Makefile - makefile for hunt/hunt

include ../../Makeconfig
include ../Makeconfig

OBJS = hunt.o connect.o playit.o otto.o pathname.o select.o

all:	hunt

hunt:	$(OBJS)
	$(CC) $(LDFLAGS) -o hunt $(OBJS) $(NCURSES_LIB)

install:	hunt
	$(INSTALL_BINARY) hunt $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) hunt
	$(INSTALL_MANUAL) hunt.6

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	../huntd/hunt.h ../huntd/bsd.h

pathname.o: ../huntd/pathname.c
	$(CC) $(CFLAGS) $(DEFS) $(INCS)	-c $< -o $@

select.o:	../../lib/select.c
	$(CC) $(CFLAGS) $(DEFS) $(INCS)	-c $< -o $@

clean:
	rm -f hunt *.o core
