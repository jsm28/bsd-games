# Makefile - makefile for hunt
# Heavily modified for Linux - JSM 1997-04-26
#
#  Hunt
#  Copyright (c) 1985 Conrad C. Huang, Gregory S. Couch, Kenneth C.R.C. Arnold
#  San Francisco, California
#

include ../Makeconfig

SHELL=		/bin/sh
HDR=		hunt.h bsd.h talk_ctl.h
DSRC1=		answer.c driver.c draw.c execute.c expl.c makemaze.c
DSRC2=		shots.c terminal.c extern.c \
		faketalk.c ctl.c ctl_transact.c get_names.c
DSRC=		${DSRC1} ${DSRC2}
DOBJ=		answer.o driver.o draw.o execute.o expl.o makemaze.o \
		shots.o terminal.o extern.o \
		faketalk.o ctl.o ctl_transact.o get_names.o
PSRC=		hunt.c connect.c playit.c pathname.c otto.c
POBJ=		hunt.o connect.o playit.o otto.o

#
# Game parameter flags are:
#	RANDOM	Include doors which disperse shots randomly
#	REFLECT	Include diagonal walls that reflect shots
#	MONITOR	Include code for watching the game from the sidelines
#	OOZE	Include slime shots
#	FLY	Make people fly when walls regenerate under them
#	VOLCANO	Include occasional large slime explosions
#	DRONE	Include occasional drone shots
#	BOOTS	Include boots (which makes you immune to slime)
#	OTTO	Reserved for CGL automatic player
#
GAME_PARAM=	-DRANDOM -DREFLECT -DMONITOR -DOOZE -DFLY -DVOLCANO -DBOOTS \
		-DOTTO

#
# System parameter flags are:
#	DEBUG		Don't trust everything in the code
#	INTERNET	Use the Internet domain IPC instead of UNIX domain
#	LOG		Use syslog error-logging in driver (needs SYSLOG_42 or
#			or SYSLOG_43)
#	OLDIPC		Use 4.1a internet system calls (must also define
#			INTERNET)
#	TERMINFO	Use terminfo instead of termcap
#	SYSLOG_42	Use 4.2 BSD syslog(3)
#	SYSLOG_43	Use 4.2 BSD syslog(3)
#	LOG		Use syslog(3) for logging errors
#	BSD_RELEASE	Which version of BSD distribution
#			42 is 4.2BSD (implies SYSLOG_42)
#			43 is 4.3BSD (implies BROADCAST, SYSLOG_43)
#	USE_CURSES	Use curses for everything (automatic w/TERMINFO)
#	SIGNAL_TYPE	void or int
#	HPUX		do special HPUX only hacks
#
# NOTE: if you change the domain (INTERNET vs UNIX) then "make newdomain"
#
DEFS_BSD43=	-DINTERNET -DLOG -DBSD_RELEASE=43 -DSIGNAL_TYPE=int
DEFS_BSD44=	-DINTERNET -DLOG -DBSD_RELEASE=44 -DSIGNAL_TYPE=void
DEFS_LINUX=	-DLOG -DUSE_CURSES -DSIGNAL_TYPE=void # -DINTERNET
DEFS_SUN=	-DINTERNET -DLOG -DBSD_RELEASE=42 -DBROADCAST -DSIGNAL_TYPE=int
DEFS_SUN4_0=	-DINTERNET -DLOG -DSYSLOG_43 -DBROADCAST -DSIGNAL_TYPE=void
DEFS_ULTRIX=	-DINTERNET -DLOG -DBSD_RELEASE=42 -DSIGNAL_TYPE=void
DEFS_HPUX=	-DHPUX -DINTERNET -DLOG -DSYSLOG_43 -DBROADCAST -DTERMINFO -DSIGNAL_TYPE=void
DEFS_SGI=	-DINTERNET -DLOG -DBSD_RELEASE=43 -DTERMINFO -DSIGNAL_TYPE=void
DEFS_NEXT=	$(DEFS_43) -bsd -traditional -Dconst= -DSIGNAL_TYPE=int
DEFS_OSF1=	-DINTERNET -DLOG -DBSD_RELEASE=43 -DSIGNAL_TYPE=void -D_BSD



INCS = $(BSD_INCS) $(NCURSES_INCS)

#
# Generic definitions
#
DEFS = $(GAME_PARAM) $(DEFS_LINUX) $(BSD_DEFS)

#
# Normal targets
#
all:	hunt huntd

hunt:	$(POBJ) pathname.o
	$(CC) $(LDFLAGS) -o hunt $(POBJ) pathname.o $(NCURSES_LIB) $(BSD_LIB)

huntd:	$(DOBJ) pathname.o
	$(CC) $(LDFLAGS) -o huntd $(DOBJ) pathname.o $(BSD_LIB)

debug:	hunt.dbg huntd.dbg

hunt.dbg:	$(POBJ) pathname.dbg.o
	$(CC) $(LDFLAGS) -o hunt.dbg $(POBJ) pathname.dbg.o $(NCURSES_LIB) \
	    $(BSD_LIB)

huntd.dbg:	$(DOBJ) pathname.dbg.o
	$(CC) $(LDFLAGS) -o huntd.dbg $(DOBJ) pathname.dbg.o $(BSD_LIB)

#
# System installation
#
install:	all
	$(INSTALL_DAEMON) huntd $(INSTALL_PREFIX)$(SBINDIR)
	$(INSTALL_BINARY) hunt $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) hunt
	$(INSTALL_MANUAL) hunt.6
	$(INSTALL_MANUAL) huntd.6

#
# Object file dependencies and rules
#

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(POBJ): $(HDR)

$(DOBJ): $(HDR)

pathname.o: pathname.c Makefile
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -DHUNTD=\"$(SBINDIR)/huntd\" \
	    -D_PATH_SOCKETS=\"$(SOCKETDIR)\" -c pathname.c

pathname.dbg.o: pathname.c
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -DDEBUG -c pathname.c \
	    -D_PATH_SOCKETS=\"$(SOCKETDIR)\" -o pathname.dbg.o

# We did have the following here.  Why?
#	@echo $(CC) $(CFLAGS) -DDEBUG -c pathname.c -o pathname.dbg.o
#	@rm -f x.c
#	@ln pathname.c x.c
#	@$(CC) $(CFLAGS) -DDEBUG -c x.c
#	@mv x.o pathname.dbg.o
#	@rm -f x.c

#
# Miscellaneous functions
#

clean:
	rm -f $(POBJ) $(DOBJ) pathname.o pathname.dbg.o errs hunt.dbg \
	huntd.dbg hunt huntd hunt.lint driver.lint hunt.shar.Z

newdomain:
	rm hunt.o extern.o driver.o
