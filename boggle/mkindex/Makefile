# Makefile - makefile for boggle/mkindex

include ../../Makeconfig

PROG = mkindex

all:	$(PROG)

$(PROG):	$(PROG).c ../boggle/bog.h
	$(CC) $(CFLAGS) -I../boggle $(LDFLAGS) -o $(PROG) $(PROG).c

clean:
	rm -f $(PROG) core *.o
