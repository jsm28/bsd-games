# Makefile - makefile for morse

include ../Makeconfig

PROG = morse

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) bcd.6 $(PROG).6

test:	$(PROG)
	echo "Eat at Joe's" | ./morse ; \
	echo -n ""

clean:
	rm -f $(PROG) core *.o
