# Makefile - makefile for caesar

include ../Makeconfig

PROG = caesar
LIBS = -lm

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG) $(PROG).c $(LIBS)

install:	$(PROG)
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	$(INSTALL_MANUAL) $(PROG).6

test:	$(PROG)
	./caesar < ../fortune/datfiles/fortunes-o.fake.rot13

clean:
	rm -f $(PROG) core *.o
