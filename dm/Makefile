# Makefile - makefile for dm

include ../Makeconfig

PROG = dm

# Add -DLOG if you want logging

DEFS = # -DLOG

INCS = -I../include

all:	$(PROG)

$(PROG):	$(PROG).c pathnames.h
	$(CC) $(CFLAGS) $(DEFS) -I../include $(LDFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_DM) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(INSTALL_MANUAL) $(PROG).8
	$(INSTALL_MANUAL) $(PROG).conf.5

clean:	
	rm -f $(PROG) core *.o
