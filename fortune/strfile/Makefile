# Makefile - makefile for fortune/strfile

include ../../Makeconfig

all:	strfile

strfile:	strfile.c strfile.h
	$(CC) $(LDFLAGS) $(CFLAGS) -I../../include -o strfile strfile.c

install:	all
	$(INSTALL_BINARY) strfile $(INSTALL_PREFIX)$(USRBINDIR)
	$(INSTALL_MANUAL) strfile.8

clean:
	rm -f *.o a.out core strfile
