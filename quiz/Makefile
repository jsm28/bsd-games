# Makefile - makefile for quiz

include ../Makeconfig

PROG = quiz

OBJS = quiz.o rxp.o

CATS = africa america areas arith asia babies bard chinese collectives \
	ed elements europe flowers greek inca index latin locomotive \
	midearth morse mult murders poetry posneg pres province seq-easy \
	seq-hard sexes sov spell state trek ucc

DEFS = 
INCS = -I../include

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

quiz.o:	quiz.h pathnames.h

rxp.o:	quiz.h

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	test -d $(INSTALL_PREFIX)$(QUIZ_DIR) || \
	    install -d $(INSTALL_PREFIX)$(QUIZ_DIR)
	(set -e; cd datfiles; \
	    $(INSTALL_DATA) $(CATS) $(INSTALL_PREFIX)$(QUIZ_DIR) )
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f $(PROG) core *.o
