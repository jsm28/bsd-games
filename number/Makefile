# Makefile - makefile for number

include ../Makeconfig

PROG = number

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG) $(PROG).c

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

test:	$(PROG)
	echo "1234567890" | ./number 

clean:
	rm -f $(PROG) core *.o
