# Makefile - makefile for dm

include ../Makeconfig

PROG = dm

# Logging not enabled so no _PATH_LOG

DEFS = -D_PATH_CONFIG=\"$(DM_CONFIG)\" -D_PATH_HIDE=\"$(LIBEXECDIR)\" \
	-D_PATH_NOGAMES=\"$(DM_NOGAMESFILE)\"

all:	$(PROG)

$(PROG):	$(PROG).c pathnames.h
	$(CC) $(CFLAGS) $(DEFS) $(LDFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_DM) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(INSTALL_MANUAL) $(PROG).8
	$(INSTALL_MANUAL) $(PROG).conf.5

clean:	
	rm -f $(PROG) core *.o
