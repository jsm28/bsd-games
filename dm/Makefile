# Makefile - makefile for dm

include ../Makeconfig

PROG = dm
OBJS = dm.o getloadavg.o

# Add -DLOG if you want logging

DEFS = # -DLOG

INCS = -I../include

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) -o $(PROG) $(OBJS)

dm.o:	dm.c
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

getloadavg.o:	../lib/getloadavg.c
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

install:	$(PROG)
	$(INSTALL_DM) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(INSTALL_MANUAL) $(PROG).8
	$(INSTALL_MANUAL) $(PROG).conf.5

clean:	
	rm -f $(PROG) core *.o
