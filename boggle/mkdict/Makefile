# Makefile - makefile for boggle/mkdict

include ../../Makeconfig

PROG = mkdict

all:	$(PROG)

$(PROG):	$(PROG).c ../boggle/bog.h
	$(CC) $(CFLAGS) -I../boggle $(LDFLAGS) -o $(PROG) $(PROG).c

clean:
	rm -f $(PROG) core *.o
