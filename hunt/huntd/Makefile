# Makefile - makefile for hunt/huntd

include ../../Makeconfig
include ../Makeconfig

OBJS = answer.o ctl.o ctl_transact.o draw.o driver.o execute.o expl.o \
	extern.o faketalk.o get_names.o makemaze.o pathname.o shots.o \
	terminal.o select.o

all:	huntd

huntd:	$(OBJS)
	$(CC) $(LDFLAGS) -o huntd $(OBJS)

.c.o:
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	hunt.h bsd.h talk_ctl.h

select.o:	../../lib/select.c
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

install:	all
	$(INSTALL_DAEMON) huntd $(INSTALL_PREFIX)$(SBINDIR)
	$(INSTALL_MANUAL) huntd.6

clean:
	rm -f huntd core *.o
